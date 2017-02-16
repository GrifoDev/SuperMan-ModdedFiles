.class public Landroid/hardware/scontext/SContextCurrentStatusForPositioning;
.super Landroid/hardware/scontext/SContextEventContext;
.source "SContextCurrentStatusForPositioning.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/scontext/SContextCurrentStatusForPositioning$1;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/scontext/SContextCurrentStatusForPositioning;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 87
    new-instance v0, Landroid/hardware/scontext/SContextCurrentStatusForPositioning$1;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextCurrentStatusForPositioning$1;-><init>()V

    sput-object v0, Landroid/hardware/scontext/SContextCurrentStatusForPositioning;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 28
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/hardware/scontext/SContextEventContext;-><init>()V

    .line 37
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextCurrentStatusForPositioning;->mContext:Landroid/os/Bundle;

    .line 36
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/hardware/scontext/SContextEventContext;-><init>()V

    .line 44
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextCurrentStatusForPositioning;->readFromParcel(Landroid/os/Parcel;)V

    .line 43
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextCurrentStatusForPositioning;->mContext:Landroid/os/Bundle;

    .line 80
    return-void
.end method


# virtual methods
.method public getStatus()I
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Landroid/hardware/scontext/SContextCurrentStatusForPositioning;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "Status"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 71
    iget-object v0, p0, Landroid/hardware/scontext/SContextCurrentStatusForPositioning;->mContext:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 70
    return-void
.end method
