.class public Lcom/android/systemui/qs/tiles/CastTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "CastTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/CastTile$1;,
        Lcom/android/systemui/qs/tiles/CastTile$Callback;,
        Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl",
        "<",
        "Lcom/android/systemui/plugins/qs/QSTile$BooleanState;",
        ">;"
    }
.end annotation


# static fields
.field private static final CAST_SETTINGS:Landroid/content/Intent;


# instance fields
.field private final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private final mCallback:Lcom/android/systemui/qs/tiles/CastTile$Callback;

.field private final mController:Lcom/android/systemui/statusbar/policy/CastController;

.field private final mDetailAdapter:Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;

.field private mDialog:Landroid/app/Dialog;

.field private final mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRegistered:Z


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

.method static synthetic -get5(Lcom/android/systemui/qs/tiles/CastTile;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mDialog:Landroid/app/Dialog;

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

.method public constructor <init>(Lcom/android/systemui/qs/QSHost;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    new-instance v0, Lcom/android/systemui/qs/tiles/CastTile$Callback;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/tiles/CastTile$Callback;-><init>(Lcom/android/systemui/qs/tiles/CastTile;Lcom/android/systemui/qs/tiles/CastTile$Callback;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mCallback:Lcom/android/systemui/qs/tiles/CastTile$Callback;

    new-instance v0, Lcom/android/systemui/qs/tiles/CastTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/CastTile$1;-><init>(Lcom/android/systemui/qs/tiles/CastTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mReceiver:Landroid/content/BroadcastReceiver;

    const-class v0, Lcom/android/systemui/statusbar/policy/CastController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/CastController;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mController:Lcom/android/systemui/statusbar/policy/CastController;

    new-instance v0, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/CastTile;Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;

    const-class v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    const-class v0, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/ActivityStarter;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

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

    const v1, 0x7f1208c6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private registerReceiver()V
    .locals 6

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CastTile;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v5, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v3, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mRegistered:Z

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mDialog:Landroid/app/Dialog;

    new-instance v1, Lcom/android/systemui/qs/tiles/-$Lambda$9iiLojYyOuKkv6TqXtTybKrlMa4;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/-$Lambda$9iiLojYyOuKkv6TqXtTybKrlMa4;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method


# virtual methods
.method protected composeChangeAnnouncement()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mContext:Landroid/content/Context;

    const v1, 0x7f120042

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;
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

    const v1, 0x7f1208c7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected handleClick()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->canSkipBouncer()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v1, Lcom/android/systemui/qs/tiles/-$Lambda$9iiLojYyOuKkv6TqXtTybKrlMa4$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/-$Lambda$9iiLojYyOuKkv6TqXtTybKrlMa4$2;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/CastTile;->showDetail(Z)V

    return-void
.end method

.method protected handleSecondaryClick()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/CastTile;->handleClick()V

    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 11

    const/4 v4, 0x2

    const/4 v10, 0x0

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/CastTile;->mContext:Landroid/content/Context;

    const v7, 0x7f1208c7

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    iget-object v6, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    iput-object v6, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    iput-boolean v10, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/CastTile;->mController:Lcom/android/systemui/statusbar/policy/CastController;

    invoke-interface {v6}, Lcom/android/systemui/statusbar/policy/CastController;->getCastDevices()Ljava/util/Set;

    move-result-object v3

    const/4 v0, 0x0

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;

    iget v6, v1, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;->state:I

    if-ne v6, v4, :cond_1

    iput-boolean v5, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    invoke-direct {p0, v1}, Lcom/android/systemui/qs/tiles/CastTile;->getDeviceName(Lcom/android/systemui/statusbar/policy/CastController$CastDevice;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/CastTile;->mContext:Landroid/content/Context;

    new-array v8, v5, [Ljava/lang/Object;

    iget-object v9, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    aput-object v9, v8, v10

    const v9, 0x7f120040

    invoke-virtual {v7, v9, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_1
    iget v6, v1, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;->state:I

    if-ne v6, v5, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-boolean v6, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-nez v6, :cond_3

    if-eqz v0, :cond_3

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/CastTile;->mContext:Landroid/content/Context;

    const v7, 0x7f1208d2

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    :cond_3
    iget-boolean v6, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v6, :cond_4

    :goto_1
    iput v4, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    iget-boolean v4, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v4, :cond_5

    const v4, 0x7f08029d

    :goto_2
    invoke-static {v4}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v4

    iput-object v4, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/CastTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;

    invoke-static {v4, v3}, Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;->-wrap0(Lcom/android/systemui/qs/tiles/CastTile$CastDetailAdapter;Ljava/util/Set;)V

    const-class v4, Landroid/widget/Button;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->expandedAccessibilityClassName:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/CastTile;->mContext:Landroid/content/Context;

    const v6, 0x7f1200c6

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    return-void

    :cond_4
    move v4, v5

    goto :goto_1

    :cond_5
    const v4, 0x7f08029c

    goto :goto_2
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/CastTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method protected handleUserSwitch(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleUserSwitch(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mController:Lcom/android/systemui/statusbar/policy/CastController;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mController:Lcom/android/systemui/statusbar/policy/CastController;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/policy/CastController;->setCurrentUserId(I)V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_qs_tiles_CastTile_4354()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/CastTile;->showDetail(Z)V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_qs_tiles_CastTile_4556()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/systemui/qs/tiles/-$Lambda$9iiLojYyOuKkv6TqXtTybKrlMa4$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/-$Lambda$9iiLojYyOuKkv6TqXtTybKrlMa4$1;-><init>(Ljava/lang/Object;)V

    const/4 v2, 0x4

    invoke-static {v0, v2, v1}, Lcom/android/internal/app/MediaRouteDialogPresenter;->createDialog(Landroid/content/Context;ILandroid/view/View$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mDialog:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7de

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/qs/tiles/-$Lambda$9iiLojYyOuKkv6TqXtTybKrlMa4$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/-$Lambda$9iiLojYyOuKkv6TqXtTybKrlMa4$3;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/CastTile;->registerReceiver()V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {v0}, Lcom/android/systemui/qs/QSHost;->collapsePanels()V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_qs_tiles_CastTile_4682(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const-class v0, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/CastTile;->getLongClickIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_qs_tiles_CastTile_5032()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_qs_tiles_CastTile_5399(Landroid/content/DialogInterface;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CastTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mRegistered:Z

    :cond_0
    return-void
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .locals 1

    new-instance v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/CastTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

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

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CastController;->addCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CastTile;->mCallback:Lcom/android/systemui/qs/tiles/CastTile$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->addCallback(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mController:Lcom/android/systemui/statusbar/policy/CastController;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CastController;->setDiscovering(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mController:Lcom/android/systemui/statusbar/policy/CastController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CastTile;->mCallback:Lcom/android/systemui/qs/tiles/CastTile$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CastController;->removeCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CastTile;->mCallback:Lcom/android/systemui/qs/tiles/CastTile$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->removeCallback(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public showDetail(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/qs/tiles/-$Lambda$9iiLojYyOuKkv6TqXtTybKrlMa4$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/-$Lambda$9iiLojYyOuKkv6TqXtTybKrlMa4$4;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
