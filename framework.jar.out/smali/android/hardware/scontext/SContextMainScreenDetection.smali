.class public Landroid/hardware/scontext/SContextMainScreenDetection;
.super Landroid/hardware/scontext/SContextEventContext;
.source "SContextMainScreenDetection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/scontext/SContextMainScreenDetection$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/scontext/SContextMainScreenDetection;",
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
    .line 158
    new-instance v0, Landroid/hardware/scontext/SContextMainScreenDetection$1;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextMainScreenDetection$1;-><init>()V

    sput-object v0, Landroid/hardware/scontext/SContextMainScreenDetection;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 88
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 96
    invoke-direct {p0}, Landroid/hardware/scontext/SContextEventContext;-><init>()V

    .line 97
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextMainScreenDetection;->mContext:Landroid/os/Bundle;

    .line 96
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 102
    invoke-direct {p0}, Landroid/hardware/scontext/SContextEventContext;-><init>()V

    .line 103
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextMainScreenDetection;->readFromParcel(Landroid/os/Parcel;)V

    .line 102
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextMainScreenDetection;->mContext:Landroid/os/Bundle;

    .line 149
    return-void
.end method


# virtual methods
.method public getScreenStatus()I
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Landroid/hardware/scontext/SContextMainScreenDetection;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "Action"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setValues(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/os/Bundle;

    .prologue
    .line 126
    iput-object p1, p0, Landroid/hardware/scontext/SContextMainScreenDetection;->mContext:Landroid/os/Bundle;

    .line 125
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 140
    iget-object v0, p0, Landroid/hardware/scontext/SContextMainScreenDetection;->mContext:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 139
    return-void
.end method
