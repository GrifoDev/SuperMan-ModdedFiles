.class public Lcom/android/systemui/qs/tiles/UHQTile;
.super Lcom/android/systemui/qs/QSTile;
.source "UHQTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/UHQTile$1;,
        Lcom/android/systemui/qs/tiles/UHQTile$UHQDetailAdapter;
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
.field public static final ACTION_HEADSET_PLUG:Ljava/lang/String; = "com.sec.android.contextaware.HEADSET_PLUG"

.field private static final SETTINGS_BT_UHQ_MODE:Ljava/lang/String; = "bluetooth_a2dp_uhqa_mode"

.field private static final SETTINGS_BT_UHQ_SUPPORT:Ljava/lang/String; = "bluetooth_a2dp_uhqa_support"

.field private static final TAG:Ljava/lang/String; = "UHQTile"

.field private static final UHQ_MODE_STATE:Ljava/lang/String; = "k2hd_effect"

.field private static final UHQ_SETTINGS:Landroid/content/Intent;


# instance fields
.field private isBTHeadsetConnected:Z

.field private isHeadsetConnected:Z

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mDetailAdapter:Lcom/android/systemui/qs/tiles/UHQTile$UHQDetailAdapter;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mListening:Z

.field private mSummary:Landroid/widget/TextView;

.field private final mUHQSettings:Lcom/android/systemui/qs/SystemSetting;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/tiles/UHQTile;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/UHQTile;->isBTHeadsetConnected:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/tiles/UHQTile;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/UHQTile;->isHeadsetConnected:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/qs/tiles/UHQTile;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UHQTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/qs/tiles/UHQTile;)Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UHQTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/qs/tiles/UHQTile;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UHQTile;->mSummary:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/qs/tiles/UHQTile;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/UHQTile;->isBTHeadsetConnected:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/qs/tiles/UHQTile;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/UHQTile;->isHeadsetConnected:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/qs/tiles/UHQTile;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/UHQTile;->mSummary:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/tiles/UHQTile;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/UHQTile;->isBtUhqMode()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/qs/tiles/UHQTile;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/UHQTile;->isBtUhqSupport()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/systemui/qs/tiles/UHQTile;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/UHQTile;->isUHQModeAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/systemui/qs/tiles/UHQTile;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/UHQTile;->isUHQModeEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/android/systemui/qs/tiles/UHQTile;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/UHQTile;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap5(Lcom/android/systemui/qs/tiles/UHQTile;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/UHQTile;->setEnabled(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.media.action.DISPLAY_AUDIO_EFFECT_CONTROL_PANEL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/qs/tiles/UHQTile;->UHQ_SETTINGS:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    iput-boolean v4, p0, Lcom/android/systemui/qs/tiles/UHQTile;->mListening:Z

    new-instance v0, Lcom/android/systemui/qs/tiles/UHQTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/UHQTile$1;-><init>(Lcom/android/systemui/qs/tiles/UHQTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/UHQTile;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/systemui/qs/tiles/UHQTile$2;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/UHQTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/UHQTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string/jumbo v3, "k2hd_effect"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/systemui/qs/tiles/UHQTile$2;-><init>(Lcom/android/systemui/qs/tiles/UHQTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/UHQTile;->mUHQSettings:Lcom/android/systemui/qs/SystemSetting;

    iput-boolean v4, p0, Lcom/android/systemui/qs/tiles/UHQTile;->isHeadsetConnected:Z

    iput-boolean v4, p0, Lcom/android/systemui/qs/tiles/UHQTile;->isBTHeadsetConnected:Z

    new-instance v0, Lcom/android/systemui/qs/tiles/UHQTile$UHQDetailAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/tiles/UHQTile$UHQDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/UHQTile;Lcom/android/systemui/qs/tiles/UHQTile$UHQDetailAdapter;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/UHQTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/UHQTile$UHQDetailAdapter;

    return-void
.end method

.method private getMessage()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UHQTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0f0686

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isBtUhqMode()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/UHQTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "bluetooth_a2dp_uhqa_mode"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isBtUhqSupport()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/UHQTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "bluetooth_a2dp_uhqa_support"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private isUHQModeAvailable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/UHQTile;->isHeadsetConnected:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/UHQTile;->isBTHeadsetConnected:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/UHQTile;->isBtUhqSupport()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/UHQTile;->isBtUhqMode()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isUHQModeEnabled()Z
    .locals 4

    const/4 v3, 0x1

    const-string/jumbo v0, "UHQTile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isUHQModeEnabled enable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/UHQTile;->mUHQSettings:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v2}, Lcom/android/systemui/qs/SystemSetting;->getValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " isUHQModeAvailable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/UHQTile;->isUHQModeAvailable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/UHQTile;->isUHQModeAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UHQTile;->mUHQSettings:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0}, Lcom/android/systemui/qs/SystemSetting;->getValue()I

    move-result v0

    if-ne v0, v3, :cond_0

    return v3

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private setEnabled(Z)V
    .locals 3

    const-string/jumbo v0, "UHQTile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setEnabled enable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/UHQTile;->mUHQSettings:Lcom/android/systemui/qs/SystemSetting;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/SystemSetting;->setValue(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getDetailAdapter()Lcom/android/systemui/qs/QSTile$DetailAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UHQTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/UHQTile$UHQDetailAdapter;

    return-object v0
.end method

.method public getLongClickIntent()Landroid/content/Intent;
    .locals 1

    sget-object v0, Lcom/android/systemui/qs/tiles/UHQTile;->UHQ_SETTINGS:Landroid/content/Intent;

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x70

    return v0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UHQTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0f0684

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected handleClick()V
    .locals 5

    const/4 v4, 0x1

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/UHQTile;->isUHQModeEnabled()Z

    move-result v0

    const-string/jumbo v1, "UHQTile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleClick enable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/UHQTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v1, p0}, Lcom/android/systemui/qs/QSTile$Host;->onClickQSTileOnKeyguard(Lcom/android/systemui/qs/QSTile;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/UHQTile;->isUHQModeAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/UHQTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/UHQTile;->mContext:Landroid/content/Context;

    const v3, 0x7f0f0683

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_1
    if-nez v0, :cond_2

    invoke-direct {p0, v4}, Lcom/android/systemui/qs/tiles/UHQTile;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_2
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/systemui/qs/tiles/UHQTile;->setEnabled(Z)V

    goto :goto_0
.end method

.method protected handleSecondaryClick()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UHQTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/UHQTile$UHQDetailAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/UHQTile$UHQDetailAdapter;->isToggleUnavailable()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/tiles/UHQTile;->showDetail(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UHQTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/UHQTile;->mContext:Landroid/content/Context;

    const v2, 0x7f0f0683

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 4

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/UHQTile;->isUHQModeEnabled()Z

    move-result v0

    const-string/jumbo v1, "UHQTile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleUpdateState value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    const v1, 0x7f0203ab

    invoke-static {v1}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->get(I)Lcom/android/systemui/qs/QSTile$Icon;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/UHQTile;->mContext:Landroid/content/Context;

    const v2, 0x7f0f0684

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    return-void
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/UHQTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method public newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;
    .locals 1

    new-instance v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/UHQTile;->newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method

.method public setDetailListening(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/systemui/qs/QSTile;->setDetailListening(Z)V

    return-void
.end method

.method public setListening(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/UHQTile;->mListening:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/UHQTile;->mListening:Z

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UHQTile;->mUHQSettings:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    if-eqz p1, :cond_1

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/UHQTile;->mIntentFilter:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UHQTile;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.sec.android.contextaware.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UHQTile;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UHQTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/UHQTile;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/UHQTile;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UHQTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/UHQTile;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method
