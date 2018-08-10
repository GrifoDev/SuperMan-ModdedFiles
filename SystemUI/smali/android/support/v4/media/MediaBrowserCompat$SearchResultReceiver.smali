.class Landroid/support/v4/media/MediaBrowserCompat$SearchResultReceiver;
.super Landroid/support/v4/os/ResultReceiver;
.source "MediaBrowserCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SearchResultReceiver"
.end annotation


# instance fields
.field private final mCallback:Landroid/support/v4/media/MediaBrowserCompat$SearchCallback;

.field private final mExtras:Landroid/os/Bundle;

.field private final mQuery:Ljava/lang/String;


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 6

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    const-class v4, Landroid/support/v4/media/MediaBrowserCompat;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    :cond_0
    if-nez p1, :cond_1

    if-nez p2, :cond_2

    :cond_1
    iget-object v3, p0, Landroid/support/v4/media/MediaBrowserCompat$SearchResultReceiver;->mCallback:Landroid/support/v4/media/MediaBrowserCompat$SearchCallback;

    iget-object v4, p0, Landroid/support/v4/media/MediaBrowserCompat$SearchResultReceiver;->mQuery:Ljava/lang/String;

    iget-object v5, p0, Landroid/support/v4/media/MediaBrowserCompat$SearchResultReceiver;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/media/MediaBrowserCompat$SearchCallback;->onError(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    :cond_2
    const-string/jumbo v4, "search_results"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_1

    const-string/jumbo v4, "search_results"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    array-length v4, v1

    :goto_0
    if-ge v3, v4, :cond_3

    aget-object v0, v1, v3

    check-cast v0, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    iget-object v3, p0, Landroid/support/v4/media/MediaBrowserCompat$SearchResultReceiver;->mCallback:Landroid/support/v4/media/MediaBrowserCompat$SearchCallback;

    iget-object v4, p0, Landroid/support/v4/media/MediaBrowserCompat$SearchResultReceiver;->mQuery:Ljava/lang/String;

    iget-object v5, p0, Landroid/support/v4/media/MediaBrowserCompat$SearchResultReceiver;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v3, v4, v5, v2}, Landroid/support/v4/media/MediaBrowserCompat$SearchCallback;->onSearchResult(Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;)V

    return-void
.end method
