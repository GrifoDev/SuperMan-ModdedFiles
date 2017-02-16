.class public Landroid/hardware/scontext/SContextStepCountAlert;
.super Landroid/hardware/scontext/SContextEventContext;
.source "SContextStepCountAlert.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/scontext/SContextStepCountAlert$1;
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
            "Landroid/hardware/scontext/SContextStepCountAlert;",
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
    .line 146
    new-instance v0, Landroid/hardware/scontext/SContextStepCountAlert$1;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextStepCountAlert$1;-><init>()V

    sput-object v0, Landroid/hardware/scontext/SContextStepCountAlert;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 76
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0}, Landroid/hardware/scontext/SContextEventContext;-><init>()V

    .line 85
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextStepCountAlert;->mContext:Landroid/os/Bundle;

    .line 84
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 91
    invoke-direct {p0}, Landroid/hardware/scontext/SContextEventContext;-><init>()V

    .line 92
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextStepCountAlert;->readFromParcel(Landroid/os/Parcel;)V

    .line 91
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextStepCountAlert;->mContext:Landroid/os/Bundle;

    .line 139
    return-void
.end method


# virtual methods
.method public getAlert()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 102
    iget-object v0, p0, Landroid/hardware/scontext/SContextStepCountAlert;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "Action"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 103
    return v2

    .line 105
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setValues(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/os/Bundle;

    .prologue
    .line 116
    iput-object p1, p0, Landroid/hardware/scontext/SContextStepCountAlert;->mContext:Landroid/os/Bundle;

    .line 115
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 130
    iget-object v0, p0, Landroid/hardware/scontext/SContextStepCountAlert;->mContext:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 129
    return-void
.end method
