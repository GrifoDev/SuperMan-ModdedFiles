.class public Landroid/hardware/display/SemWifiDisplayStatus;
.super Ljava/lang/Object;
.source "SemWifiDisplayStatus.java"


# static fields
.field public static final DISPLAY_STATE_CONNECTED:I = 0x2

.field public static final DISPLAY_STATE_CONNECTING:I = 0x1

.field public static final DISPLAY_STATE_DISCONNECTING:I = 0x3

.field public static final DISPLAY_STATE_NOT_CONNECTED:I = 0x0

.field public static final FEATURE_STATE_DISABLED:I = 0x1

.field public static final FEATURE_STATE_OFF:I = 0x2

.field public static final FEATURE_STATE_ON:I = 0x3

.field public static final FEATURE_STATE_UNAVAILABLE:I = 0x0

.field public static final SCREEN_SHARING_STATE_PAUSED:I = 0x7

.field public static final SCREEN_SHARING_STATE_RESUMED:I = 0x6


# instance fields
.field private final mWds:Landroid/hardware/display/WifiDisplayStatus;


# direct methods
.method public constructor <init>(Landroid/hardware/display/WifiDisplayStatus;)V
    .locals 0
    .param p1, "wds"    # Landroid/hardware/display/WifiDisplayStatus;

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Landroid/hardware/display/SemWifiDisplayStatus;->mWds:Landroid/hardware/display/WifiDisplayStatus;

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "wds"    # Landroid/os/Parcelable;

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    instance-of v0, p1, Landroid/hardware/display/WifiDisplayStatus;

    if-eqz v0, :cond_0

    .line 115
    nop

    nop

    .end local p1    # "wds":Landroid/os/Parcelable;
    iput-object p1, p0, Landroid/hardware/display/SemWifiDisplayStatus;->mWds:Landroid/hardware/display/WifiDisplayStatus;

    .line 113
    return-void

    .line 117
    .restart local p1    # "wds":Landroid/os/Parcelable;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "parameter must be WifiDisplayStatus type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getActiveDisplay()Landroid/hardware/display/SemWifiDisplay;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 199
    iget-object v1, p0, Landroid/hardware/display/SemWifiDisplayStatus;->mWds:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    .line 200
    .local v0, "display":Landroid/hardware/display/WifiDisplay;
    if-eqz v0, :cond_0

    .line 201
    new-instance v1, Landroid/hardware/display/SemWifiDisplay;

    invoke-direct {v1, v0}, Landroid/hardware/display/SemWifiDisplay;-><init>(Landroid/hardware/display/WifiDisplay;)V

    return-object v1

    .line 202
    :cond_0
    return-object v2
.end method

.method public getActiveDisplayState()I
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Landroid/hardware/display/SemWifiDisplayStatus;->mWds:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v0

    return v0
.end method

.method public getConnectedState()I
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Landroid/hardware/display/SemWifiDisplayStatus;->mWds:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getConnectedState()I

    move-result v0

    return v0
.end method

.method public getDisplays()[Landroid/hardware/display/SemWifiDisplay;
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 130
    iget-object v6, p0, Landroid/hardware/display/SemWifiDisplayStatus;->mWds:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v6}, Landroid/hardware/display/WifiDisplayStatus;->getDisplays()[Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    .line 134
    .local v1, "displays":[Landroid/hardware/display/WifiDisplay;
    array-length v6, v1

    if-lez v6, :cond_0

    .line 135
    array-length v6, v1

    new-array v4, v6, [Landroid/hardware/display/SemWifiDisplay;

    .line 137
    .local v4, "sWfdArray":[Landroid/hardware/display/SemWifiDisplay;
    const/4 v2, 0x0

    .line 139
    .local v2, "idx":I
    array-length v6, v1

    move v3, v2

    .end local v2    # "idx":I
    .local v3, "idx":I
    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v0, v1, v5

    .line 140
    .local v0, "display":Landroid/hardware/display/WifiDisplay;
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "idx":I
    .restart local v2    # "idx":I
    new-instance v7, Landroid/hardware/display/SemWifiDisplay;

    invoke-direct {v7, v0}, Landroid/hardware/display/SemWifiDisplay;-><init>(Landroid/hardware/display/WifiDisplay;)V

    aput-object v7, v4, v3

    .line 139
    add-int/lit8 v5, v5, 0x1

    move v3, v2

    .end local v2    # "idx":I
    .restart local v3    # "idx":I
    goto :goto_0

    .line 143
    .end local v0    # "display":Landroid/hardware/display/WifiDisplay;
    .end local v3    # "idx":I
    .end local v4    # "sWfdArray":[Landroid/hardware/display/SemWifiDisplay;
    :cond_0
    new-array v4, v5, [Landroid/hardware/display/SemWifiDisplay;

    .line 146
    .restart local v4    # "sWfdArray":[Landroid/hardware/display/SemWifiDisplay;
    :cond_1
    return-object v4
.end method

.method public getFeatureState()I
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Landroid/hardware/display/SemWifiDisplayStatus;->mWds:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getFeatureState()I

    move-result v0

    return v0
.end method

.method public isScanning()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 156
    iget-object v1, p0, Landroid/hardware/display/SemWifiDisplayStatus;->mWds:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplayStatus;->getScanState()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
