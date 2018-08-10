.class public Lcom/samsung/systemui/splugins/recents/external/PluginUserInfo;
.super Ljava/lang/Object;
.source "PluginUserInfo.java"


# instance fields
.field public id:I

.field mInfo:Landroid/content/pm/UserInfo;


# direct methods
.method public constructor <init>(Landroid/content/pm/UserInfo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/systemui/splugins/recents/external/PluginUserInfo;->mInfo:Landroid/content/pm/UserInfo;

    iget v0, p1, Landroid/content/pm/UserInfo;->id:I

    iput v0, p0, Lcom/samsung/systemui/splugins/recents/external/PluginUserInfo;->id:I

    return-void
.end method


# virtual methods
.method public isManagedProfile()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/systemui/splugins/recents/external/PluginUserInfo;->mInfo:Landroid/content/pm/UserInfo;

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    return v0
.end method

.method public isQuietModeEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/systemui/splugins/recents/external/PluginUserInfo;->mInfo:Landroid/content/pm/UserInfo;

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isQuietModeEnabled()Z

    move-result v0

    return v0
.end method
