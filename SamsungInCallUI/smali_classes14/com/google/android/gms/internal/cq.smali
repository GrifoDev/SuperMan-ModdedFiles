.class public Lcom/google/android/gms/internal/cq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/cr;


# instance fields
.field private final ab:I

.field private final kA:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/x;",
            ">;"
        }
    .end annotation
.end field

.field private final kB:Landroid/os/Bundle;

.field private final kC:Z

.field private final ky:I

.field private final kz:Ljava/util/ArrayList;
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

    new-instance v0, Lcom/google/android/gms/internal/cr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/cr;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/cq;->CREATOR:Lcom/google/android/gms/internal/cr;

    return-void
.end method

.method public constructor <init>(ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Bundle;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/x;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/x;",
            ">;",
            "Landroid/os/Bundle;",
            "ZI)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/cq;->ab:I

    iput-object p2, p0, Lcom/google/android/gms/internal/cq;->kz:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/google/android/gms/internal/cq;->kA:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/google/android/gms/internal/cq;->kB:Landroid/os/Bundle;

    iput-boolean p5, p0, Lcom/google/android/gms/internal/cq;->kC:Z

    iput p6, p0, Lcom/google/android/gms/internal/cq;->ky:I

    return-void
.end method


# virtual methods
.method public cJ()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/cq;->ky:I

    return v0
.end method

.method public cK()Ljava/util/ArrayList;
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

    iget-object v0, p0, Lcom/google/android/gms/internal/cq;->kz:Ljava/util/ArrayList;

    return-object v0
.end method

.method public cL()Ljava/util/ArrayList;
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

    iget-object v0, p0, Lcom/google/android/gms/internal/cq;->kA:Ljava/util/ArrayList;

    return-object v0
.end method

.method public cM()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cq;->kB:Landroid/os/Bundle;

    return-object v0
.end method

.method public cN()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/cq;->kC:Z

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    instance-of v1, p1, Lcom/google/android/gms/internal/cq;

    if-nez v1, :cond_1

    .end local p1    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/cq;

    .end local p1    # "obj":Ljava/lang/Object;
    iget v1, p0, Lcom/google/android/gms/internal/cq;->ab:I

    iget v2, p1, Lcom/google/android/gms/internal/cq;->ab:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/cq;->kz:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/google/android/gms/internal/cq;->kz:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/cq;->kA:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/google/android/gms/internal/cq;->kA:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/cq;->kB:Landroid/os/Bundle;

    iget-object v2, p1, Lcom/google/android/gms/internal/cq;->kB:Landroid/os/Bundle;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/google/android/gms/internal/cq;->ky:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p1, Lcom/google/android/gms/internal/cq;->ky:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/internal/cq;->ab:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/cq;->kz:Ljava/util/ArrayList;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/cq;->kA:Ljava/util/ArrayList;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/cq;->kB:Landroid/os/Bundle;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget v2, p0, Lcom/google/android/gms/internal/cq;->ky:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/r;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public i()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/cq;->ab:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/cr;->a(Lcom/google/android/gms/internal/cq;Landroid/os/Parcel;I)V

    return-void
.end method
