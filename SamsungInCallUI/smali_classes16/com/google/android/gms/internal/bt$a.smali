.class final Lcom/google/android/gms/internal/bt$a;
.super Lcom/google/android/gms/internal/bo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/bt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field private final ir:Lcom/google/android/gms/plus/PlusClient$OnMomentsLoadedListener;

.field final synthetic is:Lcom/google/android/gms/internal/bt;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/bt;Lcom/google/android/gms/plus/PlusClient$OnMomentsLoadedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/bt$a;->is:Lcom/google/android/gms/internal/bt;

    invoke-direct {p0}, Lcom/google/android/gms/internal/bo;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/bt$a;->ir:Lcom/google/android/gms/plus/PlusClient$OnMomentsLoadedListener;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/data/d;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/google/android/gms/common/data/d;->l()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/common/data/d;->l()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "pendingIntent"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    :goto_0
    new-instance v3, Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {p1}, Lcom/google/android/gms/common/data/d;->getStatusCode()I

    move-result v2

    invoke-direct {v3, v2, v0}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {v3}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/common/data/d;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/common/data/d;->close()V

    :cond_0
    move-object v4, v1

    :goto_1
    iget-object v7, p0, Lcom/google/android/gms/internal/bt$a;->is:Lcom/google/android/gms/internal/bt;

    new-instance v0, Lcom/google/android/gms/internal/bt$b;

    iget-object v1, p0, Lcom/google/android/gms/internal/bt$a;->is:Lcom/google/android/gms/internal/bt;

    iget-object v2, p0, Lcom/google/android/gms/internal/bt$a;->ir:Lcom/google/android/gms/plus/PlusClient$OnMomentsLoadedListener;

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/bt$b;-><init>(Lcom/google/android/gms/internal/bt;Lcom/google/android/gms/plus/PlusClient$OnMomentsLoadedListener;Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/data/d;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Lcom/google/android/gms/internal/bt;->a(Lcom/google/android/gms/internal/k$b;)V

    return-void

    :cond_1
    move-object v4, p1

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method
