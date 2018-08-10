.class public Lcom/android/settings/dashboard/conditional/AirplaneModeCondition;
.super Lcom/android/settings/dashboard/conditional/Condition;
.source "AirplaneModeCondition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/dashboard/conditional/AirplaneModeCondition$Receiver;
    }
.end annotation


# static fields
.field private static final AIRPLANE_MODE_FILTER:Landroid/content/IntentFilter;

.field public static TAG:Ljava/lang/String;


# instance fields
.field private final mReceiver:Lcom/android/settings/dashboard/conditional/AirplaneModeCondition$Receiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "APM_Condition"

    sput-object v0, Lcom/android/settings/dashboard/conditional/AirplaneModeCondition;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/dashboard/conditional/AirplaneModeCondition;->AIRPLANE_MODE_FILTER:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/dashboard/conditional/ConditionManager;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/conditional/Condition;-><init>(Lcom/android/settings/dashboard/conditional/ConditionManager;)V

    new-instance v0, Lcom/android/settings/dashboard/conditional/AirplaneModeCondition$Receiver;

    invoke-direct {v0}, Lcom/android/settings/dashboard/conditional/AirplaneModeCondition$Receiver;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dashboard/conditional/AirplaneModeCondition;->mReceiver:Lcom/android/settings/dashboard/conditional/AirplaneModeCondition$Receiver;

    return-void
.end method


# virtual methods
.method protected getIntentFilter()Landroid/content/IntentFilter;
    .locals 1

    sget-object v0, Lcom/android/settings/dashboard/conditional/AirplaneModeCondition;->AIRPLANE_MODE_FILTER:Landroid/content/IntentFilter;

    return-object v0
.end method

.method protected getReceiver()Landroid/content/BroadcastReceiver;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/AirplaneModeCondition;->mReceiver:Lcom/android/settings/dashboard/conditional/AirplaneModeCondition$Receiver;

    return-object v0
.end method

.method public refreshState()V
    .locals 2

    sget-object v0, Lcom/android/settings/dashboard/conditional/AirplaneModeCondition;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "APM condition refreshed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/AirplaneModeCondition;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settingslib/WirelessUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/conditional/AirplaneModeCondition;->setActive(Z)V

    return-void
.end method

.method protected setActive(Z)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/conditional/Condition;->setActive(Z)V

    sget-object v0, Lcom/android/settings/dashboard/conditional/AirplaneModeCondition;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setActive was called with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
