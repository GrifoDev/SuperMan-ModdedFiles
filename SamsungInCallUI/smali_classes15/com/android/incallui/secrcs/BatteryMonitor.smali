.class public Lcom/android/incallui/secrcs/BatteryMonitor;
.super Ljava/lang/Object;
.source "BatteryMonitor.java"


# static fields
.field public static final BATTERY_INTENT_FILTER:Landroid/content/IntentFilter;

.field private static final LOG_TAG:Ljava/lang/String; = "BatteryMonitor"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/incallui/secrcs/BatteryMonitor;->BATTERY_INTENT_FILTER:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/android/incallui/secrcs/BatteryMonitor$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/secrcs/BatteryMonitor$1;-><init>(Lcom/android/incallui/secrcs/BatteryMonitor;)V

    iput-object v0, p0, Lcom/android/incallui/secrcs/BatteryMonitor;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 45
    iput-object p1, p0, Lcom/android/incallui/secrcs/BatteryMonitor;->mContext:Landroid/content/Context;

    .line 46
    const-string v0, "BatteryMonitor"

    const-string v1, " BatteryMonitor registered "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    return-void
.end method


# virtual methods
.method public UnregisterBatteryMonitor(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    const-string v0, "BatteryMonitor"

    const-string v1, " BatteryMonitor Unregistered "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    return-void
.end method
