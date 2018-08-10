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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/display/SemWifiDisplayStatus;->mWds:Landroid/hardware/display/WifiDisplayStatus;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p1, Landroid/hardware/display/WifiDisplayStatus;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/hardware/display/WifiDisplayStatus;

    iput-object p1, p0, Landroid/hardware/display/SemWifiDisplayStatus;->mWds:Landroid/hardware/display/WifiDisplayStatus;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "parameter must be WifiDisplayStatus type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getActiveDisplay()Landroid/hardware/display/SemWifiDisplay;
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Landroid/hardware/display/SemWifiDisplayStatus;->mWds:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/hardware/display/SemWifiDisplay;

    invoke-direct {v1, v0}, Landroid/hardware/display/SemWifiDisplay;-><init>(Landroid/hardware/display/WifiDisplay;)V

    return-object v1

    :cond_0
    return-object v2
.end method

.method public getActiveDisplayState()I
    .locals 1

    iget-object v0, p0, Landroid/hardware/display/SemWifiDisplayStatus;->mWds:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v0

    return v0
.end method

.method public getConnectedState()I
    .locals 1

    iget-object v0, p0, Landroid/hardware/display/SemWifiDisplayStatus;->mWds:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getConnectedState()I

    move-result v0

    return v0
.end method

.method public getDisplays()[Landroid/hardware/display/SemWifiDisplay;
    .locals 8

    const/4 v5, 0x0

    iget-object v6, p0, Landroid/hardware/display/SemWifiDisplayStatus;->mWds:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v6}, Landroid/hardware/display/WifiDisplayStatus;->getDisplays()[Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    array-length v6, v1

    if-lez v6, :cond_0

    array-length v6, v1

    new-array v4, v6, [Landroid/hardware/display/SemWifiDisplay;

    const/4 v2, 0x0

    array-length v6, v1

    move v3, v2

    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v0, v1, v5

    add-int/lit8 v2, v3, 0x1

    new-instance v7, Landroid/hardware/display/SemWifiDisplay;

    invoke-direct {v7, v0}, Landroid/hardware/display/SemWifiDisplay;-><init>(Landroid/hardware/display/WifiDisplay;)V

    aput-object v7, v4, v3

    add-int/lit8 v5, v5, 0x1

    move v3, v2

    goto :goto_0

    :cond_0
    new-array v4, v5, [Landroid/hardware/display/SemWifiDisplay;

    :cond_1
    return-object v4
.end method

.method public getFeatureState()I
    .locals 1

    iget-object v0, p0, Landroid/hardware/display/SemWifiDisplayStatus;->mWds:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getFeatureState()I

    move-result v0

    return v0
.end method

.method public getGroupId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/hardware/display/SemWifiDisplayStatus;->mWds:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getSessionInfo()Landroid/hardware/display/WifiDisplaySessionInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplaySessionInfo;->getGroupId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSessionId()I
    .locals 1

    iget-object v0, p0, Landroid/hardware/display/SemWifiDisplayStatus;->mWds:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getSessionInfo()Landroid/hardware/display/WifiDisplaySessionInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplaySessionInfo;->getSessionId()I

    move-result v0

    return v0
.end method

.method public getSessionSummary()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/hardware/display/SemWifiDisplayStatus;->mWds:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getSessionInfo()Landroid/hardware/display/WifiDisplaySessionInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplaySessionInfo;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isScanning()Z
    .locals 2

    const/4 v0, 0x1

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
