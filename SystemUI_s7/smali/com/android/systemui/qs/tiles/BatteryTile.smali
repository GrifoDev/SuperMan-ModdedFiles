.class public Lcom/android/systemui/qs/tiles/BatteryTile;
.super Lcom/android/systemui/qs/QSTile;
.source "BatteryTile.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/QSTile",
        "<",
        "Lcom/android/systemui/qs/QSTile$State;",
        ">;",
        "Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;"
    }
.end annotation


# instance fields
.field private final mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field private final mBatteryDetail:Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;

.field private mCharging:Z

.field private mDetailShown:Z

.field private mLevel:I

.field private mPluggedIn:Z

.field private mPowerSave:Z


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/tiles/BatteryTile;)Lcom/android/systemui/statusbar/policy/BatteryController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BatteryTile;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/tiles/BatteryTile;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/BatteryTile;->mCharging:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/qs/tiles/BatteryTile;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BatteryTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/qs/tiles/BatteryTile;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/BatteryTile;->mDetailShown:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/systemui/qs/tiles/BatteryTile;)Lcom/android/systemui/qs/QSTile$Host;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BatteryTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/qs/tiles/BatteryTile;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/qs/tiles/BatteryTile;->mLevel:I

    return v0
.end method

.method static synthetic -get6(Lcom/android/systemui/qs/tiles/BatteryTile;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/BatteryTile;->mPluggedIn:Z

    return v0
.end method

.method static synthetic -get7(Lcom/android/systemui/qs/tiles/BatteryTile;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/BatteryTile;->mPowerSave:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/qs/tiles/BatteryTile;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/BatteryTile;->mDetailShown:Z

    return p1
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    new-instance v0, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;-><init>(Lcom/android/systemui/qs/tiles/BatteryTile;Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/BatteryTile;->mBatteryDetail:Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;

    invoke-interface {p1}, Lcom/android/systemui/qs/QSTile$Host;->getBatteryController()Lcom/android/systemui/statusbar/policy/BatteryController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/BatteryTile;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    return-void
.end method


# virtual methods
.method public getDetailAdapter()Lcom/android/systemui/qs/QSTile$DetailAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BatteryTile;->mBatteryDetail:Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;

    return-object v0
.end method

.method public getLongClickIntent()Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.POWER_USAGE_SUMMARY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x105

    return v0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BatteryTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0f0573

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected handleClick()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/BatteryTile;->showDetail(Z)V

    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 8

    if-eqz p2, :cond_0

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v2

    int-to-double v4, v0

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/qs/tiles/BatteryTile$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/tiles/BatteryTile$1;-><init>(Lcom/android/systemui/qs/tiles/BatteryTile;)V

    iput-object v2, p1, Lcom/android/systemui/qs/QSTile$State;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/BatteryTile;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const v5, 0x7f0f0303

    invoke-virtual {v3, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v2, p0, Lcom/android/systemui/qs/tiles/BatteryTile;->mPowerSave:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/BatteryTile;->mContext:Landroid/content/Context;

    const v4, 0x7f0f0495

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/BatteryTile;->mContext:Landroid/content/Context;

    const v4, 0x7f0f02e4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    const-class v2, Landroid/widget/Button;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/qs/QSTile$State;->expandedAccessibilityClassName:Ljava/lang/String;

    iput-object v2, p1, Lcom/android/systemui/qs/QSTile$State;->minimalAccessibilityClassName:Ljava/lang/String;

    return-void

    :cond_0
    iget v0, p0, Lcom/android/systemui/qs/tiles/BatteryTile;->mLevel:I

    goto :goto_0

    :cond_1
    iget-boolean v2, p0, Lcom/android/systemui/qs/tiles/BatteryTile;->mCharging:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/BatteryTile;->mContext:Landroid/content/Context;

    const v4, 0x7f0f045d

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    const-string/jumbo v2, ""

    goto :goto_1
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    new-instance v0, Lcom/android/systemui/qs/QSTile$State;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$State;-><init>()V

    return-object v0
.end method

.method public onBatteryLevelChanged(IZZIIIIZ)V
    .locals 1

    iput p1, p0, Lcom/android/systemui/qs/tiles/BatteryTile;->mLevel:I

    iput-boolean p2, p0, Lcom/android/systemui/qs/tiles/BatteryTile;->mPluggedIn:Z

    iput-boolean p3, p0, Lcom/android/systemui/qs/tiles/BatteryTile;->mCharging:Z

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/BatteryTile;->refreshState(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/BatteryTile;->mDetailShown:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BatteryTile;->mBatteryDetail:Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;->-wrap2(Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;)V

    :cond_0
    return-void
.end method

.method public onPowerSaveChanged(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/BatteryTile;->mPowerSave:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/BatteryTile;->refreshState(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/BatteryTile;->mDetailShown:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BatteryTile;->mBatteryDetail:Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;->-wrap2(Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;)V

    :cond_0
    return-void
.end method

.method public setDetailListening(Z)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/systemui/qs/QSTile;->setDetailListening(Z)V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BatteryTile;->mBatteryDetail:Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;->-set0(Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;Landroid/view/View;)Landroid/view/View;

    :cond_0
    return-void
.end method

.method public setListening(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BatteryTile;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->addStateChangedCallback(Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BatteryTile;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->removeStateChangedCallback(Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;)V

    goto :goto_0
.end method
