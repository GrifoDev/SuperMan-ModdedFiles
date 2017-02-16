.class public Landroid/hardware/scontext/SContextAutoBrightness;
.super Landroid/hardware/scontext/SContextEventContext;
.source "SContextAutoBrightness.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/scontext/SContextAutoBrightness$1;
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
            "Landroid/hardware/scontext/SContextAutoBrightness;",
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
    .line 154
    new-instance v0, Landroid/hardware/scontext/SContextAutoBrightness$1;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextAutoBrightness$1;-><init>()V

    sput-object v0, Landroid/hardware/scontext/SContextAutoBrightness;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 80
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0}, Landroid/hardware/scontext/SContextEventContext;-><init>()V

    .line 89
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextAutoBrightness;->mContext:Landroid/os/Bundle;

    .line 88
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 95
    invoke-direct {p0}, Landroid/hardware/scontext/SContextEventContext;-><init>()V

    .line 96
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextAutoBrightness;->readFromParcel(Landroid/os/Parcel;)V

    .line 95
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextAutoBrightness;->mContext:Landroid/os/Bundle;

    .line 147
    return-void
.end method


# virtual methods
.method public getAmbientLux()I
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Landroid/hardware/scontext/SContextAutoBrightness;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "AmbientLux"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getCandela()I
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Landroid/hardware/scontext/SContextAutoBrightness;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "Candela"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setValues(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/os/Bundle;

    .prologue
    .line 124
    iput-object p1, p0, Landroid/hardware/scontext/SContextAutoBrightness;->mContext:Landroid/os/Bundle;

    .line 123
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 138
    iget-object v0, p0, Landroid/hardware/scontext/SContextAutoBrightness;->mContext:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 137
    return-void
.end method
