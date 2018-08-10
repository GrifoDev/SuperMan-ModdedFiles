.class final enum Lcom/samsung/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;
.super Ljava/lang/Enum;
.source "BtSettingsGuider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/guide/BtSettingsGuider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "BluetoothBroadcastActions"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;

.field public static final enum BOND_STATE_CHANGED:Lcom/samsung/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;

.field public static final enum DISCOVERY_FINISHED:Lcom/samsung/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;

.field public static final enum DISCOVERY_STARTED:Lcom/samsung/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;

.field public static final enum STATE_CHANGED:Lcom/samsung/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;

.field static final sFilter:Landroid/content/IntentFilter;

.field private static final sMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAction:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v1, 0x0

    new-instance v2, Lcom/samsung/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;

    const-string/jumbo v3, "STATE_CHANGED"

    const-string/jumbo v4, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v2, v3, v1, v4}, Lcom/samsung/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/samsung/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;->STATE_CHANGED:Lcom/samsung/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;

    new-instance v2, Lcom/samsung/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;

    const-string/jumbo v3, "DISCOVERY_STARTED"

    const-string/jumbo v4, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    invoke-direct {v2, v3, v5, v4}, Lcom/samsung/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/samsung/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;->DISCOVERY_STARTED:Lcom/samsung/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;

    new-instance v2, Lcom/samsung/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;

    const-string/jumbo v3, "DISCOVERY_FINISHED"

    const-string/jumbo v4, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-direct {v2, v3, v6, v4}, Lcom/samsung/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/samsung/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;->DISCOVERY_FINISHED:Lcom/samsung/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;

    new-instance v2, Lcom/samsung/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;

    const-string/jumbo v3, "BOND_STATE_CHANGED"

    const-string/jumbo v4, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-direct {v2, v3, v7, v4}, Lcom/samsung/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/samsung/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;->BOND_STATE_CHANGED:Lcom/samsung/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;

    const/4 v2, 0x4

    new-array v2, v2, [Lcom/samsung/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;

    sget-object v3, Lcom/samsung/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;->STATE_CHANGED:Lcom/samsung/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;

    aput-object v3, v2, v1

    sget-object v3, Lcom/samsung/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;->DISCOVERY_STARTED:Lcom/samsung/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;

    aput-object v3, v2, v5

    sget-object v3, Lcom/samsung/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;->DISCOVERY_FINISHED:Lcom/samsung/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;

    aput-object v3, v2, v6

    sget-object v3, Lcom/samsung/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;->BOND_STATE_CHANGED:Lcom/samsung/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;

    aput-object v3, v2, v7

    sput-object v2, Lcom/samsung/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;->$VALUES:[Lcom/samsung/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/samsung/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;->sMap:Ljava/util/HashMap;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    sput-object v2, Lcom/samsung/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;->sFilter:Landroid/content/IntentFilter;

    invoke-static {}, Lcom/samsung/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;->values()[Lcom/samsung/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;

    move-result-object v2

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    sget-object v4, Lcom/samsung/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;->sMap:Ljava/util/HashMap;

    iget-object v5, v0, Lcom/samsung/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;->mAction:Ljava/lang/String;

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/samsung/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;->sFilter:Landroid/content/IntentFilter;

    iget-object v5, v0, Lcom/samsung/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;->mAction:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;->mAction:Ljava/lang/String;

    return-void
.end method

.method static fromAction(Ljava/lang/String;)Lcom/samsung/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;->sMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;
    .locals 1

    const-class v0, Lcom/samsung/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;->$VALUES:[Lcom/samsung/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;

    return-object v0
.end method
