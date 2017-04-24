.class public final Lcom/android/settingslib/bluetooth/PanProfile;
.super Ljava/lang/Object;
.source "PanProfile.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/bluetooth/PanProfile$1;,
        Lcom/android/settingslib/bluetooth/PanProfile$PanServiceListener;
    }
.end annotation


# static fields
.field public static final PAN_ROLE:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static V:Z


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

.field private final mDeviceRoleMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIsProfileReady:Z

.field private final mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

.field private final mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

.field private mService:Landroid/bluetooth/BluetoothPan;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/settingslib/bluetooth/PanProfile;->V:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/settingslib/bluetooth/PanProfile;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/PanProfile;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settingslib/bluetooth/PanProfile;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/PanProfile;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settingslib/bluetooth/PanProfile;)Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/PanProfile;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/settingslib/bluetooth/PanProfile;)Landroid/bluetooth/BluetoothPan;
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/PanProfile;->mService:Landroid/bluetooth/BluetoothPan;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settingslib/bluetooth/PanProfile;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settingslib/bluetooth/PanProfile;->mIsProfileReady:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/settingslib/bluetooth/PanProfile;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/bluetooth/PanProfile;->mService:Landroid/bluetooth/BluetoothPan;

    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settingslib/bluetooth/PanProfile;->V:Z

    new-instance v0, Lcom/android/settingslib/bluetooth/PanProfile$1;

    invoke-direct {v0}, Lcom/android/settingslib/bluetooth/PanProfile$1;-><init>()V

    sput-object v0, Lcom/android/settingslib/bluetooth/PanProfile;->PAN_ROLE:Ljava/util/HashSet;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/bluetooth/PanProfile;->mDeviceRoleMap:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/android/settingslib/bluetooth/PanProfile;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settingslib/bluetooth/PanProfile;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    iput-object p3, p0, Lcom/android/settingslib/bluetooth/PanProfile;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    iput-object p4, p0, Lcom/android/settingslib/bluetooth/PanProfile;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/PanProfile;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/settingslib/bluetooth/PanProfile$PanServiceListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settingslib/bluetooth/PanProfile$PanServiceListener;-><init>(Lcom/android/settingslib/bluetooth/PanProfile;Lcom/android/settingslib/bluetooth/PanProfile$PanServiceListener;)V

    const/4 v2, 0x5

    invoke-virtual {p2, v0, v1, v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)V

    return-void
.end method


# virtual methods
.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 10

    const/4 v8, 0x1

    const/4 v9, 0x0

    iget-object v6, p0, Lcom/android/settingslib/bluetooth/PanProfile;->mService:Landroid/bluetooth/BluetoothPan;

    if-nez v6, :cond_0

    return v9

    :cond_0
    iget-object v6, p0, Lcom/android/settingslib/bluetooth/PanProfile;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "connectivity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v8}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v6

    sget-object v7, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v6, v7, :cond_1

    new-instance v5, Landroid/view/ContextThemeWrapper;

    iget-object v6, p0, Lcom/android/settingslib/bluetooth/PanProfile;->mContext:Landroid/content/Context;

    const v7, 0x103012b

    invoke-direct {v5, v6, v7}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    sget v6, Lcom/android/settingslib/R$string;->bluetooth_tethering_cannot_connect_while_connected_to_wifi:I

    invoke-static {v5, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    return v9

    :cond_1
    iget-object v6, p0, Lcom/android/settingslib/bluetooth/PanProfile;->mService:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothPan;->getConnectedDevices()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    iget-object v6, p0, Lcom/android/settingslib/bluetooth/PanProfile;->mService:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v6, v2}, Landroid/bluetooth/BluetoothPan;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/PanProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v6

    if-nez v6, :cond_4

    sget-boolean v6, Lcom/android/settingslib/bluetooth/Utils;->DEBUG:Z

    if-eqz v6, :cond_3

    const-string/jumbo v6, "PanProfile"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Connect :: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v6, p0, Lcom/android/settingslib/bluetooth/PanProfile;->mService:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v6, p1}, Landroid/bluetooth/BluetoothPan;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v6

    return v6

    :cond_4
    sget-boolean v6, Lcom/android/settingslib/bluetooth/Utils;->DEBUG:Z

    if-eqz v6, :cond_5

    const-string/jumbo v6, "PanProfile"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Connect :: Can\'t process connect, device("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ") is connecting already"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return v9
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/PanProfile;->mService:Landroid/bluetooth/BluetoothPan;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/PanProfile;->mService:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothPan;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method

.method protected finalize()V
    .locals 4

    sget-boolean v1, Lcom/android/settingslib/bluetooth/PanProfile;->V:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "PanProfile"

    const-string/jumbo v2, "finalize()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/PanProfile;->mService:Landroid/bluetooth/BluetoothPan;

    if-eqz v1, :cond_1

    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/PanProfile;->mService:Landroid/bluetooth/BluetoothPan;

    const/4 v3, 0x5

    invoke-virtual {v1, v3, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settingslib/bluetooth/PanProfile;->mService:Landroid/bluetooth/BluetoothPan;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "PanProfile"

    const-string/jumbo v2, "Error cleaning up PAN proxy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/PanProfile;->mService:Landroid/bluetooth/BluetoothPan;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/PanProfile;->mService:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothPan;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    return v0
.end method

.method public getDrawableResource(Landroid/bluetooth/BluetoothClass;)I
    .locals 1

    sget v0, Lcom/android/settingslib/R$drawable;->list_ic_bluetooth_pan_network:I

    return v0
.end method

.method public getNameResource(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/PanProfile;->isLocalRoleNap(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/android/settingslib/R$string;->bluetooth_profile_pan_nap:I

    return v0

    :cond_0
    sget v0, Lcom/android/settingslib/R$string;->bluetooth_profile_pan:I

    return v0
.end method

.method public getNameResourceTts(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/PanProfile;->isLocalRoleNap(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/android/settingslib/R$string;->bluetooth_profile_pan_nap:I

    return v0

    :cond_0
    sget v0, Lcom/android/settingslib/R$string;->bluetooth_profile_pan:I

    return v0
.end method

.method public getOrdinal()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public getPreferred(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getSummaryResourceForDevice(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2

    iget-object v1, p0, Lcom/android/settingslib/bluetooth/PanProfile;->mService:Landroid/bluetooth/BluetoothPan;

    if-nez v1, :cond_0

    sget v1, Lcom/android/settingslib/R$string;->bluetooth_pan_profile_summary_use_for:I

    return v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/PanProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-static {v0}, Lcom/android/settingslib/bluetooth/Utils;->getConnectionStateSummary(I)I

    move-result v1

    return v1

    :pswitch_1
    sget v1, Lcom/android/settingslib/R$string;->bluetooth_pan_profile_summary_use_for:I

    return v1

    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/PanProfile;->isLocalRoleNap(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Lcom/android/settingslib/R$string;->bluetooth_pan_nap_profile_summary_connected:I

    return v1

    :cond_1
    sget v1, Lcom/android/settingslib/R$string;->bluetooth_pan_user_profile_summary_connected:I

    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public isAutoConnectable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isConnectable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method isLocalRoleNap(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/PanProfile;->mDeviceRoleMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/PanProfile;->mDeviceRoleMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    return v2
.end method

.method public isPreferred(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isProfileReady()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settingslib/bluetooth/PanProfile;->mIsProfileReady:Z

    return v0
.end method

.method setLocalRole(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/PanProfile;->mDeviceRoleMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/PanProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/PanProfile;->mDeviceRoleMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/PanProfile;->mDeviceRoleMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "PAN"

    return-object v0
.end method
