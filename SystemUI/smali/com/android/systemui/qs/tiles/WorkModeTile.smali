.class public Lcom/android/systemui/qs/tiles/WorkModeTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "WorkModeTile.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/ManagedProfileController$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/WorkModeTile$WorkModeDetailAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl",
        "<",
        "Lcom/android/systemui/plugins/qs/QSTile$BooleanState;",
        ">;",
        "Lcom/android/systemui/statusbar/phone/ManagedProfileController$Callback;"
    }
.end annotation


# instance fields
.field private final mDetailAdapter:Lcom/android/systemui/qs/tiles/WorkModeTile$WorkModeDetailAdapter;

.field private final mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

.field private final mProfileController:Lcom/android/systemui/statusbar/phone/ManagedProfileController;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/tiles/WorkModeTile;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WorkModeTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/tiles/WorkModeTile;)Lcom/samsung/android/knox/SemPersonaManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WorkModeTile;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/qs/tiles/WorkModeTile;)Lcom/android/systemui/statusbar/phone/ManagedProfileController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WorkModeTile;->mProfileController:Lcom/android/systemui/statusbar/phone/ManagedProfileController;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/qs/tiles/WorkModeTile;)Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WorkModeTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/tiles/WorkModeTile;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/WorkModeTile;->getKnoxWorkspaceId()I

    move-result v0

    return v0
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSHost;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    const-class v0, Lcom/android/systemui/statusbar/phone/ManagedProfileController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/ManagedProfileController;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WorkModeTile;->mProfileController:Lcom/android/systemui/statusbar/phone/ManagedProfileController;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WorkModeTile;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WorkModeTile;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    new-instance v0, Lcom/android/systemui/qs/tiles/WorkModeTile$WorkModeDetailAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/tiles/WorkModeTile$WorkModeDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/WorkModeTile;Lcom/android/systemui/qs/tiles/WorkModeTile$WorkModeDetailAdapter;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WorkModeTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/WorkModeTile$WorkModeDetailAdapter;

    return-void
.end method

.method private getKnoxWorkspaceId()I
    .locals 5

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WorkModeTile;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WorkModeTile;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WorkModeTile;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    return v3

    :cond_1
    const/4 v3, 0x0

    return v3
.end method


# virtual methods
.method protected composeChangeAnnouncement()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WorkModeTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WorkModeTile;->mContext:Landroid/content/Context;

    const v1, 0x7f1200d1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WorkModeTile;->mContext:Landroid/content/Context;

    const v1, 0x7f1200d0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WorkModeTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/WorkModeTile$WorkModeDetailAdapter;

    return-object v0
.end method

.method public getLongClickIntent()Landroid/content/Intent;
    .locals 2

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/WorkModeTile;->getKnoxWorkspaceId()I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.knox.containeragent.SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.MANAGED_PROFILE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x101

    return v0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WorkModeTile;->mContext:Landroid/content/Context;

    const v1, 0x7f12094f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleClick()V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WorkModeTile;->mProfileController:Lcom/android/systemui/statusbar/phone/ManagedProfileController;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WorkModeTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->setWorkModeEnabled(Z)V

    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 2

    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WorkModeTile;->mContext:Landroid/content/Context;

    const v1, 0x7f12094f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WorkModeTile;->mProfileController:Lcom/android/systemui/statusbar/phone/ManagedProfileController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->isWorkModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WorkModeTile;->mProfileController:Lcom/android/systemui/statusbar/phone/ManagedProfileController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->hasPremiumContainer()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f080561

    invoke-static {v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WorkModeTile;->mContext:Landroid/content/Context;

    const v1, 0x7f1200d3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    :goto_2
    const-class v0, Landroid/widget/Switch;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->expandedAccessibilityClassName:Ljava/lang/String;

    iget-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    :goto_3
    iput v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WorkModeTile;->mProfileController:Lcom/android/systemui/statusbar/phone/ManagedProfileController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->isWorkModeEnabled()Z

    move-result v0

    iput-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    goto :goto_0

    :cond_1
    const v0, 0x7f08055f

    invoke-static {v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WorkModeTile;->mProfileController:Lcom/android/systemui/statusbar/phone/ManagedProfileController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->hasPremiumContainer()Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f080560

    invoke-static {v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    :goto_4
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WorkModeTile;->mContext:Landroid/content/Context;

    const v1, 0x7f1200d2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    goto :goto_2

    :cond_3
    const v0, 0x7f08055e

    invoke-static {v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    goto :goto_4

    :cond_4
    const/4 v0, 0x1

    goto :goto_3
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/WorkModeTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method public isAvailable()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WorkModeTile;->mProfileController:Lcom/android/systemui/statusbar/phone/ManagedProfileController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->hasActiveProfile()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WorkModeTile;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WorkModeTile;->getTileSpec()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/systemui/qs/QSHost;->shouldBeHiddenByKnox(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .locals 1

    new-instance v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WorkModeTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method

.method public onManagedProfileChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WorkModeTile;->mProfileController:Lcom/android/systemui/statusbar/phone/ManagedProfileController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->hasActiveProfile()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WorkModeTile;->mProfileController:Lcom/android/systemui/statusbar/phone/ManagedProfileController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->isWorkModeEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/WorkModeTile;->refreshState(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WorkModeTile;->onManagedProfileRemoved()V

    goto :goto_0
.end method

.method public onManagedProfileRemoved()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WorkModeTile;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WorkModeTile;->getTileSpec()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/systemui/qs/QSHost;->removeTile(Ljava/lang/String;)V

    return-void
.end method

.method public setListening(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WorkModeTile;->mProfileController:Lcom/android/systemui/statusbar/phone/ManagedProfileController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->addCallback(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WorkModeTile;->mProfileController:Lcom/android/systemui/statusbar/phone/ManagedProfileController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->removeCallback(Ljava/lang/Object;)V

    goto :goto_0
.end method
