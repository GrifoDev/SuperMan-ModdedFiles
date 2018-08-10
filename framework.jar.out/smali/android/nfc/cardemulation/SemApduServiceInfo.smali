.class public final Landroid/nfc/cardemulation/SemApduServiceInfo;
.super Ljava/lang/Object;
.source "SemApduServiceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field private final mApduServiceInfo:Landroid/nfc/cardemulation/ApduServiceInfo;


# direct methods
.method private constructor <init>(Landroid/nfc/cardemulation/ApduServiceInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/nfc/cardemulation/SemApduServiceInfo;->mApduServiceInfo:Landroid/nfc/cardemulation/ApduServiceInfo;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBannerName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/nfc/cardemulation/SemApduServiceInfo;->mApduServiceInfo:Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-virtual {v0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getBannerName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getComponent()Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Landroid/nfc/cardemulation/SemApduServiceInfo;->mApduServiceInfo:Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-virtual {v0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/nfc/cardemulation/SemApduServiceInfo;->mApduServiceInfo:Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-virtual {v0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSettingsActivityName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/nfc/cardemulation/SemApduServiceInfo;->mApduServiceInfo:Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-virtual {v0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getSettingsActivityName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isOnHost()Z
    .locals 1

    iget-object v0, p0, Landroid/nfc/cardemulation/SemApduServiceInfo;->mApduServiceInfo:Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-virtual {v0}, Landroid/nfc/cardemulation/ApduServiceInfo;->isOnHost()Z

    move-result v0

    return v0
.end method

.method public isSelectedOtherService()Z
    .locals 1

    iget-object v0, p0, Landroid/nfc/cardemulation/SemApduServiceInfo;->mApduServiceInfo:Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-virtual {v0}, Landroid/nfc/cardemulation/ApduServiceInfo;->isSelectedOtherService()Z

    move-result v0

    return v0
.end method

.method public loadAppLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/nfc/cardemulation/SemApduServiceInfo;->mApduServiceInfo:Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-virtual {v0, p1}, Landroid/nfc/cardemulation/ApduServiceInfo;->loadAppLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public loadBanner(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/nfc/cardemulation/SemApduServiceInfo;->mApduServiceInfo:Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-virtual {v0, p1}, Landroid/nfc/cardemulation/ApduServiceInfo;->loadBanner(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/nfc/cardemulation/SemApduServiceInfo;->mApduServiceInfo:Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-virtual {v0, p1}, Landroid/nfc/cardemulation/ApduServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/nfc/cardemulation/SemApduServiceInfo;->mApduServiceInfo:Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-virtual {v0, p1, p2}, Landroid/nfc/cardemulation/ApduServiceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
