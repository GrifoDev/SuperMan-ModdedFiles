.class public Lcom/google/android/gms/maps/internal/p;
.super Ljava/lang/Object;


# static fields
.field private static gN:Landroid/content/Context;

.field private static gO:Lcom/google/android/gms/maps/internal/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/s;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/maps/internal/p;->c(Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to find dynamic class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static bm()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    :try_start_0
    const-string v0, "com.google.android.gms.maps.internal.CreatorImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static c(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<*>;)TT;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to instantiate the dynamic class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to call the default constructor of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getRemoteContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/google/android/gms/maps/internal/p;->gN:Landroid/content/Context;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/maps/internal/p;->bm()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_1

    sput-object p0, Lcom/google/android/gms/maps/internal/p;->gN:Landroid/content/Context;

    :cond_0
    :goto_0
    sget-object v0, Lcom/google/android/gms/maps/internal/p;->gN:Landroid/content/Context;

    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->getRemoteContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/maps/internal/p;->gN:Landroid/content/Context;

    goto :goto_0
.end method

.method public static i(Landroid/content/Context;)Lcom/google/android/gms/maps/internal/c;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/android/gms/internal/s;->d(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Lcom/google/android/gms/maps/internal/p;->k(Landroid/content/Context;)V

    sget-object v0, Lcom/google/android/gms/maps/internal/p;->gO:Lcom/google/android/gms/maps/internal/c;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/maps/internal/p;->l(Landroid/content/Context;)V

    :cond_0
    sget-object v0, Lcom/google/android/gms/maps/internal/p;->gO:Lcom/google/android/gms/maps/internal/c;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/gms/maps/internal/p;->gO:Lcom/google/android/gms/maps/internal/c;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/google/android/gms/maps/internal/p;->getRemoteContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "com.google.android.gms.maps.internal.CreatorImpl"

    invoke-static {v0, v1}, Lcom/google/android/gms/maps/internal/p;->a(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    invoke-static {v0}, Lcom/google/android/gms/maps/internal/c$a;->v(Landroid/os/IBinder;)Lcom/google/android/gms/maps/internal/c;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/maps/internal/p;->gO:Lcom/google/android/gms/maps/internal/c;

    invoke-static {p0}, Lcom/google/android/gms/maps/internal/p;->j(Landroid/content/Context;)V

    sget-object v0, Lcom/google/android/gms/maps/internal/p;->gO:Lcom/google/android/gms/maps/internal/c;

    goto :goto_0
.end method

.method private static j(Landroid/content/Context;)V
    .locals 3

    :try_start_0
    sget-object v0, Lcom/google/android/gms/maps/internal/p;->gO:Lcom/google/android/gms/maps/internal/c;

    invoke-static {p0}, Lcom/google/android/gms/maps/internal/p;->getRemoteContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/c;->f(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/b;

    move-result-object v1

    const v2, 0x31d24c

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/maps/internal/c;->a(Lcom/google/android/gms/dynamic/b;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public static k(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;-><init>(I)V

    throw v1

    :cond_0
    return-void
.end method

.method private static l(Landroid/content/Context;)V
    .locals 3

    invoke-static {}, Lcom/google/android/gms/maps/internal/p;->bm()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    const-class v1, Lcom/google/android/gms/maps/internal/p;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Making Creator statically"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/google/android/gms/maps/internal/p;->c(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/internal/c;

    sput-object v0, Lcom/google/android/gms/maps/internal/p;->gO:Lcom/google/android/gms/maps/internal/c;

    invoke-static {p0}, Lcom/google/android/gms/maps/internal/p;->j(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
