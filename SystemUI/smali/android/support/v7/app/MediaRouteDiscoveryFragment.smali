.class public Landroid/support/v7/app/MediaRouteDiscoveryFragment;
.super Landroid/support/v4/app/Fragment;
.source "MediaRouteDiscoveryFragment.java"


# instance fields
.field private final ARGUMENT_SELECTOR:Ljava/lang/String;

.field private mCallback:Landroid/support/v7/media/MediaRouter$Callback;

.field private mRouter:Landroid/support/v7/media/MediaRouter;

.field private mSelector:Landroid/support/v7/media/MediaRouteSelector;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const-string/jumbo v0, "selector"

    iput-object v0, p0, Landroid/support/v7/app/MediaRouteDiscoveryFragment;->ARGUMENT_SELECTOR:Ljava/lang/String;

    return-void
.end method

.method private ensureRouteSelector()V
    .locals 2

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteDiscoveryFragment;->mSelector:Landroid/support/v7/media/MediaRouteSelector;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteDiscoveryFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "selector"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v7/media/MediaRouteSelector;->fromBundle(Landroid/os/Bundle;)Landroid/support/v7/media/MediaRouteSelector;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/app/MediaRouteDiscoveryFragment;->mSelector:Landroid/support/v7/media/MediaRouteSelector;

    :cond_0
    iget-object v1, p0, Landroid/support/v7/app/MediaRouteDiscoveryFragment;->mSelector:Landroid/support/v7/media/MediaRouteSelector;

    if-nez v1, :cond_1

    sget-object v1, Landroid/support/v7/media/MediaRouteSelector;->EMPTY:Landroid/support/v7/media/MediaRouteSelector;

    iput-object v1, p0, Landroid/support/v7/app/MediaRouteDiscoveryFragment;->mSelector:Landroid/support/v7/media/MediaRouteSelector;

    :cond_1
    return-void
.end method

.method private ensureRouter()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/MediaRouteDiscoveryFragment;->mRouter:Landroid/support/v7/media/MediaRouter;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteDiscoveryFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/media/MediaRouter;->getInstance(Landroid/content/Context;)Landroid/support/v7/media/MediaRouter;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/MediaRouteDiscoveryFragment;->mRouter:Landroid/support/v7/media/MediaRouter;

    :cond_0
    return-void
.end method


# virtual methods
.method public onCreateCallback()Landroid/support/v7/media/MediaRouter$Callback;
    .locals 1

    new-instance v0, Landroid/support/v7/app/MediaRouteDiscoveryFragment$1;

    invoke-direct {v0, p0}, Landroid/support/v7/app/MediaRouteDiscoveryFragment$1;-><init>(Landroid/support/v7/app/MediaRouteDiscoveryFragment;)V

    return-object v0
.end method

.method public onPrepareCallbackFlags()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public onStart()V
    .locals 4

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    invoke-direct {p0}, Landroid/support/v7/app/MediaRouteDiscoveryFragment;->ensureRouteSelector()V

    invoke-direct {p0}, Landroid/support/v7/app/MediaRouteDiscoveryFragment;->ensureRouter()V

    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteDiscoveryFragment;->onCreateCallback()Landroid/support/v7/media/MediaRouter$Callback;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/MediaRouteDiscoveryFragment;->mCallback:Landroid/support/v7/media/MediaRouter$Callback;

    iget-object v0, p0, Landroid/support/v7/app/MediaRouteDiscoveryFragment;->mCallback:Landroid/support/v7/media/MediaRouter$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/MediaRouteDiscoveryFragment;->mRouter:Landroid/support/v7/media/MediaRouter;

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteDiscoveryFragment;->mSelector:Landroid/support/v7/media/MediaRouteSelector;

    iget-object v2, p0, Landroid/support/v7/app/MediaRouteDiscoveryFragment;->mCallback:Landroid/support/v7/media/MediaRouter$Callback;

    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteDiscoveryFragment;->onPrepareCallbackFlags()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v7/media/MediaRouter;->addCallback(Landroid/support/v7/media/MediaRouteSelector;Landroid/support/v7/media/MediaRouter$Callback;I)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v7/app/MediaRouteDiscoveryFragment;->mCallback:Landroid/support/v7/media/MediaRouter$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/MediaRouteDiscoveryFragment;->mRouter:Landroid/support/v7/media/MediaRouter;

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteDiscoveryFragment;->mCallback:Landroid/support/v7/media/MediaRouter$Callback;

    invoke-virtual {v0, v1}, Landroid/support/v7/media/MediaRouter;->removeCallback(Landroid/support/v7/media/MediaRouter$Callback;)V

    iput-object v2, p0, Landroid/support/v7/app/MediaRouteDiscoveryFragment;->mCallback:Landroid/support/v7/media/MediaRouter$Callback;

    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    return-void
.end method
