.class public Lcom/android/systemui/qs/tiles/BluetoothTile;
.super Lcom/android/systemui/qs/QSTile;
.source "BluetoothTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/BluetoothTile$1;,
        Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;
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
.field private static final BLUETOOTH_SETTINGS:Landroid/content/Intent;


# instance fields
.field private final mCallback:Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;

.field private final mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

.field private final mDetailAdapter:Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;

.field private mDetailListening:Z

.field private mDetailOpeningTime:J

.field private mSettingStarted:Z


# direct methods
.method static synthetic -get0()Landroid/content/Intent;
    .locals 1

    sget-object v0, Lcom/android/systemui/qs/tiles/BluetoothTile;->BLUETOOTH_SETTINGS:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/tiles/BluetoothTile;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/qs/tiles/BluetoothTile;)Lcom/android/systemui/statusbar/policy/BluetoothController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/qs/tiles/BluetoothTile;)Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/qs/tiles/BluetoothTile;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mDetailListening:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/systemui/qs/tiles/BluetoothTile;)Lcom/android/systemui/qs/QSTile$Host;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/qs/tiles/BluetoothTile;)Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/systemui/qs/tiles/BluetoothTile;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mUiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/qs/tiles/BluetoothTile;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mSettingStarted:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/tiles/BluetoothTile;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/BluetoothTile;->showItPolicyToast()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.BLUETOOTH_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/qs/tiles/BluetoothTile;->BLUETOOTH_SETTINGS:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    new-instance v0, Lcom/android/systemui/qs/tiles/BluetoothTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/BluetoothTile$1;-><init>(Lcom/android/systemui/qs/tiles/BluetoothTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mCallback:Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;

    invoke-interface {p1}, Lcom/android/systemui/qs/QSTile$Host;->getBluetoothController()Lcom/android/systemui/statusbar/policy/BluetoothController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    new-instance v0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/BluetoothTile;Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mCallback:Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/BluetoothController;->addStateChangedCallback(Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;)V

    return-void
.end method


# virtual methods
.method protected composeChangeAnnouncement()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0f0316

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0f0315

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDetailAdapter()Lcom/android/systemui/qs/QSTile$DetailAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;

    return-object v0
.end method

.method public getLongClickIntent()Landroid/content/Intent;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KnoxStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KnoxStateMonitor;->isBluetoothTileBlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/BluetoothTile;->showItPolicyToast()V

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.BLUETOOTH_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x71

    return v0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0f0368

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected handleClick()V
    .locals 7

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KnoxStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KnoxStateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KnoxStateMonitor;->isBluetoothTileBlocked()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/BluetoothTile;->showItPolicyToast()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v1, v1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v1, p0}, Lcom/android/systemui/qs/QSTile$Host;->onClickQSTileOnKeyguard(Lcom/android/systemui/qs/QSTile;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/BluetoothController;->canConfigBluetooth()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.settings.BLUETOOTH_SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/android/systemui/qs/QSTile$Host;->startActivityDismissingKeyguard(Landroid/content/Intent;)V

    return-void

    :cond_2
    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->SUPPORT_GSIM_LOG:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/BluetoothController;->isBluetoothConnected()Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v1, v1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "com.android.bluetooth"

    const-string/jumbo v4, "BDDC"

    const-string/jumbo v5, "Quick Button Off"

    const/4 v6, 0x0

    invoke-static {v1, v3, v4, v5, v6}, Lcom/android/keyguard/util/GsimLogManager;->sendLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v1, v1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v3, v1, v2}, Lcom/android/systemui/statusbar/policy/BluetoothController;->setBluetoothEnabled(ZZ)V

    return-void

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method protected handleDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/qs/QSTile;->handleDestroy()V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mCallback:Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/BluetoothController;->removeStateChangedCallback(Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;)V

    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 10

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-interface {v6}, Lcom/android/systemui/statusbar/policy/BluetoothController;->isBluetoothEnabled()Z

    move-result v3

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-interface {v6}, Lcom/android/systemui/statusbar/policy/BluetoothController;->isBluetoothConnected()Z

    move-result v1

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-interface {v6}, Lcom/android/systemui/statusbar/policy/BluetoothController;->isBluetoothConnecting()Z

    move-result v2

    iget-boolean v6, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-eq v6, v3, :cond_3

    const/4 v4, 0x1

    :goto_0
    if-eqz v4, :cond_0

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;

    invoke-virtual {v6, v3}, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->setItemsVisible(Z)V

    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/tiles/BluetoothTile;->fireToggleStateChanged(Z)V

    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/android/systemui/qs/tiles/BluetoothTile;->fireDisableStateChanged(Z)V

    :cond_0
    iput-boolean v3, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    const/4 v6, 0x0

    iput-boolean v6, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->autoMirrorDrawable:Z

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mContext:Landroid/content/Context;

    const v7, 0x7f0f0310

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->minimalContentDescription:Ljava/lang/CharSequence;

    if-eqz v3, :cond_6

    const/4 v6, 0x0

    iput-object v6, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    if-eqz v1, :cond_4

    const v6, 0x7f0201aa

    invoke-static {v6}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->get(I)Lcom/android/systemui/qs/QSTile$Icon;

    move-result-object v6

    iput-object v6, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-interface {v6}, Lcom/android/systemui/statusbar/policy/BluetoothController;->getLastDeviceName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mContext:Landroid/content/Context;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const v8, 0x7f0f02bd

    invoke-virtual {v6, v8, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->minimalContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->minimalContentDescription:Ljava/lang/CharSequence;

    :goto_1
    iget-object v6, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mContext:Landroid/content/Context;

    const v7, 0x7f0f0368

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    :cond_1
    :goto_2
    const v6, 0x7f020379

    invoke-static {v6}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->get(I)Lcom/android/systemui/qs/QSTile$Icon;

    move-result-object v6

    iput-object v6, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    iget-object v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mContext:Landroid/content/Context;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const v8, 0x7f0f02bd

    invoke-virtual {v6, v8, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->dualLabelContentDescription:Ljava/lang/CharSequence;

    :cond_2
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mContext:Landroid/content/Context;

    iget-boolean v6, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-eqz v6, :cond_7

    const v6, 0x7f0f02cd

    :goto_3
    invoke-virtual {v7, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mContext:Landroid/content/Context;

    const v7, 0x7f0f0368

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    if-eqz v1, :cond_8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    :goto_4
    iget-object v6, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    iput-object v6, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->minimalContentDescription:Ljava/lang/CharSequence;

    return-void

    :cond_3
    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_4
    if-eqz v2, :cond_5

    const v6, 0x7f0201ab

    invoke-static {v6}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->get(I)Lcom/android/systemui/qs/QSTile$Icon;

    move-result-object v6

    iput-object v6, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mContext:Landroid/content/Context;

    const v7, 0x7f0f0313

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mContext:Landroid/content/Context;

    const v7, 0x7f0f0368

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->minimalContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->minimalContentDescription:Ljava/lang/CharSequence;

    goto/16 :goto_1

    :cond_5
    const v6, 0x7f0201ae

    invoke-static {v6}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->get(I)Lcom/android/systemui/qs/QSTile$Icon;

    move-result-object v6

    iput-object v6, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mContext:Landroid/content/Context;

    const v8, 0x7f0f0312

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mContext:Landroid/content/Context;

    const v8, 0x7f0f02c7

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->minimalContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mContext:Landroid/content/Context;

    const v8, 0x7f0f02c7

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->minimalContentDescription:Ljava/lang/CharSequence;

    goto/16 :goto_1

    :cond_6
    const v6, 0x7f0201ad

    invoke-static {v6}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->get(I)Lcom/android/systemui/qs/QSTile$Icon;

    move-result-object v6

    iput-object v6, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mContext:Landroid/content/Context;

    const v7, 0x7f0f0368

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mContext:Landroid/content/Context;

    const v7, 0x7f0f0311

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    goto/16 :goto_2

    :cond_7
    const v6, 0x7f0f02ce

    goto/16 :goto_3

    :cond_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    goto/16 :goto_4
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/BluetoothTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method public isAvailable()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/BluetoothController;->isBluetoothSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/BluetoothTile;->getTileSpec()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/systemui/qs/QSTile$Host;->shouldBeHiddenByKnox(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;
    .locals 1

    new-instance v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/BluetoothTile;->newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method

.method public setDetailListening(Z)V
    .locals 8

    const/4 v5, 0x0

    iget-boolean v3, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mDetailListening:Z

    if-ne v3, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mDetailListening:Z

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/policy/BluetoothController;->isBluetoothEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz p1, :cond_3

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lcom/android/systemui/statusbar/policy/BluetoothController;->scan(Z)V

    :cond_1
    :goto_0
    iput-boolean v5, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mSettingStarted:Z

    sget-boolean v3, Lcom/android/systemui/SystemUIRune;->SUPPORT_GSIM_LOG:Z

    if-eqz v3, :cond_2

    if-eqz p1, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mDetailOpeningTime:J

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-boolean v3, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mSettingStarted:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-interface {v3, v5}, Lcom/android/systemui/statusbar/policy/BluetoothController;->scan(Z)V

    goto :goto_0

    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mDetailOpeningTime:J

    sub-long v0, v4, v6

    long-to-int v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "com.android.systemui.statusbar.policy.quicksetting"

    const-string/jumbo v5, "QS18"

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6, v2}, Lcom/android/keyguard/util/GsimLogManager;->sendLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1
.end method

.method public setListening(Z)V
    .locals 0

    return-void
.end method
