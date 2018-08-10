.class public final Landroid/net/wifi/aware/Characteristics;
.super Ljava/lang/Object;
.source "Characteristics.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/aware/Characteristics$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/aware/Characteristics;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_MAX_MATCH_FILTER_LENGTH:Ljava/lang/String; = "key_max_match_filter_length"

.field public static final KEY_MAX_SERVICE_NAME_LENGTH:Ljava/lang/String; = "key_max_service_name_length"

.field public static final KEY_MAX_SERVICE_SPECIFIC_INFO_LENGTH:Ljava/lang/String; = "key_max_service_specific_info_length"


# instance fields
.field private mCharacteristics:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/net/wifi/aware/Characteristics$1;

    invoke-direct {v0}, Landroid/net/wifi/aware/Characteristics$1;-><init>()V

    sput-object v0, Landroid/net/wifi/aware/Characteristics;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/aware/Characteristics;->mCharacteristics:Landroid/os/Bundle;

    iput-object p1, p0, Landroid/net/wifi/aware/Characteristics;->mCharacteristics:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxMatchFilterLength()I
    .locals 2

    iget-object v0, p0, Landroid/net/wifi/aware/Characteristics;->mCharacteristics:Landroid/os/Bundle;

    const-string/jumbo v1, "key_max_match_filter_length"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getMaxServiceNameLength()I
    .locals 2

    iget-object v0, p0, Landroid/net/wifi/aware/Characteristics;->mCharacteristics:Landroid/os/Bundle;

    const-string/jumbo v1, "key_max_service_name_length"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getMaxServiceSpecificInfoLength()I
    .locals 2

    iget-object v0, p0, Landroid/net/wifi/aware/Characteristics;->mCharacteristics:Landroid/os/Bundle;

    const-string/jumbo v1, "key_max_service_specific_info_length"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/aware/Characteristics;->mCharacteristics:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
