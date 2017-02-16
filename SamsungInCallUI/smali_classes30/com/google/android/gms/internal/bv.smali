.class public Lcom/google/android/gms/internal/bv;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/bw;


# instance fields
.field private final ab:I

.field private final di:Ljava/lang/String;

.field private final iA:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/x;",
            ">;"
        }
    .end annotation
.end field

.field private final iB:Z

.field private final iz:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/x;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/bw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/bw;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/bv;->CREATOR:Lcom/google/android/gms/internal/bw;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/x;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/x;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/bv;->ab:I

    iput-object p2, p0, Lcom/google/android/gms/internal/bv;->di:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/bv;->iz:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/google/android/gms/internal/bv;->iA:Ljava/util/ArrayList;

    iput-boolean p5, p0, Lcom/google/android/gms/internal/bv;->iB:Z

    return-void
.end method


# virtual methods
.method public bE()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/x;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/bv;->iz:Ljava/util/ArrayList;

    return-object v0
.end method

.method public bF()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/x;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/bv;->iA:Ljava/util/ArrayList;

    return-object v0
.end method

.method public bG()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/bv;->iB:Z

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bv;->di:Ljava/lang/String;

    return-object v0
.end method

.method public i()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/bv;->ab:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/bw;->a(Lcom/google/android/gms/internal/bv;Landroid/os/Parcel;I)V

    return-void
.end method
