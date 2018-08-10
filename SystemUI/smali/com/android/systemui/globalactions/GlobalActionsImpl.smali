.class public Lcom/android/systemui/globalactions/GlobalActionsImpl;
.super Ljava/lang/Object;
.source "GlobalActionsImpl.java"

# interfaces
.implements Lcom/android/systemui/plugins/GlobalActions;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

.field private mGlobalActions:Lcom/android/systemui/globalactions/GlobalActionsDialog;

.field private final mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mContext:Landroid/content/Context;

    const-class v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    const-class v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    return-void
.end method


# virtual methods
.method public showGlobalActions(Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;)V
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mGlobalActions:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    if-nez v1, :cond_0

    new-instance v0, Landroid/support/v7/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mContext:Landroid/content/Context;

    const v2, 0x1030237

    invoke-direct {v0, v1, v2}, Landroid/support/v7/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    new-instance v1, Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-direct {v1, v0, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog;-><init>(Landroid/content/Context;Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;)V

    iput-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mGlobalActions:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mGlobalActions:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isDeviceProvisioned()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->showDialog(ZZ)V

    return-void
.end method
