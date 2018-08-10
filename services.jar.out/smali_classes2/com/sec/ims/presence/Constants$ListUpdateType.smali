.class public final enum Lcom/sec/ims/presence/Constants$ListUpdateType;
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
    name = "ListUpdateType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/presence/Constants$ListUpdateType$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/ims/presence/Constants$ListUpdateType;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/ims/presence/Constants$ListUpdateType;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/ims/presence/Constants$ListUpdateType;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum UPDATE_DOCUMENT:Lcom/sec/ims/presence/Constants$ListUpdateType;

.field public static final enum UPDATE_ELEMENT:Lcom/sec/ims/presence/Constants$ListUpdateType;


# instance fields
.field private updateType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/sec/ims/presence/Constants$ListUpdateType;

    const-string/jumbo v1, "UPDATE_ELEMENT"

    const-string/jumbo v2, "update_element"

    invoke-direct {v0, v1, v3, v2}, Lcom/sec/ims/presence/Constants$ListUpdateType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/ims/presence/Constants$ListUpdateType;->UPDATE_ELEMENT:Lcom/sec/ims/presence/Constants$ListUpdateType;

    new-instance v0, Lcom/sec/ims/presence/Constants$ListUpdateType;

    const-string/jumbo v1, "UPDATE_DOCUMENT"

    const-string/jumbo v2, "update_document"

    invoke-direct {v0, v1, v4, v2}, Lcom/sec/ims/presence/Constants$ListUpdateType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/ims/presence/Constants$ListUpdateType;->UPDATE_DOCUMENT:Lcom/sec/ims/presence/Constants$ListUpdateType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sec/ims/presence/Constants$ListUpdateType;

    sget-object v1, Lcom/sec/ims/presence/Constants$ListUpdateType;->UPDATE_ELEMENT:Lcom/sec/ims/presence/Constants$ListUpdateType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/ims/presence/Constants$ListUpdateType;->UPDATE_DOCUMENT:Lcom/sec/ims/presence/Constants$ListUpdateType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/ims/presence/Constants$ListUpdateType;->$VALUES:[Lcom/sec/ims/presence/Constants$ListUpdateType;

    new-instance v0, Lcom/sec/ims/presence/Constants$ListUpdateType$1;

    invoke-direct {v0}, Lcom/sec/ims/presence/Constants$ListUpdateType$1;-><init>()V

    sput-object v0, Lcom/sec/ims/presence/Constants$ListUpdateType;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/sec/ims/presence/Constants$ListUpdateType;->updateType:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/ims/presence/Constants$ListUpdateType;
    .locals 1

    const-class v0, Lcom/sec/ims/presence/Constants$ListUpdateType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/presence/Constants$ListUpdateType;

    return-object v0
.end method

.method public static values()[Lcom/sec/ims/presence/Constants$ListUpdateType;
    .locals 1

    sget-object v0, Lcom/sec/ims/presence/Constants$ListUpdateType;->$VALUES:[Lcom/sec/ims/presence/Constants$ListUpdateType;

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

    iget-object v0, p0, Lcom/sec/ims/presence/Constants$ListUpdateType;->updateType:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/presence/Constants$ListUpdateType;->updateType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
