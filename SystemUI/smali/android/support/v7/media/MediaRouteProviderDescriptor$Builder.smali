.class public final Landroid/support/v7/media/MediaRouteProviderDescriptor$Builder;
.super Ljava/lang/Object;
.source "MediaRouteProviderDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/media/MediaRouteProviderDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mBundle:Landroid/os/Bundle;

.field private mRoutes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/media/MediaRouteDescriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/support/v7/media/MediaRouteProviderDescriptor$Builder;->mBundle:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Landroid/support/v7/media/MediaRouteProviderDescriptor;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "descriptor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p1, Landroid/support/v7/media/MediaRouteProviderDescriptor;->mBundle:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/support/v7/media/MediaRouteProviderDescriptor$Builder;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteProviderDescriptor;->ensureRoutes()V

    iget-object v0, p1, Landroid/support/v7/media/MediaRouteProviderDescriptor;->mRoutes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/support/v7/media/MediaRouteProviderDescriptor;->mRoutes:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/support/v7/media/MediaRouteProviderDescriptor$Builder;->mRoutes:Ljava/util/ArrayList;

    :cond_1
    return-void
.end method


# virtual methods
.method public addRoute(Landroid/support/v7/media/MediaRouteDescriptor;)Landroid/support/v7/media/MediaRouteProviderDescriptor$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "route must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteProviderDescriptor$Builder;->mRoutes:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/media/MediaRouteProviderDescriptor$Builder;->mRoutes:Ljava/util/ArrayList;

    :cond_1
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteProviderDescriptor$Builder;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_2
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteProviderDescriptor$Builder;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "route descriptor already added"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addRoutes(Ljava/util/Collection;)Landroid/support/v7/media/MediaRouteProviderDescriptor$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/support/v7/media/MediaRouteDescriptor;",
            ">;)",
            "Landroid/support/v7/media/MediaRouteProviderDescriptor$Builder;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "routes must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/MediaRouteDescriptor;

    invoke-virtual {p0, v0}, Landroid/support/v7/media/MediaRouteProviderDescriptor$Builder;->addRoute(Landroid/support/v7/media/MediaRouteDescriptor;)Landroid/support/v7/media/MediaRouteProviderDescriptor$Builder;

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public build()Landroid/support/v7/media/MediaRouteProviderDescriptor;
    .locals 6

    iget-object v3, p0, Landroid/support/v7/media/MediaRouteProviderDescriptor$Builder;->mRoutes:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/support/v7/media/MediaRouteProviderDescriptor$Builder;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v3, p0, Landroid/support/v7/media/MediaRouteProviderDescriptor$Builder;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/media/MediaRouteDescriptor;

    invoke-virtual {v3}, Landroid/support/v7/media/MediaRouteDescriptor;->asBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Landroid/support/v7/media/MediaRouteProviderDescriptor$Builder;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v4, "routes"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_1
    new-instance v3, Landroid/support/v7/media/MediaRouteProviderDescriptor;

    iget-object v4, p0, Landroid/support/v7/media/MediaRouteProviderDescriptor$Builder;->mBundle:Landroid/os/Bundle;

    iget-object v5, p0, Landroid/support/v7/media/MediaRouteProviderDescriptor$Builder;->mRoutes:Ljava/util/ArrayList;

    invoke-direct {v3, v4, v5}, Landroid/support/v7/media/MediaRouteProviderDescriptor;-><init>(Landroid/os/Bundle;Ljava/util/List;)V

    return-object v3
.end method
