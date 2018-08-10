.class public Lcom/android/systemui/profile/QSProfileServiceManager;
.super Ljava/lang/Object;
.source "QSProfileServiceManager.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/SPluginListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/systemui/splugins/SPluginListener",
        "<",
        "Lcom/samsung/systemui/splugins/profile/PluginProfile;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mProfileService:Lcom/samsung/systemui/splugins/profile/PluginProfile;

.field private mUnregisteredSavables:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/samsung/systemui/splugins/profile/Savable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/profile/QSProfileServiceManager;->mProfileService:Lcom/samsung/systemui/splugins/profile/PluginProfile;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/profile/QSProfileServiceManager;->mUnregisteredSavables:Ljava/util/HashSet;

    iput-object p1, p0, Lcom/android/systemui/profile/QSProfileServiceManager;->mContext:Landroid/content/Context;

    const-class v0, Lcom/android/systemui/splugins/SPluginManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/splugins/SPluginManager;

    const-class v1, Lcom/samsung/systemui/splugins/profile/PluginProfile;

    const/4 v2, 0x1

    invoke-interface {v0, p0, v1, v2}, Lcom/android/systemui/splugins/SPluginManager;->addPluginListener(Lcom/samsung/systemui/splugins/SPluginListener;Ljava/lang/Class;Z)V

    return-void
.end method


# virtual methods
.method public addSavable(Lcom/samsung/systemui/splugins/profile/Savable;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/profile/QSProfileServiceManager;->mProfileService:Lcom/samsung/systemui/splugins/profile/PluginProfile;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/profile/QSProfileServiceManager;->mProfileService:Lcom/samsung/systemui/splugins/profile/PluginProfile;

    invoke-interface {v0, p1}, Lcom/samsung/systemui/splugins/profile/PluginProfile;->addSavable(Lcom/samsung/systemui/splugins/profile/Savable;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/profile/QSProfileServiceManager;->mUnregisteredSavables:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getStateString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/profile/QSProfileServiceManager;->mProfileService:Lcom/samsung/systemui/splugins/profile/PluginProfile;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/profile/QSProfileServiceManager;->mProfileService:Lcom/samsung/systemui/splugins/profile/PluginProfile;

    invoke-interface {v0, p1}, Lcom/samsung/systemui/splugins/profile/PluginProfile;->getStateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method public bridge synthetic onPluginConnected(Lcom/samsung/systemui/splugins/SPlugin;Landroid/content/Context;)V
    .locals 0

    check-cast p1, Lcom/samsung/systemui/splugins/profile/PluginProfile;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/profile/QSProfileServiceManager;->onPluginConnected(Lcom/samsung/systemui/splugins/profile/PluginProfile;Landroid/content/Context;)V

    return-void
.end method

.method public onPluginConnected(Lcom/samsung/systemui/splugins/profile/PluginProfile;Landroid/content/Context;)V
    .locals 4

    const-string/jumbo v2, "QSProfileServiceManager"

    const-string/jumbo v3, "profile service connected"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/systemui/profile/QSProfileServiceManager;->mProfileService:Lcom/samsung/systemui/splugins/profile/PluginProfile;

    iget-object v2, p0, Lcom/android/systemui/profile/QSProfileServiceManager;->mProfileService:Lcom/samsung/systemui/splugins/profile/PluginProfile;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/profile/QSProfileServiceManager;->mUnregisteredSavables:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/profile/QSProfileServiceManager;->mUnregisteredSavables:Ljava/util/HashSet;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/systemui/splugins/profile/Savable;

    iget-object v2, p0, Lcom/android/systemui/profile/QSProfileServiceManager;->mProfileService:Lcom/samsung/systemui/splugins/profile/PluginProfile;

    invoke-interface {v2, v0}, Lcom/samsung/systemui/splugins/profile/PluginProfile;->addSavable(Lcom/samsung/systemui/splugins/profile/Savable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic onPluginDisconnected(Lcom/samsung/systemui/splugins/SPlugin;)V
    .locals 0

    check-cast p1, Lcom/samsung/systemui/splugins/profile/PluginProfile;

    invoke-virtual {p0, p1}, Lcom/android/systemui/profile/QSProfileServiceManager;->onPluginDisconnected(Lcom/samsung/systemui/splugins/profile/PluginProfile;)V

    return-void
.end method

.method public onPluginDisconnected(Lcom/samsung/systemui/splugins/profile/PluginProfile;)V
    .locals 2

    const-string/jumbo v0, "QSProfileServiceManager"

    const-string/jumbo v1, "profile service disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/profile/QSProfileServiceManager;->mProfileService:Lcom/samsung/systemui/splugins/profile/PluginProfile;

    return-void
.end method

.method public removeSavable(Lcom/samsung/systemui/splugins/profile/Savable;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/profile/QSProfileServiceManager;->mProfileService:Lcom/samsung/systemui/splugins/profile/PluginProfile;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/profile/QSProfileServiceManager;->mProfileService:Lcom/samsung/systemui/splugins/profile/PluginProfile;

    invoke-interface {v0, p1}, Lcom/samsung/systemui/splugins/profile/PluginProfile;->removeSavable(Lcom/samsung/systemui/splugins/profile/Savable;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/profile/QSProfileServiceManager;->mUnregisteredSavables:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public sendStateString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/profile/QSProfileServiceManager;->mProfileService:Lcom/samsung/systemui/splugins/profile/PluginProfile;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/profile/QSProfileServiceManager;->mProfileService:Lcom/samsung/systemui/splugins/profile/PluginProfile;

    invoke-interface {v0, p1, p2}, Lcom/samsung/systemui/splugins/profile/PluginProfile;->sendStateString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
