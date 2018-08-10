.class public Landroid/content/pm/PackageInstaller$SessionParams;
.super Ljava/lang/Object;
.source "PackageInstaller.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageInstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SessionParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/PackageInstaller$SessionParams$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/pm/PackageInstaller$SessionParams;",
            ">;"
        }
    .end annotation
.end field

.field public static final MODE_FULL_INSTALL:I = 0x1

.field public static final MODE_INHERIT_EXISTING:I = 0x2

.field public static final MODE_INVALID:I = -0x1

.field public static final UID_UNKNOWN:I = -0x1


# instance fields
.field public abiOverride:Ljava/lang/String;

.field public appIcon:Landroid/graphics/Bitmap;

.field public appIconLastModified:J

.field public appLabel:Ljava/lang/String;

.field public appPackageName:Ljava/lang/String;

.field public grantedRuntimePermissions:[Ljava/lang/String;

.field public installFlags:I

.field public installLocation:I

.field public installReason:I

.field public mode:I

.field public originatingUid:I

.field public originatingUri:Landroid/net/Uri;

.field public referrerUri:Landroid/net/Uri;

.field public sizeBytes:J

.field public volumeUuid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/content/pm/PackageInstaller$SessionParams$1;

    invoke-direct {v0}, Landroid/content/pm/PackageInstaller$SessionParams$1;-><init>()V

    sput-object v0, Landroid/content/pm/PackageInstaller$SessionParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    const-wide/16 v2, -0x1

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    const/4 v0, 0x1

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    iput-wide v2, p0, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    iput-wide v2, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appIconLastModified:J

    iput v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUid:I

    iput p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    const-wide/16 v4, -0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    const/4 v0, 0x1

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    iput-wide v4, p0, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    iput-wide v4, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appIconLastModified:J

    iput v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appLabel:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUid:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->referrerUri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->grantedRuntimePermissions:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 4

    const-string/jumbo v0, "mode"

    iget v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "installFlags"

    iget v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printHexPair(Ljava/lang/String;I)V

    const-string/jumbo v0, "installLocation"

    iget v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "sizeBytes"

    iget-wide v2, p0, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "appPackageName"

    iget-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v1, "appIcon"

    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "appLabel"

    iget-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appLabel:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "originatingUri"

    iget-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "originatingUid"

    iget v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "referrerUri"

    iget-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->referrerUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "abiOverride"

    iget-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "volumeUuid"

    iget-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "grantedRuntimePermissions"

    iget-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->grantedRuntimePermissions:[Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public semSetInstallFlagsSkipDexOptimization()V
    .locals 2

    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v1, 0x100000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    return-void
.end method

.method public setAllocateAggressive(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    goto :goto_0
.end method

.method public setAllowDowngrade(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    goto :goto_0
.end method

.method public setAppIcon(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setAppLabel(Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iput-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appLabel:Ljava/lang/String;

    return-void
.end method

.method public setAppPackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    return-void
.end method

.method public setDontKillApp(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    goto :goto_0
.end method

.method public setGrantedRuntimePermissions([Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    iput-object p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->grantedRuntimePermissions:[Ljava/lang/String;

    return-void
.end method

.method public setInstallAsInstantApp(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    goto :goto_0
.end method

.method public setInstallFlagsExternal()V
    .locals 1

    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    return-void
.end method

.method public setInstallFlagsForcePermissionPrompt()V
    .locals 1

    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    return-void
.end method

.method public setInstallFlagsInternal()V
    .locals 1

    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    return-void
.end method

.method public setInstallLocation(I)V
    .locals 0

    iput p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    return-void
.end method

.method public setInstallReason(I)V
    .locals 0

    iput p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    return-void
.end method

.method public setOriginatingUid(I)V
    .locals 0

    iput p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUid:I

    return-void
.end method

.method public setOriginatingUri(Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUri:Landroid/net/Uri;

    return-void
.end method

.method public setReferrerUri(Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->referrerUri:Landroid/net/Uri;

    return-void
.end method

.method public setSize(J)V
    .locals 1

    iput-wide p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appLabel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->referrerUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->grantedRuntimePermissions:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    return-void
.end method
