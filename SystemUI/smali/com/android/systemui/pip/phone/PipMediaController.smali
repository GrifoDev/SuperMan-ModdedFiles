.class public Lcom/android/systemui/pip/phone/PipMediaController;
.super Ljava/lang/Object;
.source "PipMediaController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/pip/phone/PipMediaController$1;,
        Lcom/android/systemui/pip/phone/PipMediaController$2;,
        Lcom/android/systemui/pip/phone/PipMediaController$ActionListener;
    }
.end annotation


# instance fields
.field private final mActivityManager:Landroid/app/IActivityManager;

.field private final mContext:Landroid/content/Context;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/pip/phone/PipMediaController$ActionListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMediaController:Landroid/media/session/MediaController;

.field private final mMediaSessionManager:Landroid/media/session/MediaSessionManager;

.field private mNextAction:Landroid/app/RemoteAction;

.field private mPauseAction:Landroid/app/RemoteAction;

.field private mPlayAction:Landroid/app/RemoteAction;

.field private mPlayPauseActionReceiver:Landroid/content/BroadcastReceiver;

.field private mPlaybackChangedListener:Landroid/media/session/MediaController$Callback;

.field private mPrevAction:Landroid/app/RemoteAction;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/pip/phone/PipMediaController;)Landroid/media/session/MediaController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mMediaController:Landroid/media/session/MediaController;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/pip/phone/PipMediaController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMediaController;->notifyActionsChanged()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/IActivityManager;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/android/systemui/pip/phone/PipMediaController$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/pip/phone/PipMediaController$1;-><init>(Lcom/android/systemui/pip/phone/PipMediaController;)V

    iput-object v1, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mPlayPauseActionReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/systemui/pip/phone/PipMediaController$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/pip/phone/PipMediaController$2;-><init>(Lcom/android/systemui/pip/phone/PipMediaController;)V

    iput-object v1, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mPlaybackChangedListener:Landroid/media/session/MediaController$Callback;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mListeners:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mActivityManager:Landroid/app/IActivityManager;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "com.android.systemui.pip.phone.PLAY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.android.systemui.pip.phone.PAUSE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.android.systemui.pip.phone.NEXT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.android.systemui.pip.phone.PREV"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mPlayPauseActionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMediaController;->createMediaActions()V

    const-string/jumbo v1, "media_session"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/session/MediaSessionManager;

    iput-object v1, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    new-instance v2, Lcom/android/systemui/pip/phone/-$Lambda$M-ZooI5stUmj1n2x6aQGdCZpBH4;

    invoke-direct {v2, p0}, Lcom/android/systemui/pip/phone/-$Lambda$M-ZooI5stUmj1n2x6aQGdCZpBH4;-><init>(Ljava/lang/Object;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/media/session/MediaSessionManager;->addOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;Landroid/content/ComponentName;)V

    return-void
.end method

.method private createMediaActions()V
    .locals 11

    const/high16 v10, 0x8000000

    const/4 v9, 0x0

    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mContext:Landroid/content/Context;

    const v5, 0x7f12084d

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Landroid/app/RemoteAction;

    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mContext:Landroid/content/Context;

    const v6, 0x7f080281

    invoke-static {v5, v6}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v8, "com.android.systemui.pip.phone.PAUSE"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v9, v7, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-direct {v4, v5, v1, v1, v6}, Landroid/app/RemoteAction;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iput-object v4, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mPauseAction:Landroid/app/RemoteAction;

    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mContext:Landroid/content/Context;

    const v5, 0x7f120852

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Landroid/app/RemoteAction;

    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mContext:Landroid/content/Context;

    const v6, 0x7f080285

    invoke-static {v5, v6}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v8, "com.android.systemui.pip.phone.PLAY"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v9, v7, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-direct {v4, v5, v2, v2, v6}, Landroid/app/RemoteAction;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iput-object v4, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mPlayAction:Landroid/app/RemoteAction;

    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mContext:Landroid/content/Context;

    const v5, 0x7f120854

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Landroid/app/RemoteAction;

    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mContext:Landroid/content/Context;

    const v6, 0x7f0802ea

    invoke-static {v5, v6}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v8, "com.android.systemui.pip.phone.NEXT"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v9, v7, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-direct {v4, v5, v0, v0, v6}, Landroid/app/RemoteAction;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iput-object v4, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mNextAction:Landroid/app/RemoteAction;

    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mContext:Landroid/content/Context;

    const v5, 0x7f120855

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/app/RemoteAction;

    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mContext:Landroid/content/Context;

    const v6, 0x7f0802eb

    invoke-static {v5, v6}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v8, "com.android.systemui.pip.phone.PREV"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v9, v7, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-direct {v4, v5, v3, v3, v6}, Landroid/app/RemoteAction;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iput-object v4, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mPrevAction:Landroid/app/RemoteAction;

    return-void
.end method

.method private getMediaActions()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/RemoteAction;",
            ">;"
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-wide/16 v12, 0x0

    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v5}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v5

    if-nez v5, :cond_1

    :cond_0
    sget-object v5, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v5

    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v5}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/session/PlaybackState;->getState()I

    move-result v4

    invoke-static {v4}, Landroid/media/session/MediaSession;->isActiveState(I)Z

    move-result v2

    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v5}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/session/PlaybackState;->getActions()J

    move-result-wide v0

    iget-object v8, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mPrevAction:Landroid/app/RemoteAction;

    const-wide/16 v10, 0x10

    and-long/2addr v10, v0

    cmp-long v5, v10, v12

    if-eqz v5, :cond_3

    move v5, v6

    :goto_0
    invoke-virtual {v8, v5}, Landroid/app/RemoteAction;->setEnabled(Z)V

    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mPrevAction:Landroid/app/RemoteAction;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v2, :cond_4

    const-wide/16 v8, 0x4

    and-long/2addr v8, v0

    cmp-long v5, v8, v12

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mPlayAction:Landroid/app/RemoteAction;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mNextAction:Landroid/app/RemoteAction;

    const-wide/16 v8, 0x20

    and-long/2addr v8, v0

    cmp-long v8, v8, v12

    if-eqz v8, :cond_5

    :goto_2
    invoke-virtual {v5, v6}, Landroid/app/RemoteAction;->setEnabled(Z)V

    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mNextAction:Landroid/app/RemoteAction;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v3

    :cond_3
    move v5, v7

    goto :goto_0

    :cond_4
    if-eqz v2, :cond_2

    const-wide/16 v8, 0x2

    and-long/2addr v8, v0

    cmp-long v5, v8, v12

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mPauseAction:Landroid/app/RemoteAction;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    move v6, v7

    goto :goto_2
.end method

.method static synthetic lambda$-com_android_systemui_pip_phone_PipMediaController_9794(Ljava/util/List;Lcom/android/systemui/pip/phone/PipMediaController$ActionListener;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/android/systemui/pip/phone/PipMediaController$ActionListener;->onMediaActionsChanged(Ljava/util/List;)V

    return-void
.end method

.method private notifyActionsChanged()V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMediaController;->getMediaActions()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mListeners:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/systemui/pip/phone/-$Lambda$M-ZooI5stUmj1n2x6aQGdCZpBH4$1;

    invoke-direct {v2, v0}, Lcom/android/systemui/pip/phone/-$Lambda$M-ZooI5stUmj1n2x6aQGdCZpBH4$1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method private resolveActiveMediaController(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/session/MediaController;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x0

    if-eqz p1, :cond_1

    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mActivityManager:Landroid/app/IActivityManager;

    invoke-static {v3, v4}, Lcom/android/systemui/pip/phone/PipUtils;->getTopPinnedActivity(Landroid/content/Context;Landroid/app/IActivityManager;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, v0}, Lcom/android/systemui/pip/phone/PipMediaController;->setActiveMediaController(Landroid/media/session/MediaController;)V

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v5}, Lcom/android/systemui/pip/phone/PipMediaController;->setActiveMediaController(Landroid/media/session/MediaController;)V

    return-void
.end method

.method private setActiveMediaController(Landroid/media/session/MediaController;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mMediaController:Landroid/media/session/MediaController;

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mMediaController:Landroid/media/session/MediaController;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mPlaybackChangedListener:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v0, v1}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    :cond_0
    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mMediaController:Landroid/media/session/MediaController;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mPlaybackChangedListener:Landroid/media/session/MediaController$Callback;

    invoke-virtual {p1, v0}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;)V

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMediaController;->notifyActionsChanged()V

    :cond_2
    return-void
.end method


# virtual methods
.method public addListener(Lcom/android/systemui/pip/phone/PipMediaController$ActionListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMediaController;->getMediaActions()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/systemui/pip/phone/PipMediaController$ActionListener;->onMediaActionsChanged(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$-com_android_systemui_pip_phone_PipMediaController_4415(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/pip/phone/PipMediaController;->resolveActiveMediaController(Ljava/util/List;)V

    return-void
.end method

.method public onActivityPinned()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSessionManager;->getActiveSessions(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/pip/phone/PipMediaController;->resolveActiveMediaController(Ljava/util/List;)V

    return-void
.end method

.method public removeListener(Lcom/android/systemui/pip/phone/PipMediaController$ActionListener;)V
    .locals 1

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {p1, v0}, Lcom/android/systemui/pip/phone/PipMediaController$ActionListener;->onMediaActionsChanged(Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMediaController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
