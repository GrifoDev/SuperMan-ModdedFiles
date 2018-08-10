.class public final Landroid/os/SemPowerInfo$Builder;
.super Ljava/lang/Object;
.source "SemPowerInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/SemPowerInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mDmUriSparseArr:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/SemDmUri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Landroid/os/SemPowerInfo$Builder;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Landroid/os/SemPowerInfo$Builder;->mDmUriSparseArr:Landroid/util/SparseArray;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/os/SemPowerInfo$Builder;->mDmUriSparseArr:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public addDmUriObserver(Landroid/os/SemDmUri;)Landroid/os/SemPowerInfo$Builder;
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/os/SemPowerInfo$Builder;->mDmUriSparseArr:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/os/SemDmUri;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_0
    return-object p0
.end method

.method public build()Landroid/os/SemPowerInfo;
    .locals 1

    new-instance v0, Landroid/os/SemPowerInfo;

    invoke-direct {v0, p0}, Landroid/os/SemPowerInfo;-><init>(Landroid/os/SemPowerInfo$Builder;)V

    return-object v0
.end method
