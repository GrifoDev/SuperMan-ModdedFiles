.class public final Landroid/support/v7/media/MediaRouteSelector;
.super Ljava/lang/Object;
.source "MediaRouteSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/media/MediaRouteSelector$Builder;
    }
.end annotation


# static fields
.field public static final EMPTY:Landroid/support/v7/media/MediaRouteSelector;


# instance fields
.field private final mBundle:Landroid/os/Bundle;

.field mControlCategories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/support/v7/media/MediaRouteSelector;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/support/v7/media/MediaRouteSelector;-><init>(Landroid/os/Bundle;Ljava/util/List;)V

    sput-object v0, Landroid/support/v7/media/MediaRouteSelector;->EMPTY:Landroid/support/v7/media/MediaRouteSelector;

    return-void
.end method

.method constructor <init>(Landroid/os/Bundle;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v7/media/MediaRouteSelector;->mBundle:Landroid/os/Bundle;

    iput-object p2, p0, Landroid/support/v7/media/MediaRouteSelector;->mControlCategories:Ljava/util/List;

    return-void
.end method

.method public static fromBundle(Landroid/os/Bundle;)Landroid/support/v7/media/MediaRouteSelector;
    .locals 2
    .param p0    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    new-instance v0, Landroid/support/v7/media/MediaRouteSelector;

    invoke-direct {v0, p0, v1}, Landroid/support/v7/media/MediaRouteSelector;-><init>(Landroid/os/Bundle;Ljava/util/List;)V

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public asBundle()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/media/MediaRouteSelector;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public contains(Landroid/support/v7/media/MediaRouteSelector;)Z
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/media/MediaRouteSelector;->ensureControlCategories()V

    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteSelector;->ensureControlCategories()V

    iget-object v0, p0, Landroid/support/v7/media/MediaRouteSelector;->mControlCategories:Ljava/util/List;

    iget-object v1, p1, Landroid/support/v7/media/MediaRouteSelector;->mControlCategories:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method ensureControlCategories()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/media/MediaRouteSelector;->mControlCategories:Ljava/util/List;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/media/MediaRouteSelector;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "controlCategories"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/media/MediaRouteSelector;->mControlCategories:Ljava/util/List;

    iget-object v0, p0, Landroid/support/v7/media/MediaRouteSelector;->mControlCategories:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/media/MediaRouteSelector;->mControlCategories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/media/MediaRouteSelector;->mControlCategories:Ljava/util/List;

    :cond_1
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v1, p1, Landroid/support/v7/media/MediaRouteSelector;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/support/v7/media/MediaRouteSelector;

    invoke-virtual {p0}, Landroid/support/v7/media/MediaRouteSelector;->ensureControlCategories()V

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouteSelector;->ensureControlCategories()V

    iget-object v1, p0, Landroid/support/v7/media/MediaRouteSelector;->mControlCategories:Ljava/util/List;

    iget-object v2, v0, Landroid/support/v7/media/MediaRouteSelector;->mControlCategories:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public getControlCategories()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/support/v7/media/MediaRouteSelector;->ensureControlCategories()V

    iget-object v0, p0, Landroid/support/v7/media/MediaRouteSelector;->mControlCategories:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/media/MediaRouteSelector;->ensureControlCategories()V

    iget-object v0, p0, Landroid/support/v7/media/MediaRouteSelector;->mControlCategories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/media/MediaRouteSelector;->ensureControlCategories()V

    iget-object v0, p0, Landroid/support/v7/media/MediaRouteSelector;->mControlCategories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isValid()Z
    .locals 2

    invoke-virtual {p0}, Landroid/support/v7/media/MediaRouteSelector;->ensureControlCategories()V

    iget-object v0, p0, Landroid/support/v7/media/MediaRouteSelector;->mControlCategories:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public matchesControlFilters(Ljava/util/List;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/IntentFilter;",
            ">;)Z"
        }
    .end annotation

    const/4 v6, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/support/v7/media/MediaRouteSelector;->ensureControlCategories()V

    iget-object v5, p0, Landroid/support/v7/media/MediaRouteSelector;->mControlCategories:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/IntentFilter;

    if-eqz v1, :cond_1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v0, :cond_1

    iget-object v5, p0, Landroid/support/v7/media/MediaRouteSelector;->mControlCategories:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    return v5

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v6
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "MediaRouteSelector{ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "controlCategories="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/support/v7/media/MediaRouteSelector;->getControlCategories()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
