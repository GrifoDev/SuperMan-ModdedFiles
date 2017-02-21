.class public final Landroid/location/GnssNavigationMessageEvent;
.super Ljava/lang/Object;
.source "GnssNavigationMessageEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/GnssNavigationMessageEvent$1;,
        Landroid/location/GnssNavigationMessageEvent$Callback;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/location/GnssNavigationMessageEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATUS_GNSS_LOCATION_DISABLED:I = 0x2

.field public static final STATUS_NOT_SUPPORTED:I = 0x0

.field public static final STATUS_READY:I = 0x1


# instance fields
.field private final mNavigationMessage:Landroid/location/GnssNavigationMessage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/location/GnssNavigationMessageEvent$1;

    invoke-direct {v0}, Landroid/location/GnssNavigationMessageEvent$1;-><init>()V

    sput-object v0, Landroid/location/GnssNavigationMessageEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/location/GnssNavigationMessage;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/security/InvalidParameterException;

    const-string/jumbo v1, "Parameter \'message\' must not be null."

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Landroid/location/GnssNavigationMessageEvent;->mNavigationMessage:Landroid/location/GnssNavigationMessage;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getNavigationMessage()Landroid/location/GnssNavigationMessage;
    .locals 1

    iget-object v0, p0, Landroid/location/GnssNavigationMessageEvent;->mNavigationMessage:Landroid/location/GnssNavigationMessage;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[ GnssNavigationMessageEvent:\n\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/location/GnssNavigationMessageEvent;->mNavigationMessage:Landroid/location/GnssNavigationMessage;

    invoke-virtual {v1}, Landroid/location/GnssNavigationMessage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\n]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/location/GnssNavigationMessageEvent;->mNavigationMessage:Landroid/location/GnssNavigationMessage;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
