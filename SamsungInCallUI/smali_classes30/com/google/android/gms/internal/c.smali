.class public final Lcom/google/android/gms/internal/c;
.super Lcom/google/android/gms/internal/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/c$h;,
        Lcom/google/android/gms/internal/c$b;,
        Lcom/google/android/gms/internal/c$d;,
        Lcom/google/android/gms/internal/c$f;,
        Lcom/google/android/gms/internal/c$g;,
        Lcom/google/android/gms/internal/c$a;,
        Lcom/google/android/gms/internal/c$c;,
        Lcom/google/android/gms/internal/c$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/k",
        "<",
        "Lcom/google/android/gms/internal/e;",
        ">;"
    }
.end annotation


# instance fields
.field private final g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p5}, Lcom/google/android/gms/internal/k;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;[Ljava/lang/String;)V

    invoke-static {p4}, Lcom/google/android/gms/internal/s;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/c;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/appstate/OnStateLoadedListener;I[B)V
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    move-object v1, v0

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/c;->C()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/e;

    invoke-interface {v0, v1, p2, p3}, Lcom/google/android/gms/internal/e;->a(Lcom/google/android/gms/internal/d;I[B)V

    :goto_1
    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/c$e;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/c$e;-><init>(Lcom/google/android/gms/internal/c;Lcom/google/android/gms/appstate/OnStateLoadedListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "AppStateClient"

    const-string v1, "service died"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected a(Lcom/google/android/gms/internal/p;Lcom/google/android/gms/internal/k$d;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v2, 0x31d24c

    invoke-virtual {p0}, Lcom/google/android/gms/internal/c;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/c;->g:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/c;->x()[Ljava/lang/String;

    move-result-object v5

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/p;->a(Lcom/google/android/gms/internal/o;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method protected varargs a([Ljava/lang/String;)V
    .locals 6

    const/4 v3, 0x1

    const/4 v1, 0x0

    move v0, v1

    move v2, v1

    :goto_0
    array-length v4, p1

    if-ge v0, v4, :cond_1

    aget-object v4, p1, v0

    const-string v5, "https://www.googleapis.com/auth/appstate"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "AppStateClient requires %s to function."

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "https://www.googleapis.com/auth/appstate"

    aput-object v4, v3, v1

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/s;->a(ZLjava/lang/Object;)V

    return-void
.end method

.method protected b(Landroid/os/IBinder;)Lcom/google/android/gms/internal/e;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/e$a;->e(Landroid/os/IBinder;)Lcom/google/android/gms/internal/e;

    move-result-object v0

    return-object v0
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.appstate.service.START"

    return-object v0
.end method

.method protected synthetic c(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/c;->b(Landroid/os/IBinder;)Lcom/google/android/gms/internal/e;

    move-result-object v0

    return-object v0
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.appstate.internal.IAppStateService"

    return-object v0
.end method

.method public deleteState(Lcom/google/android/gms/appstate/OnStateDeletedListener;I)V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/c;->C()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/e;

    new-instance v1, Lcom/google/android/gms/internal/c$a;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/c$a;-><init>(Lcom/google/android/gms/internal/c;Lcom/google/android/gms/appstate/OnStateDeletedListener;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/internal/e;->b(Lcom/google/android/gms/internal/d;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "AppStateClient"

    const-string v1, "service died"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getMaxNumKeys()I
    .locals 3

    const/4 v1, 0x2

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/c;->C()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/e;

    invoke-interface {v0}, Lcom/google/android/gms/internal/e;->getMaxNumKeys()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v0, "AppStateClient"

    const-string v2, "service died"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0
.end method

.method public getMaxStateSize()I
    .locals 3

    const/4 v1, 0x2

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/c;->C()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/e;

    invoke-interface {v0}, Lcom/google/android/gms/internal/e;->getMaxStateSize()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v0, "AppStateClient"

    const-string v2, "service died"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0
.end method

.method public listStates(Lcom/google/android/gms/appstate/OnStateListLoadedListener;)V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/c;->C()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/e;

    new-instance v1, Lcom/google/android/gms/internal/c$c;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/c$c;-><init>(Lcom/google/android/gms/internal/c;Lcom/google/android/gms/appstate/OnStateListLoadedListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/e;->a(Lcom/google/android/gms/internal/d;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "AppStateClient"

    const-string v1, "service died"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public loadState(Lcom/google/android/gms/appstate/OnStateLoadedListener;I)V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/c;->C()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/e;

    new-instance v1, Lcom/google/android/gms/internal/c$e;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/c$e;-><init>(Lcom/google/android/gms/internal/c;Lcom/google/android/gms/appstate/OnStateLoadedListener;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/internal/e;->a(Lcom/google/android/gms/internal/d;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "AppStateClient"

    const-string v1, "service died"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public resolveState(Lcom/google/android/gms/appstate/OnStateLoadedListener;ILjava/lang/String;[B)V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/c;->C()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/e;

    new-instance v1, Lcom/google/android/gms/internal/c$e;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/c$e;-><init>(Lcom/google/android/gms/internal/c;Lcom/google/android/gms/appstate/OnStateLoadedListener;)V

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/google/android/gms/internal/e;->a(Lcom/google/android/gms/internal/d;ILjava/lang/String;[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "AppStateClient"

    const-string v1, "service died"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public signOut(Lcom/google/android/gms/appstate/OnSignOutCompleteListener;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    move-object v1, v0

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/c;->C()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/e;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/e;->b(Lcom/google/android/gms/internal/d;)V

    :goto_1
    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/c$g;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/c$g;-><init>(Lcom/google/android/gms/internal/c;Lcom/google/android/gms/appstate/OnSignOutCompleteListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "AppStateClient"

    const-string v1, "service died"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
