.class public Landroid/hardware/scontext/SContextActivityTracker;
.super Landroid/hardware/scontext/SContextEventContext;
.source "SContextActivityTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/scontext/SContextActivityTracker$1;
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
            "Landroid/hardware/scontext/SContextActivityTracker;",
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
    .line 199
    new-instance v0, Landroid/hardware/scontext/SContextActivityTracker$1;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextActivityTracker$1;-><init>()V

    sput-object v0, Landroid/hardware/scontext/SContextActivityTracker;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 109
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 116
    invoke-direct {p0}, Landroid/hardware/scontext/SContextEventContext;-><init>()V

    .line 117
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextActivityTracker;->mContext:Landroid/os/Bundle;

    .line 116
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 123
    invoke-direct {p0}, Landroid/hardware/scontext/SContextEventContext;-><init>()V

    .line 124
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextActivityTracker;->readFromParcel(Landroid/os/Parcel;)V

    .line 123
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 191
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextActivityTracker;->mContext:Landroid/os/Bundle;

    .line 190
    return-void
.end method


# virtual methods
.method public getAccuracy()I
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Landroid/hardware/scontext/SContextActivityTracker;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "Accuracy"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getStatus()I
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Landroid/hardware/scontext/SContextActivityTracker;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "ActivityType"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getTimeStamp()J
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Landroid/hardware/scontext/SContextActivityTracker;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "TimeStamp"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public setValues(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/os/Bundle;

    .prologue
    .line 167
    iput-object p1, p0, Landroid/hardware/scontext/SContextActivityTracker;->mContext:Landroid/os/Bundle;

    .line 166
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 181
    iget-object v0, p0, Landroid/hardware/scontext/SContextActivityTracker;->mContext:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 180
    return-void
.end method
