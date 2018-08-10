.class Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback$StubApi21;
.super Ljava/lang/Object;
.source "MediaBrowserCompat.java"

# interfaces
.implements Landroid/support/v4/media/MediaBrowserCompatApi21$SubscriptionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StubApi21"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback$StubApi21;->this$1:Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method applyOptions(Ljava/util/List;Landroid/os/Bundle;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-nez p1, :cond_0

    return-object v4

    :cond_0
    const-string/jumbo v4, "android.media.browse.extra.PAGE"

    invoke-virtual {p2, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v4, "android.media.browse.extra.PAGE_SIZE"

    invoke-virtual {p2, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v1, v5, :cond_1

    if-ne v2, v5, :cond_1

    return-object p1

    :cond_1
    mul-int v0, v2, v1

    add-int v3, v0, v2

    if-ltz v1, :cond_2

    const/4 v4, 0x1

    if-ge v2, v4, :cond_3

    :cond_2
    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v4

    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-le v3, v4, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    :cond_4
    invoke-interface {p1, v0, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    return-object v4
.end method

.method public onChildrenLoaded(Ljava/lang/String;Ljava/util/List;)V
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<*>;)V"
        }
    .end annotation

    iget-object v6, p0, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback$StubApi21;->this$1:Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;

    iget-object v6, v6, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;->mSubscriptionRef:Ljava/lang/ref/WeakReference;

    if-nez v6, :cond_1

    const/4 v5, 0x0

    :goto_0
    if-nez v5, :cond_2

    iget-object v6, p0, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback$StubApi21;->this$1:Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;

    invoke-static {p2}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->fromMediaItemList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v6, p1, v7}, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;->onChildrenLoaded(Ljava/lang/String;Ljava/util/List;)V

    :cond_0
    return-void

    :cond_1
    iget-object v6, p0, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback$StubApi21;->this$1:Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;

    iget-object v6, v6, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;->mSubscriptionRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/media/MediaBrowserCompat$Subscription;

    goto :goto_0

    :cond_2
    invoke-static {p2}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->fromMediaItemList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v5}, Landroid/support/v4/media/MediaBrowserCompat$Subscription;->getCallbacks()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v5}, Landroid/support/v4/media/MediaBrowserCompat$Subscription;->getOptionsList()Ljava/util/List;

    move-result-object v4

    const/4 v1, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_0

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    if-nez v3, :cond_3

    iget-object v6, p0, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback$StubApi21;->this$1:Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;

    invoke-virtual {v6, p1, v2}, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;->onChildrenLoaded(Ljava/lang/String;Ljava/util/List;)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget-object v6, p0, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback$StubApi21;->this$1:Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;

    invoke-virtual {p0, v2, v3}, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback$StubApi21;->applyOptions(Ljava/util/List;Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v6, p1, v7, v3}, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;->onChildrenLoaded(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V

    goto :goto_2
.end method

.method public onError(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback$StubApi21;->this$1:Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;

    invoke-virtual {v0, p1}, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;->onError(Ljava/lang/String;)V

    return-void
.end method
