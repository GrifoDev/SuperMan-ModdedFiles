.class public final Landroid/hardware/display/WifiDisplayStatus;
.super Ljava/lang/Object;
.source "WifiDisplayStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/display/WifiDisplayStatus$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/display/WifiDisplayStatus;",
            ">;"
        }
    .end annotation
.end field

.field public static final DISPLAY_STATE_CONNECTED:I = 0x2

.field public static final DISPLAY_STATE_CONNECTING:I = 0x1

.field public static final DISPLAY_STATE_DISCONNECTING:I = 0x3

.field public static final DISPLAY_STATE_NOT_CONNECTED:I = 0x0

.field public static final FEATURE_STATE_DISABLED:I = 0x1

.field public static final FEATURE_STATE_OFF:I = 0x2

.field public static final FEATURE_STATE_ON:I = 0x3

.field public static final FEATURE_STATE_UNAVAILABLE:I = 0x0

.field public static final SCAN_STATE_NOT_SCANNING:I = 0x0

.field public static final SCAN_STATE_SCANNING:I = 0x1


# instance fields
.field private final mActiveDisplay:Landroid/hardware/display/WifiDisplay;

.field private final mActiveDisplayState:I

.field private mConnectedState:I

.field private final mDisplays:[Landroid/hardware/display/WifiDisplay;

.field private final mFeatureState:I

.field private final mScanState:I

.field private final mSessionInfo:Landroid/hardware/display/WifiDisplaySessionInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/display/WifiDisplayStatus$1;

    invoke-direct {v0}, Landroid/hardware/display/WifiDisplayStatus$1;-><init>()V

    sput-object v0, Landroid/hardware/display/WifiDisplayStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    const/4 v4, 0x0

    const/4 v1, 0x0

    sget-object v5, Landroid/hardware/display/WifiDisplay;->EMPTY_ARRAY:[Landroid/hardware/display/WifiDisplay;

    move-object v0, p0

    move v2, v1

    move v3, v1

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/hardware/display/WifiDisplayStatus;-><init>(IIILandroid/hardware/display/WifiDisplay;[Landroid/hardware/display/WifiDisplay;Landroid/hardware/display/WifiDisplaySessionInfo;)V

    return-void
.end method

.method public constructor <init>(IIILandroid/hardware/display/WifiDisplay;[Landroid/hardware/display/WifiDisplay;Landroid/hardware/display/WifiDisplaySessionInfo;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p5, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "displays must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Landroid/hardware/display/WifiDisplayStatus;->mFeatureState:I

    iput p2, p0, Landroid/hardware/display/WifiDisplayStatus;->mScanState:I

    iput p3, p0, Landroid/hardware/display/WifiDisplayStatus;->mActiveDisplayState:I

    iput-object p4, p0, Landroid/hardware/display/WifiDisplayStatus;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    iput-object p5, p0, Landroid/hardware/display/WifiDisplayStatus;->mDisplays:[Landroid/hardware/display/WifiDisplay;

    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/display/WifiDisplayStatus;->mConnectedState:I

    if-eqz p6, :cond_1

    :goto_0
    iput-object p6, p0, Landroid/hardware/display/WifiDisplayStatus;->mSessionInfo:Landroid/hardware/display/WifiDisplaySessionInfo;

    return-void

    :cond_1
    new-instance p6, Landroid/hardware/display/WifiDisplaySessionInfo;

    invoke-direct {p6}, Landroid/hardware/display/WifiDisplaySessionInfo;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getActiveDisplay()Landroid/hardware/display/WifiDisplay;
    .locals 1

    iget-object v0, p0, Landroid/hardware/display/WifiDisplayStatus;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    return-object v0
.end method

.method public getActiveDisplayState()I
    .locals 1

    iget v0, p0, Landroid/hardware/display/WifiDisplayStatus;->mActiveDisplayState:I

    return v0
.end method

.method public getConnectedState()I
    .locals 1

    iget v0, p0, Landroid/hardware/display/WifiDisplayStatus;->mConnectedState:I

    return v0
.end method

.method public getDisplays()[Landroid/hardware/display/WifiDisplay;
    .locals 1

    iget-object v0, p0, Landroid/hardware/display/WifiDisplayStatus;->mDisplays:[Landroid/hardware/display/WifiDisplay;

    return-object v0
.end method

.method public getFeatureState()I
    .locals 1

    iget v0, p0, Landroid/hardware/display/WifiDisplayStatus;->mFeatureState:I

    return v0
.end method

.method public getScanState()I
    .locals 1

    iget v0, p0, Landroid/hardware/display/WifiDisplayStatus;->mScanState:I

    return v0
.end method

.method public getSessionInfo()Landroid/hardware/display/WifiDisplaySessionInfo;
    .locals 1

    iget-object v0, p0, Landroid/hardware/display/WifiDisplayStatus;->mSessionInfo:Landroid/hardware/display/WifiDisplaySessionInfo;

    return-object v0
.end method

.method public setConnectedState(I)V
    .locals 0

    iput p1, p0, Landroid/hardware/display/WifiDisplayStatus;->mConnectedState:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "WifiDisplayStatus{featureState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/WifiDisplayStatus;->mFeatureState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", scanState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/WifiDisplayStatus;->mScanState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", activeDisplayState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/WifiDisplayStatus;->mActiveDisplayState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", activeDisplay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/display/WifiDisplayStatus;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", displays="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/display/WifiDisplayStatus;->mDisplays:[Landroid/hardware/display/WifiDisplay;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", sessionInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/display/WifiDisplayStatus;->mSessionInfo:Landroid/hardware/display/WifiDisplaySessionInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", connectedState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/WifiDisplayStatus;->mConnectedState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/4 v1, 0x0

    iget v2, p0, Landroid/hardware/display/WifiDisplayStatus;->mFeatureState:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget v2, p0, Landroid/hardware/display/WifiDisplayStatus;->mScanState:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget v2, p0, Landroid/hardware/display/WifiDisplayStatus;->mActiveDisplayState:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/hardware/display/WifiDisplayStatus;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/hardware/display/WifiDisplayStatus;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v2, p1, p2}, Landroid/hardware/display/WifiDisplay;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_0
    iget-object v2, p0, Landroid/hardware/display/WifiDisplayStatus;->mDisplays:[Landroid/hardware/display/WifiDisplay;

    array-length v2, v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/hardware/display/WifiDisplayStatus;->mDisplays:[Landroid/hardware/display/WifiDisplay;

    array-length v3, v2

    :goto_1
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    invoke-virtual {v0, p1, p2}, Landroid/hardware/display/WifiDisplay;->writeToParcel(Landroid/os/Parcel;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/hardware/display/WifiDisplayStatus;->mSessionInfo:Landroid/hardware/display/WifiDisplaySessionInfo;

    invoke-virtual {v1, p1, p2}, Landroid/hardware/display/WifiDisplaySessionInfo;->writeToParcel(Landroid/os/Parcel;I)V

    iget v1, p0, Landroid/hardware/display/WifiDisplayStatus;->mConnectedState:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
