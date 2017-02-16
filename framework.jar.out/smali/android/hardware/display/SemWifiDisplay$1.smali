.class final Landroid/hardware/display/SemWifiDisplay$1;
.super Ljava/lang/Object;
.source "SemWifiDisplay.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/SemWifiDisplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/hardware/display/SemWifiDisplay;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/display/SemWifiDisplay;
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 62
    const-class v4, Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/WifiDisplay;

    .line 63
    .local v0, "display":Landroid/hardware/display/WifiDisplay;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 64
    .local v3, "port":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    .line 65
    .local v2, "isPinConnection":Z
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    .line 66
    .local v1, "isPersistentMode":Z
    :goto_1
    new-instance v4, Landroid/hardware/display/SemWifiDisplay;

    invoke-direct {v4, v0, v3, v2, v1}, Landroid/hardware/display/SemWifiDisplay;-><init>(Landroid/hardware/display/WifiDisplay;Ljava/lang/String;ZZ)V

    return-object v4

    .line 64
    .end local v1    # "isPersistentMode":Z
    .end local v2    # "isPinConnection":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "isPinConnection":Z
    goto :goto_0

    .line 65
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "isPersistentMode":Z
    goto :goto_1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Landroid/hardware/display/SemWifiDisplay$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/display/SemWifiDisplay;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/hardware/display/SemWifiDisplay;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 70
    if-nez p1, :cond_0

    sget-object v0, Landroid/hardware/display/SemWifiDisplay;->EMPTY_ARRAY:[Landroid/hardware/display/SemWifiDisplay;

    :goto_0
    return-object v0

    :cond_0
    new-array v0, p1, [Landroid/hardware/display/SemWifiDisplay;

    goto :goto_0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Landroid/hardware/display/SemWifiDisplay$1;->newArray(I)[Landroid/hardware/display/SemWifiDisplay;

    move-result-object v0

    return-object v0
.end method
