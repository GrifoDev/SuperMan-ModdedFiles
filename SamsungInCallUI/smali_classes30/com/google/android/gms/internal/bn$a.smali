.class final Lcom/google/android/gms/internal/bn$a;
.super Lcom/google/android/gms/internal/k$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/bn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/k",
        "<",
        "Lcom/google/android/gms/internal/bm;",
        ">.b<",
        "Lcom/google/android/gms/panorama/PanoramaClient$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final hO:Lcom/google/android/gms/common/ConnectionResult;

.field public final hP:Landroid/content/Intent;

.field final synthetic hQ:Lcom/google/android/gms/internal/bn;

.field public final type:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/bn;Lcom/google/android/gms/panorama/PanoramaClient$a;Lcom/google/android/gms/common/ConnectionResult;ILandroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/bn$a;->hQ:Lcom/google/android/gms/internal/bn;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/k$b;-><init>(Lcom/google/android/gms/internal/k;Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/bn$a;->hO:Lcom/google/android/gms/common/ConnectionResult;

    iput p4, p0, Lcom/google/android/gms/internal/bn$a;->type:I

    iput-object p5, p0, Lcom/google/android/gms/internal/bn$a;->hP:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/panorama/PanoramaClient$a;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bn$a;->hO:Lcom/google/android/gms/common/ConnectionResult;

    iget v1, p0, Lcom/google/android/gms/internal/bn$a;->type:I

    iget-object v2, p0, Lcom/google/android/gms/internal/bn$a;->hP:Landroid/content/Intent;

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/panorama/PanoramaClient$a;->a(Lcom/google/android/gms/common/ConnectionResult;ILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/panorama/PanoramaClient$a;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/bn$a;->a(Lcom/google/android/gms/panorama/PanoramaClient$a;)V

    return-void
.end method

.method protected d()V
    .locals 0

    return-void
.end method
