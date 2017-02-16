.class public Landroid/hardware/scontext/SContextAirMotion;
.super Landroid/hardware/scontext/SContextEventContext;
.source "SContextAirMotion.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/scontext/SContextAirMotion$1;
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
            "Landroid/hardware/scontext/SContextAirMotion;",
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
    .line 191
    new-instance v0, Landroid/hardware/scontext/SContextAirMotion$1;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextAirMotion$1;-><init>()V

    sput-object v0, Landroid/hardware/scontext/SContextAirMotion;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 103
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 111
    invoke-direct {p0}, Landroid/hardware/scontext/SContextEventContext;-><init>()V

    .line 112
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextAirMotion;->mContext:Landroid/os/Bundle;

    .line 111
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 118
    invoke-direct {p0}, Landroid/hardware/scontext/SContextEventContext;-><init>()V

    .line 119
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextAirMotion;->readFromParcel(Landroid/os/Parcel;)V

    .line 118
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextAirMotion;->mContext:Landroid/os/Bundle;

    .line 182
    return-void
.end method


# virtual methods
.method public getAngle()I
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Landroid/hardware/scontext/SContextAirMotion;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "Angle"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getDirection()I
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Landroid/hardware/scontext/SContextAirMotion;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "Direction"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getSpeed()I
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Landroid/hardware/scontext/SContextAirMotion;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "Speed"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setValues(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/os/Bundle;

    .prologue
    .line 159
    iput-object p1, p0, Landroid/hardware/scontext/SContextAirMotion;->mContext:Landroid/os/Bundle;

    .line 158
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 173
    iget-object v0, p0, Landroid/hardware/scontext/SContextAirMotion;->mContext:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 172
    return-void
.end method
