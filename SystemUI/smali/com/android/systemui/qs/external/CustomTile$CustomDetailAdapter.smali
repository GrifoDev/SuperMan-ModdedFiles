.class public Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;
.super Ljava/lang/Object;
.source "CustomTile.java"

# interfaces
.implements Lcom/android/systemui/plugins/qs/DetailAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/external/CustomTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CustomDetailAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter$1;
    }
.end annotation


# instance fields
.field private mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

.field private mService:Landroid/service/quicksettings/IQSTileService;

.field final synthetic this$0:Lcom/android/systemui/qs/external/CustomTile;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/external/CustomTile;Landroid/service/quicksettings/IQSTileService;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->this$0:Lcom/android/systemui/qs/external/CustomTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter$1;-><init>(Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;)V

    iput-object v0, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    iput-object p2, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->mService:Landroid/service/quicksettings/IQSTileService;

    return-void
.end method

.method private shouldBeUnlock(Z)Z
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->this$0:Lcom/android/systemui/qs/external/CustomTile;

    invoke-static {v0}, Lcom/android/systemui/qs/external/CustomTile;->-get8(Lcom/android/systemui/qs/external/CustomTile;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ALL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->this$0:Lcom/android/systemui/qs/external/CustomTile;

    invoke-static {v0}, Lcom/android/systemui/qs/external/CustomTile;->-get8(Lcom/android/systemui/qs/external/CustomTile;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->this$0:Lcom/android/systemui/qs/external/CustomTile;

    invoke-static {v0}, Lcom/android/systemui/qs/external/CustomTile;->-get8(Lcom/android/systemui/qs/external/CustomTile;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    xor-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_2

    return v2

    :cond_2
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->mService:Landroid/service/quicksettings/IQSTileService;

    if-nez v4, :cond_0

    return-object v7

    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->mService:Landroid/service/quicksettings/IQSTileService;

    invoke-interface {v4}, Landroid/service/quicksettings/IQSTileService;->semGetDetailView()Landroid/widget/RemoteViews;

    move-result-object v2

    iget-object v4, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->this$0:Lcom/android/systemui/qs/external/CustomTile;

    invoke-static {v4}, Lcom/android/systemui/qs/external/CustomTile;->-get0(Lcom/android/systemui/qs/external/CustomTile;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getDetailView remoteViews = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_1

    return-object v7

    :cond_1
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    invoke-virtual {v2, p1, v1, v4}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    return-object v7
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x10c

    return v0
.end method

.method public getSettingsIntent()Landroid/content/Intent;
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->mService:Landroid/service/quicksettings/IQSTileService;

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->mService:Landroid/service/quicksettings/IQSTileService;

    invoke-interface {v1}, Landroid/service/quicksettings/IQSTileService;->semGetSettingsIntent()Landroid/content/Intent;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    return-object v2
.end method

.method public getTileString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->this$0:Lcom/android/systemui/qs/external/CustomTile;

    invoke-static {v0}, Lcom/android/systemui/qs/external/CustomTile;->-get6(Lcom/android/systemui/qs/external/CustomTile;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->mService:Landroid/service/quicksettings/IQSTileService;

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->mService:Landroid/service/quicksettings/IQSTileService;

    invoke-interface {v1}, Landroid/service/quicksettings/IQSTileService;->semGetDetailViewTitle()Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    return-object v2
.end method

.method public getToggleEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->this$0:Lcom/android/systemui/qs/external/CustomTile;

    invoke-static {v0}, Lcom/android/systemui/qs/external/CustomTile;->-get7(Lcom/android/systemui/qs/external/CustomTile;)Z

    move-result v0

    return v0
.end method

.method public getToggleState()Ljava/lang/Boolean;
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->mService:Landroid/service/quicksettings/IQSTileService;

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->mService:Landroid/service/quicksettings/IQSTileService;

    invoke-interface {v1}, Landroid/service/quicksettings/IQSTileService;->semIsToggleButtonExists()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->mService:Landroid/service/quicksettings/IQSTileService;

    invoke-interface {v1}, Landroid/service/quicksettings/IQSTileService;->semIsToggleButtonChecked()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    :cond_1
    return-object v2
.end method

.method synthetic lambda$-com_android_systemui_qs_external_CustomTile$CustomDetailAdapter_28850()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->setToggleState(Z)Z

    return-void
.end method

.method public setToggleState(Z)Z
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->mService:Landroid/service/quicksettings/IQSTileService;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    const-class v1, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v1}, Lcom/android/systemui/KnoxStateMonitor;->isBlockedEdmSettingsChange()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->this$0:Lcom/android/systemui/qs/external/CustomTile;

    invoke-static {v1}, Lcom/android/systemui/qs/external/CustomTile;->-wrap0(Lcom/android/systemui/qs/external/CustomTile;)V

    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->this$0:Lcom/android/systemui/qs/external/CustomTile;

    invoke-static {v1}, Lcom/android/systemui/qs/external/CustomTile;->-get0(Lcom/android/systemui/qs/external/CustomTile;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "setToggleState blocked"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->shouldBeUnlock(Z)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->this$0:Lcom/android/systemui/qs/external/CustomTile;

    invoke-static {v1}, Lcom/android/systemui/qs/external/CustomTile;->-get3(Lcom/android/systemui/qs/external/CustomTile;)Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->this$0:Lcom/android/systemui/qs/external/CustomTile;

    invoke-static {v1}, Lcom/android/systemui/qs/external/CustomTile;->-get3(Lcom/android/systemui/qs/external/CustomTile;)Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isSecure()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->this$0:Lcom/android/systemui/qs/external/CustomTile;

    invoke-static {v1}, Lcom/android/systemui/qs/external/CustomTile;->-get3(Lcom/android/systemui/qs/external/CustomTile;)Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->canSkipBouncer()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->this$0:Lcom/android/systemui/qs/external/CustomTile;

    invoke-static {v1}, Lcom/android/systemui/qs/external/CustomTile;->-get5(Lcom/android/systemui/qs/external/CustomTile;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isLockFunctionsEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->this$0:Lcom/android/systemui/qs/external/CustomTile;

    invoke-static {v1}, Lcom/android/systemui/qs/external/CustomTile;->-get2(Lcom/android/systemui/qs/external/CustomTile;)Lcom/android/systemui/qs/QSHost;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/qs/QSHost;->forceCollapsePanels()V

    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->this$0:Lcom/android/systemui/qs/external/CustomTile;

    invoke-static {v1}, Lcom/android/systemui/qs/external/CustomTile;->-get1(Lcom/android/systemui/qs/external/CustomTile;)Lcom/android/systemui/plugins/ActivityStarter;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/qs/external/-$Lambda$CA4QlgMyuUuRvIn6temzm1LPs5M;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/external/-$Lambda$CA4QlgMyuUuRvIn6temzm1LPs5M;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->this$0:Lcom/android/systemui/qs/external/CustomTile;

    invoke-static {v1}, Lcom/android/systemui/qs/external/CustomTile;->-get4(Lcom/android/systemui/qs/external/CustomTile;)Lcom/android/systemui/qs/external/TileServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/qs/external/TileServiceManager;->isActiveTile()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->this$0:Lcom/android/systemui/qs/external/CustomTile;

    invoke-static {v1}, Lcom/android/systemui/qs/external/CustomTile;->-get4(Lcom/android/systemui/qs/external/CustomTile;)Lcom/android/systemui/qs/external/TileServiceManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/external/TileServiceManager;->setBindRequested(Z)V

    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->mService:Landroid/service/quicksettings/IQSTileService;

    invoke-interface {v1}, Landroid/service/quicksettings/IQSTileService;->onStartListening()V

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->this$0:Lcom/android/systemui/qs/external/CustomTile;

    invoke-static {v1}, Lcom/android/systemui/qs/external/CustomTile;->-get0(Lcom/android/systemui/qs/external/CustomTile;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setToggleState state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->mService:Landroid/service/quicksettings/IQSTileService;

    invoke-interface {v1, p1}, Landroid/service/quicksettings/IQSTileService;->semSetToggleButtonChecked(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return p1

    :catch_0
    move-exception v0

    goto :goto_0
.end method
