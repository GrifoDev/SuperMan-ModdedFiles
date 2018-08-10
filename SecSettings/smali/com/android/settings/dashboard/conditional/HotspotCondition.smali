.class public Lcom/android/settings/dashboard/conditional/HotspotCondition;
.super Lcom/android/settings/dashboard/conditional/Condition;
.source "HotspotCondition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/dashboard/conditional/HotspotCondition$Receiver;
    }
.end annotation


# static fields
.field private static final WIFI_AP_STATE_FILTER:Landroid/content/IntentFilter;


# instance fields
.field private final mReceiver:Lcom/android/settings/dashboard/conditional/HotspotCondition$Receiver;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/dashboard/conditional/HotspotCondition;->WIFI_AP_STATE_FILTER:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/dashboard/conditional/ConditionManager;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/conditional/Condition;-><init>(Lcom/android/settings/dashboard/conditional/ConditionManager;)V

    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/HotspotCondition;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/dashboard/conditional/HotspotCondition;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance v0, Lcom/android/settings/dashboard/conditional/HotspotCondition$Receiver;

    invoke-direct {v0}, Lcom/android/settings/dashboard/conditional/HotspotCondition$Receiver;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dashboard/conditional/HotspotCondition;->mReceiver:Lcom/android/settings/dashboard/conditional/HotspotCondition$Receiver;

    return-void
.end method


# virtual methods
.method protected getIntentFilter()Landroid/content/IntentFilter;
    .locals 1

    sget-object v0, Lcom/android/settings/dashboard/conditional/HotspotCondition;->WIFI_AP_STATE_FILTER:Landroid/content/IntentFilter;

    return-object v0
.end method

.method protected getReceiver()Landroid/content/BroadcastReceiver;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/HotspotCondition;->mReceiver:Lcom/android/settings/dashboard/conditional/HotspotCondition$Receiver;

    return-object v0
.end method

.method public refreshState()V
    .locals 2

    iget-object v1, p0, Lcom/android/settings/dashboard/conditional/HotspotCondition;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/conditional/HotspotCondition;->setActive(Z)V

    return-void
.end method
