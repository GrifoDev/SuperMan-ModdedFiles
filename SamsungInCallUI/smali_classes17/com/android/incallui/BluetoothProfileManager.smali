.class public Lcom/android/incallui/BluetoothProfileManager;
.super Ljava/lang/Object;
.source "BluetoothProfileManager.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# instance fields
.field private mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/incallui/BluetoothProfileManager;->mContext:Landroid/content/Context;

    .line 36
    return-void
.end method


# virtual methods
.method public closeBluetoothProfileProxy()V
    .locals 3

    .prologue
    .line 60
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 61
    .local v0, "btAdapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    .line 62
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/incallui/BluetoothProfileManager;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 63
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/incallui/BluetoothProfileManager;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 65
    :cond_0
    return-void
.end method

.method public getBluetoothHeadset()Landroid/bluetooth/BluetoothHeadset;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/incallui/BluetoothProfileManager;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object v0
.end method

.method public initBluetoothProfileProxy()V
    .locals 3

    .prologue
    .line 53
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 54
    .local v0, "btAdapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    iget-object v1, p0, Lcom/android/incallui/BluetoothProfileManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 57
    :cond_0
    return-void
.end method

.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 1
    .param p1, "profile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/BluetoothProfile;

    .prologue
    .line 40
    const-string v0, "bluetooth onServiceConnected"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    check-cast p2, Landroid/bluetooth/BluetoothHeadset;

    .end local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    iput-object p2, p0, Lcom/android/incallui/BluetoothProfileManager;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 42
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 1
    .param p1, "profile"    # I

    .prologue
    .line 46
    const-string v0, "bluetooth onServiceDisconnected"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/BluetoothProfileManager;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 48
    return-void
.end method
