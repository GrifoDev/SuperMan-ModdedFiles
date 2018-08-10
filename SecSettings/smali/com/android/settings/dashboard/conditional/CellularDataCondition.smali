.class public Lcom/android/settings/dashboard/conditional/CellularDataCondition;
.super Lcom/android/settings/dashboard/conditional/Condition;
.source "CellularDataCondition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/dashboard/conditional/CellularDataCondition$Receiver;
    }
.end annotation


# static fields
.field private static final DATA_CONNECTION_FILTER:Landroid/content/IntentFilter;


# instance fields
.field private final mReceiver:Lcom/android/settings/dashboard/conditional/CellularDataCondition$Receiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.ANY_DATA_STATE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/dashboard/conditional/CellularDataCondition;->DATA_CONNECTION_FILTER:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/dashboard/conditional/ConditionManager;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/conditional/Condition;-><init>(Lcom/android/settings/dashboard/conditional/ConditionManager;)V

    new-instance v0, Lcom/android/settings/dashboard/conditional/CellularDataCondition$Receiver;

    invoke-direct {v0}, Lcom/android/settings/dashboard/conditional/CellularDataCondition$Receiver;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dashboard/conditional/CellularDataCondition;->mReceiver:Lcom/android/settings/dashboard/conditional/CellularDataCondition$Receiver;

    return-void
.end method


# virtual methods
.method protected getIntentFilter()Landroid/content/IntentFilter;
    .locals 1

    sget-object v0, Lcom/android/settings/dashboard/conditional/CellularDataCondition;->DATA_CONNECTION_FILTER:Landroid/content/IntentFilter;

    return-object v0
.end method

.method protected getReceiver()Landroid/content/BroadcastReceiver;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/CellularDataCondition;->mReceiver:Lcom/android/settings/dashboard/conditional/CellularDataCondition$Receiver;

    return-object v0
.end method

.method public refreshState()V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/settings/dashboard/conditional/CellularDataCondition;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v2}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/android/settings/dashboard/conditional/CellularDataCondition;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v2}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_1

    :cond_0
    invoke-virtual {p0, v4}, Lcom/android/settings/dashboard/conditional/CellularDataCondition;->setActive(Z)V

    return-void

    :cond_1
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/settings/dashboard/conditional/CellularDataCondition;->setActive(Z)V

    return-void
.end method
