.class public Lcom/google/android/gms/internal/bn;
.super Lcom/google/android/gms/internal/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/bn$b;,
        Lcom/google/android/gms/internal/bn$c;,
        Lcom/google/android/gms/internal/bn$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/k",
        "<",
        "Lcom/google/android/gms/internal/bm;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V
    .locals 1

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/k;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public X(Landroid/os/IBinder;)Lcom/google/android/gms/internal/bm;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/bm$a;->W(Landroid/os/IBinder;)Lcom/google/android/gms/internal/bm;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/android/gms/internal/bn$b;Landroid/net/Uri;Landroid/os/Bundle;Z)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/bn;->B()V

    if-eqz p4, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/bn;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.google.android.gms"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p2, v2}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/bn;->C()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/bm;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/bm;->a(Lcom/google/android/gms/internal/bl;Landroid/net/Uri;Landroid/os/Bundle;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v3, v1, v3}, Lcom/google/android/gms/internal/bn$b;->a(ILandroid/os/Bundle;ILandroid/content/Intent;)V

    goto :goto_0
.end method

.method protected a(Lcom/google/android/gms/internal/p;Lcom/google/android/gms/internal/k$d;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const v1, 0x31d24c

    invoke-virtual {p0}, Lcom/google/android/gms/internal/bn;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, p2, v1, v2, v0}, Lcom/google/android/gms/internal/p;->a(Lcom/google/android/gms/internal/o;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/panorama/PanoramaClient$OnPanoramaInfoLoadedListener;Landroid/net/Uri;Z)V
    .locals 3

    const/4 v1, 0x0

    new-instance v2, Lcom/google/android/gms/internal/bn$b;

    if-eqz p3, :cond_0

    move-object v0, p2

    :goto_0
    invoke-direct {v2, p0, p1, v0}, Lcom/google/android/gms/internal/bn$b;-><init>(Lcom/google/android/gms/internal/bn;Lcom/google/android/gms/panorama/PanoramaClient$OnPanoramaInfoLoadedListener;Landroid/net/Uri;)V

    invoke-virtual {p0, v2, p2, v1, p3}, Lcom/google/android/gms/internal/bn;->a(Lcom/google/android/gms/internal/bn$b;Landroid/net/Uri;Landroid/os/Bundle;Z)V

    return-void

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.panorama.service.START"

    return-object v0
.end method

.method public synthetic c(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/bn;->X(Landroid/os/IBinder;)Lcom/google/android/gms/internal/bm;

    move-result-object v0

    return-object v0
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.panorama.internal.IPanoramaService"

    return-object v0
.end method
