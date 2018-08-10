.class public final enum Lcom/sec/ims/presence/Constants$ListType;
.super Ljava/lang/Enum;
.source "Constants.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/presence/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ListType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/presence/Constants$ListType$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/ims/presence/Constants$ListType;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/ims/presence/Constants$ListType;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/ims/presence/Constants$ListType;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum RCS_BASIC_SPI_ONLY_LIST:Lcom/sec/ims/presence/Constants$ListType;

.field public static final enum RCS_BLOCKEDCONTACTS_LIST:Lcom/sec/ims/presence/Constants$ListType;

.field public static final enum RCS_LIST:Lcom/sec/ims/presence/Constants$ListType;

.field public static final enum RCS_POLL_BASIC_SPI_ONLY_LIST:Lcom/sec/ims/presence/Constants$ListType;

.field public static final enum RCS_POLL_LIST:Lcom/sec/ims/presence/Constants$ListType;

.field public static final enum RCS_REVOKEDCONTACTS_LIST:Lcom/sec/ims/presence/Constants$ListType;


# instance fields
.field private listName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/sec/ims/presence/Constants$ListType;

    const-string/jumbo v1, "RCS_LIST"

    const-string/jumbo v2, "rcs"

    invoke-direct {v0, v1, v4, v2}, Lcom/sec/ims/presence/Constants$ListType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/ims/presence/Constants$ListType;->RCS_LIST:Lcom/sec/ims/presence/Constants$ListType;

    new-instance v0, Lcom/sec/ims/presence/Constants$ListType;

    const-string/jumbo v1, "RCS_BASIC_SPI_ONLY_LIST"

    const-string/jumbo v2, "rcs_basic_spi_only"

    invoke-direct {v0, v1, v5, v2}, Lcom/sec/ims/presence/Constants$ListType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/ims/presence/Constants$ListType;->RCS_BASIC_SPI_ONLY_LIST:Lcom/sec/ims/presence/Constants$ListType;

    new-instance v0, Lcom/sec/ims/presence/Constants$ListType;

    const-string/jumbo v1, "RCS_POLL_LIST"

    const-string/jumbo v2, "rcs_poll"

    invoke-direct {v0, v1, v6, v2}, Lcom/sec/ims/presence/Constants$ListType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/ims/presence/Constants$ListType;->RCS_POLL_LIST:Lcom/sec/ims/presence/Constants$ListType;

    new-instance v0, Lcom/sec/ims/presence/Constants$ListType;

    const-string/jumbo v1, "RCS_POLL_BASIC_SPI_ONLY_LIST"

    const-string/jumbo v2, "rcs_poll_basic_spi"

    invoke-direct {v0, v1, v7, v2}, Lcom/sec/ims/presence/Constants$ListType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/ims/presence/Constants$ListType;->RCS_POLL_BASIC_SPI_ONLY_LIST:Lcom/sec/ims/presence/Constants$ListType;

    new-instance v0, Lcom/sec/ims/presence/Constants$ListType;

    const-string/jumbo v1, "RCS_REVOKEDCONTACTS_LIST"

    const-string/jumbo v2, "rcs_revokedcontacts"

    invoke-direct {v0, v1, v8, v2}, Lcom/sec/ims/presence/Constants$ListType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/ims/presence/Constants$ListType;->RCS_REVOKEDCONTACTS_LIST:Lcom/sec/ims/presence/Constants$ListType;

    new-instance v0, Lcom/sec/ims/presence/Constants$ListType;

    const-string/jumbo v1, "RCS_BLOCKEDCONTACTS_LIST"

    const-string/jumbo v2, "rcs_blockedcontacts"

    const/4 v3, 0x5

    invoke-direct {v0, v1, v3, v2}, Lcom/sec/ims/presence/Constants$ListType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/ims/presence/Constants$ListType;->RCS_BLOCKEDCONTACTS_LIST:Lcom/sec/ims/presence/Constants$ListType;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/sec/ims/presence/Constants$ListType;

    sget-object v1, Lcom/sec/ims/presence/Constants$ListType;->RCS_LIST:Lcom/sec/ims/presence/Constants$ListType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/ims/presence/Constants$ListType;->RCS_BASIC_SPI_ONLY_LIST:Lcom/sec/ims/presence/Constants$ListType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/ims/presence/Constants$ListType;->RCS_POLL_LIST:Lcom/sec/ims/presence/Constants$ListType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sec/ims/presence/Constants$ListType;->RCS_POLL_BASIC_SPI_ONLY_LIST:Lcom/sec/ims/presence/Constants$ListType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sec/ims/presence/Constants$ListType;->RCS_REVOKEDCONTACTS_LIST:Lcom/sec/ims/presence/Constants$ListType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/sec/ims/presence/Constants$ListType;->RCS_BLOCKEDCONTACTS_LIST:Lcom/sec/ims/presence/Constants$ListType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lcom/sec/ims/presence/Constants$ListType;->$VALUES:[Lcom/sec/ims/presence/Constants$ListType;

    new-instance v0, Lcom/sec/ims/presence/Constants$ListType$1;

    invoke-direct {v0}, Lcom/sec/ims/presence/Constants$ListType$1;-><init>()V

    sput-object v0, Lcom/sec/ims/presence/Constants$ListType;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/sec/ims/presence/Constants$ListType;->listName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/ims/presence/Constants$ListType;
    .locals 1

    const-class v0, Lcom/sec/ims/presence/Constants$ListType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/presence/Constants$ListType;

    return-object v0
.end method

.method public static values()[Lcom/sec/ims/presence/Constants$ListType;
    .locals 1

    sget-object v0, Lcom/sec/ims/presence/Constants$ListType;->$VALUES:[Lcom/sec/ims/presence/Constants$ListType;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/presence/Constants$ListType;->listName:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/presence/Constants$ListType;->listName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
