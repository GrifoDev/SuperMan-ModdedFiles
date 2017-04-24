.class public Lcom/android/systemui/qs/tiles/CastTile;
.super Lcom/android/systemui/qs/QSTile;
.source "CastTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/CastTile$Callback;,
        Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/QSTile",
        "<",
        "Lcom/android/systemui/qs/QSTile$BooleanState;",
        ">;"
    }
.end annotation


# static fields
.field private static final CAST_SETTINGS:Landroid/content/Intent;


# instance fields
.field private final mCallback:Lcom/android/systemui/qs/tiles/CastTile$Callback;

.field private final mController:Lcom/android/systemui/statusbar/policy/CastController;

.field private final mDetailAdapter:Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;

.field private final mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;


# direct methods
.method static synthetic -get0()Landroid/content/Intent;
    .locals 1

    sget-object v0, Lcom/android/systemui/qs/tiles/CastTile;->CAST_SETTINGS:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic -get1()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/qs/tiles/CastTile;->DEBUG:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/qs/tiles/CastTile;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/qs/tiles/CastTile;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/qs/tiles/CastTile;)Lcom/android/systemui/statusbar/policy/CastController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mController:Lcom/android/systemui/statusbar/policy/CastController;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/qs/tiles/CastTile;)Lcom/android/systemui/qs/QSTile$Host;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/tiles/CastTile;Lcom/android/systemui/statusbar/policy/CastController$CastDevice;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/CastTile;->getDeviceName(Lcom/android/systemui/statusbar/policy/CastController$CastDevice;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.CAST_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/qs/tiles/CastTile;->CAST_SETTINGS:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    new-instance v0, Lcom/android/systemui/qs/tiles/CastTile$Callback;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/tiles/CastTile$Callback;-><init>(Lcom/android/systemui/qs/tiles/CastTile;Lcom/android/systemui/qs/tiles/CastTile$Callback;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mCallback:Lcom/android/systemui/qs/tiles/CastTile$Callback;

    invoke-interface {p1}, Lcom/android/systemui/qs/QSTile$Host;->getCastController()Lcom/android/systemui/statusbar/policy/CastController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mController:Lcom/android/systemui/statusbar/policy/CastController;

    new-instance v0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/CastTile;Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;

    invoke-interface {p1}, Lcom/android/systemui/qs/QSTile$Host;->getKeyguardMonitor()Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    return-void
.end method

.method private getDeviceName(Lcom/android/systemui/statusbar/policy/CastController$CastDevice;)Ljava/lang/String;
    .locals 2

    iget-object v0, p1, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;->name:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0f0390

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected composeChangeAnnouncement()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0f0328

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDetailAdapter()Lcom/android/systemui/qs/QSTile$DetailAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;

    return-object v0
.end method

.method public getLongClickIntent()Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.CAST_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x72

    return v0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0f038e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected handleClick()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->canSkipBouncer()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/CastTile;->getMetricsCategory()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/CastTile;->showDetail(Z)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    new-instance v1, Lcom/android/systemui/qs/tiles/CastTile$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/CastTile$1;-><init>(Lcom/android/systemui/qs/tiles/CastTile;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/qs/QSTile$Host;->startRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/CastTile;->mContext:Landroid/content/Context;

    const v5, 0x7f0f038e

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    iget-object v4, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    iput-object v4, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    iput-boolean v8, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    iput-boolean v8, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->autoMirrorDrawable:Z

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/CastTile;->mController:Lcom/android/systemui/statusbar/policy/CastController;

    invoke-interface {v4}, Lcom/android/systemui/statusbar/policy/CastController;->getCastDevices()Ljava/util/Set;

    move-result-object v3

    const/4 v0, 0x0

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;

    iget v4, v1, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;->state:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    iput-boolean v9, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    invoke-direct {p0, v1}, Lcom/android/systemui/qs/tiles/CastTile;->getDeviceName(Lcom/android/systemui/statusbar/policy/CastController$CastDevice;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/CastTile;->mContext:Landroid/content/Context;

    new-array v6, v9, [Ljava/lang/Object;

    iget-object v7, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    aput-object v7, v6, v8

    const v7, 0x7f0f02be

    invoke-virtual {v5, v7, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_1
    iget v4, v1, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;->state:I

    if-ne v4, v9, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-boolean v4, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-nez v4, :cond_3

    if-eqz v0, :cond_3

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/CastTile;->mContext:Landroid/content/Context;

    const v5, 0x7f0f039b

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    :cond_3
    iget-boolean v4, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-eqz v4, :cond_4

    const v4, 0x7f0201b7

    :goto_1
    invoke-static {v4}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->get(I)Lcom/android/systemui/qs/QSTile$Icon;

    move-result-object v4

    iput-object v4, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/CastTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;

    invoke-static {v4, v3}, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->-wrap0(Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;Ljava/util/Set;)V

    const-class v4, Landroid/widget/Button;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->expandedAccessibilityClassName:Ljava/lang/String;

    iput-object v4, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->minimalAccessibilityClassName:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/CastTile;->mContext:Landroid/content/Context;

    const v6, 0x7f0f05be

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    return-void

    :cond_4
    const v4, 0x7f0201b6

    goto :goto_1
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/CastTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method protected handleUserSwitch(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/systemui/qs/QSTile;->handleUserSwitch(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mController:Lcom/android/systemui/statusbar/policy/CastController;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mController:Lcom/android/systemui/statusbar/policy/CastController;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/policy/CastController;->setCurrentUserId(I)V

    return-void
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;
    .locals 1

    new-instance v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/CastTile;->newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mController:Lcom/android/systemui/statusbar/policy/CastController;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/systemui/qs/tiles/CastTile;->DEBUG:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setListening "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mController:Lcom/android/systemui/statusbar/policy/CastController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CastTile;->mCallback:Lcom/android/systemui/qs/tiles/CastTile$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CastController;->addCallback(Lcom/android/systemui/statusbar/policy/CastController$Callback;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CastTile;->mCallback:Lcom/android/systemui/qs/tiles/CastTile$Callback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->addCallback(Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;)V

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mController:Lcom/android/systemui/statusbar/policy/CastController;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CastController;->setDiscovering(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mController:Lcom/android/systemui/statusbar/policy/CastController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CastTile;->mCallback:Lcom/android/systemui/qs/tiles/CastTile$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CastController;->removeCallback(Lcom/android/systemui/statusbar/policy/CastController$Callback;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CastTile;->mCallback:Lcom/android/systemui/qs/tiles/CastTile$Callback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->removeCallback(Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;)V

    goto :goto_0
.end method
