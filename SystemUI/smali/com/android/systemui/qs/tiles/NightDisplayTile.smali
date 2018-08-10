.class public Lcom/android/systemui/qs/tiles/NightDisplayTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "NightDisplayTile.java"

# interfaces
.implements Lcom/android/internal/app/NightDisplayController$Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl",
        "<",
        "Lcom/android/systemui/plugins/qs/QSTile$BooleanState;",
        ">;",
        "Lcom/android/internal/app/NightDisplayController$Callback;"
    }
.end annotation


# instance fields
.field private mController:Lcom/android/internal/app/NightDisplayController;

.field private mIsListening:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSHost;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    new-instance v0, Lcom/android/internal/app/NightDisplayController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/NightDisplayController;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mController:Lcom/android/internal/app/NightDisplayController;

    return-void
.end method


# virtual methods
.method public getLongClickIntent()Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.NIGHT_DISPLAY_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x1eb

    return v0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mContext:Landroid/content/Context;

    const v1, 0x7f120908

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected handleClick()V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v1, v1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    xor-int/lit8 v0, v1, 0x1

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mController:Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {v1, v0}, Lcom/android/internal/app/NightDisplayController;->setActivated(Z)Z

    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mController:Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {v1}, Lcom/android/internal/app/NightDisplayController;->isActivated()Z

    move-result v0

    iput-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mContext:Landroid/content/Context;

    const v2, 0x7f120908

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    const v1, 0x7f0802aa

    :goto_0
    invoke-static {v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    const-class v1, Landroid/widget/Switch;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->expandedAccessibilityClassName:Ljava/lang/String;

    iget-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    :goto_1
    iput v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    return-void

    :cond_0
    const v1, 0x7f0802a9

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/NightDisplayTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method protected handleUserSwitch(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mIsListening:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mController:Lcom/android/internal/app/NightDisplayController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/app/NightDisplayController;->setListener(Lcom/android/internal/app/NightDisplayController$Callback;)V

    :cond_0
    new-instance v0, Lcom/android/internal/app/NightDisplayController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/android/internal/app/NightDisplayController;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mController:Lcom/android/internal/app/NightDisplayController;

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mIsListening:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mController:Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {v0, p0}, Lcom/android/internal/app/NightDisplayController;->setListener(Lcom/android/internal/app/NightDisplayController$Callback;)V

    :cond_1
    invoke-super {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleUserSwitch(I)V

    return-void
.end method

.method public isAvailable()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/app/NightDisplayController;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .locals 1

    new-instance v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/NightDisplayTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method

.method public onActivated(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/NightDisplayTile;->refreshState()V

    return-void
.end method

.method protected setListening(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mIsListening:Z

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mController:Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {v0, p0}, Lcom/android/internal/app/NightDisplayController;->setListener(Lcom/android/internal/app/NightDisplayController$Callback;)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/NightDisplayTile;->refreshState()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mController:Lcom/android/internal/app/NightDisplayController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/app/NightDisplayController;->setListener(Lcom/android/internal/app/NightDisplayController$Callback;)V

    goto :goto_0
.end method
