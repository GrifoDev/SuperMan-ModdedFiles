.class public final Lcom/google/android/gms/plus/model/people/PersonBuffer;
.super Lcom/google/android/gms/common/data/DataBuffer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/data/DataBuffer",
        "<",
        "Lcom/google/android/gms/plus/model/people/Person;",
        ">;"
    }
.end annotation


# instance fields
.field private final kp:Lcom/google/android/gms/common/data/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/data/c",
            "<",
            "Lcom/google/android/gms/internal/cc;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/d;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/data/DataBuffer;-><init>(Lcom/google/android/gms/common/data/d;)V

    invoke-virtual {p1}, Lcom/google/android/gms/common/data/d;->l()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/common/data/d;->l()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.google.android.gms.plus.IsSafeParcelable"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/common/data/c;

    sget-object v1, Lcom/google/android/gms/internal/cc;->CREATOR:Lcom/google/android/gms/internal/cd;

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/common/data/c;-><init>(Lcom/google/android/gms/common/data/d;Landroid/os/Parcelable$Creator;)V

    iput-object v0, p0, Lcom/google/android/gms/plus/model/people/PersonBuffer;->kp:Lcom/google/android/gms/common/data/c;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/plus/model/people/PersonBuffer;->kp:Lcom/google/android/gms/common/data/c;

    goto :goto_0
.end method


# virtual methods
.method public get(I)Lcom/google/android/gms/plus/model/people/Person;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/plus/model/people/PersonBuffer;->kp:Lcom/google/android/gms/common/data/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/plus/model/people/PersonBuffer;->kp:Lcom/google/android/gms/common/data/c;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/data/c;->d(I)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/plus/model/people/Person;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/cn;

    iget-object v1, p0, Lcom/google/android/gms/plus/model/people/PersonBuffer;->S:Lcom/google/android/gms/common/data/d;

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/cn;-><init>(Lcom/google/android/gms/common/data/d;I)V

    goto :goto_0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/plus/model/people/PersonBuffer;->get(I)Lcom/google/android/gms/plus/model/people/Person;

    move-result-object v0

    return-object v0
.end method
