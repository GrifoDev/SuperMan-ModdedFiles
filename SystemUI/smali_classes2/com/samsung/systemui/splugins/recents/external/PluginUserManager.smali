.class public Lcom/samsung/systemui/splugins/recents/external/PluginUserManager;
.super Ljava/lang/Object;
.source "PluginUserManager.java"


# instance fields
.field mManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/os/UserManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/systemui/splugins/recents/external/PluginUserManager;->mManager:Landroid/os/UserManager;

    return-void
.end method


# virtual methods
.method public getProfiles(I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/systemui/splugins/recents/external/PluginUserInfo;",
            ">;"
        }
    .end annotation

    iget-object v3, p0, Lcom/samsung/systemui/splugins/recents/external/PluginUserManager;->mManager:Landroid/os/UserManager;

    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    new-instance v4, Lcom/samsung/systemui/splugins/recents/external/PluginUserInfo;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    invoke-direct {v4, v3}, Lcom/samsung/systemui/splugins/recents/external/PluginUserInfo;-><init>(Landroid/content/pm/UserInfo;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getUsers()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/systemui/splugins/recents/external/PluginUserInfo;",
            ">;"
        }
    .end annotation

    iget-object v3, p0, Lcom/samsung/systemui/splugins/recents/external/PluginUserManager;->mManager:Landroid/os/UserManager;

    invoke-virtual {v3}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    new-instance v4, Lcom/samsung/systemui/splugins/recents/external/PluginUserInfo;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    invoke-direct {v4, v3}, Lcom/samsung/systemui/splugins/recents/external/PluginUserInfo;-><init>(Landroid/content/pm/UserInfo;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
