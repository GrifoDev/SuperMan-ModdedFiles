.class public Lcom/android/settings/applications/VrListenerSettings;
.super Lcom/android/settings/utils/ManagedServiceSettings;
.source "VrListenerSettings.java"


# static fields
.field private static final CONFIG:Lcom/android/settings/utils/ManagedServiceSettings$Config;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final VR_HELPER_SERVICES:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/settings/applications/VrListenerSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/applications/VrListenerSettings;->TAG:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/applications/VrListenerSettings;->getVrListenerConfig()Lcom/android/settings/utils/ManagedServiceSettings$Config;

    move-result-object v0

    sput-object v0, Lcom/android/settings/applications/VrListenerSettings;->CONFIG:Lcom/android/settings/utils/ManagedServiceSettings$Config;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/utils/ManagedServiceSettings;-><init>()V

    const/16 v0, 0x1e26

    iput v0, p0, Lcom/android/settings/applications/VrListenerSettings;->VR_HELPER_SERVICES:I

    return-void
.end method

.method private static final getVrListenerConfig()Lcom/android/settings/utils/ManagedServiceSettings$Config;
    .locals 2

    new-instance v0, Lcom/android/settings/utils/ManagedServiceSettings$Config;

    invoke-direct {v0}, Lcom/android/settings/utils/ManagedServiceSettings$Config;-><init>()V

    sget-object v1, Lcom/android/settings/applications/VrListenerSettings;->TAG:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/settings/utils/ManagedServiceSettings$Config;->tag:Ljava/lang/String;

    const-string/jumbo v1, "enabled_vr_listeners"

    iput-object v1, v0, Lcom/android/settings/utils/ManagedServiceSettings$Config;->setting:Ljava/lang/String;

    const-string/jumbo v1, "android.service.vr.VrListenerService"

    iput-object v1, v0, Lcom/android/settings/utils/ManagedServiceSettings$Config;->intentAction:Ljava/lang/String;

    const-string/jumbo v1, "android.permission.BIND_VR_LISTENER_SERVICE"

    iput-object v1, v0, Lcom/android/settings/utils/ManagedServiceSettings$Config;->permission:Ljava/lang/String;

    const-string/jumbo v1, "vr listener"

    iput-object v1, v0, Lcom/android/settings/utils/ManagedServiceSettings$Config;->noun:Ljava/lang/String;

    const v1, 0x7f121e06

    iput v1, v0, Lcom/android/settings/utils/ManagedServiceSettings$Config;->warningDialogTitle:I

    const v1, 0x7f121e05

    iput v1, v0, Lcom/android/settings/utils/ManagedServiceSettings$Config;->warningDialogSummary:I

    const v1, 0x7f121325

    iput v1, v0, Lcom/android/settings/utils/ManagedServiceSettings$Config;->emptyText:I

    return-object v0
.end method


# virtual methods
.method protected getConfig()Lcom/android/settings/utils/ManagedServiceSettings$Config;
    .locals 1

    sget-object v0, Lcom/android/settings/applications/VrListenerSettings;->CONFIG:Lcom/android/settings/utils/ManagedServiceSettings$Config;

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x1e26

    return v0
.end method

.method logSpecialPermissionChange(ZLjava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_0

    const/16 v0, 0x304

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/applications/VrListenerSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/applications/VrListenerSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/util/Pair;

    invoke-virtual {v1, v2, v0, p2, v3}, Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;ILjava/lang/String;[Landroid/util/Pair;)V

    return-void

    :cond_0
    const/16 v0, 0x305

    goto :goto_0
.end method

.method protected setEnabled(Landroid/content/ComponentName;Ljava/lang/String;Z)Z
    .locals 1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p3, v0}, Lcom/android/settings/applications/VrListenerSettings;->logSpecialPermissionChange(ZLjava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/utils/ManagedServiceSettings;->setEnabled(Landroid/content/ComponentName;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
