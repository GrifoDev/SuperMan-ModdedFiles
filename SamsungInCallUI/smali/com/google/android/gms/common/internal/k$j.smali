.class public final Lcom/google/android/gms/common/internal/k$j;
.super Lcom/google/android/gms/common/internal/k$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "j"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/k$a;"
    }
.end annotation


# instance fields
.field final synthetic e:Lcom/google/android/gms/common/internal/k;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/k;ILandroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/k$j;->e:Lcom/google/android/gms/common/internal/k;

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/common/internal/k$a;-><init>(Lcom/google/android/gms/common/internal/k;ILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/k$j;->e:Lcom/google/android/gms/common/internal/k;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/k;->b(Lcom/google/android/gms/common/internal/k;)Lcom/google/android/gms/common/internal/k$f;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/internal/k$f;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object v0, p0, Lcom/google/android/gms/common/internal/k$j;->e:Lcom/google/android/gms/common/internal/k;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/k;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method protected a()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/k$j;->e:Lcom/google/android/gms/common/internal/k;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/k;->b(Lcom/google/android/gms/common/internal/k;)Lcom/google/android/gms/common/internal/k$f;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/common/ConnectionResult;->a:Lcom/google/android/gms/common/ConnectionResult;

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/internal/k$f;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    const/4 v0, 0x1

    return v0
.end method
