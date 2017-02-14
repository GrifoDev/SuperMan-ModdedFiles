.class public final Lcom/google/android/gms/appstate/AppStateClient;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/GooglePlayServicesClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/appstate/AppStateClient$1;,
        Lcom/google/android/gms/appstate/AppStateClient$Builder;
    }
.end annotation


# static fields
.field public static final STATUS_CLIENT_RECONNECT_REQUIRED:I = 0x2

.field public static final STATUS_DEVELOPER_ERROR:I = 0x7

.field public static final STATUS_INTERNAL_ERROR:I = 0x1

.field public static final STATUS_NETWORK_ERROR_NO_DATA:I = 0x4

.field public static final STATUS_NETWORK_ERROR_OPERATION_DEFERRED:I = 0x5

.field public static final STATUS_NETWORK_ERROR_OPERATION_FAILED:I = 0x6

.field public static final STATUS_NETWORK_ERROR_STALE_DATA:I = 0x3

.field public static final STATUS_OK:I = 0x0

.field public static final STATUS_STATE_KEY_LIMIT_EXCEEDED:I = 0x7d3

.field public static final STATUS_STATE_KEY_NOT_FOUND:I = 0x7d2

.field public static final STATUS_WRITE_OUT_OF_DATE_VERSION:I = 0x7d0

.field public static final STATUS_WRITE_SIZE_EXCEEDED:I = 0x7d1


# instance fields
.field private final b:Lcom/google/android/gms/internal/c;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/c;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/c;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/appstate/AppStateClient;->b:Lcom/google/android/gms/internal/c;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;Ljava/lang/String;[Ljava/lang/String;Lcom/google/android/gms/appstate/AppStateClient$1;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/google/android/gms/appstate/AppStateClient;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public connect()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/appstate/AppStateClient;->b:Lcom/google/android/gms/internal/c;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/c;->connect()V

    return-void
.end method

.method public deleteState(Lcom/google/android/gms/appstate/OnStateDeletedListener;I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/appstate/AppStateClient;->b:Lcom/google/android/gms/internal/c;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/c;->deleteState(Lcom/google/android/gms/appstate/OnStateDeletedListener;I)V

    return-void
.end method

.method public disconnect()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/appstate/AppStateClient;->b:Lcom/google/android/gms/internal/c;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/c;->disconnect()V

    return-void
.end method

.method public getMaxNumKeys()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/appstate/AppStateClient;->b:Lcom/google/android/gms/internal/c;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/c;->getMaxNumKeys()I

    move-result v0

    return v0
.end method

.method public getMaxStateSize()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/appstate/AppStateClient;->b:Lcom/google/android/gms/internal/c;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/c;->getMaxStateSize()I

    move-result v0

    return v0
.end method

.method public isConnected()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/appstate/AppStateClient;->b:Lcom/google/android/gms/internal/c;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/c;->isConnected()Z

    move-result v0

    return v0
.end method

.method public isConnecting()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/appstate/AppStateClient;->b:Lcom/google/android/gms/internal/c;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/c;->isConnecting()Z

    move-result v0

    return v0
.end method

.method public isConnectionCallbacksRegistered(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/appstate/AppStateClient;->b:Lcom/google/android/gms/internal/c;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/c;->isConnectionCallbacksRegistered(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)Z

    move-result v0

    return v0
.end method

.method public isConnectionFailedListenerRegistered(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/appstate/AppStateClient;->b:Lcom/google/android/gms/internal/c;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/c;->isConnectionFailedListenerRegistered(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)Z

    move-result v0

    return v0
.end method

.method public listStates(Lcom/google/android/gms/appstate/OnStateListLoadedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/appstate/AppStateClient;->b:Lcom/google/android/gms/internal/c;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/c;->listStates(Lcom/google/android/gms/appstate/OnStateListLoadedListener;)V

    return-void
.end method

.method public loadState(Lcom/google/android/gms/appstate/OnStateLoadedListener;I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/appstate/AppStateClient;->b:Lcom/google/android/gms/internal/c;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/c;->loadState(Lcom/google/android/gms/appstate/OnStateLoadedListener;I)V

    return-void
.end method

.method public reconnect()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/appstate/AppStateClient;->b:Lcom/google/android/gms/internal/c;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/c;->disconnect()V

    iget-object v0, p0, Lcom/google/android/gms/appstate/AppStateClient;->b:Lcom/google/android/gms/internal/c;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/c;->connect()V

    return-void
.end method

.method public registerConnectionCallbacks(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/appstate/AppStateClient;->b:Lcom/google/android/gms/internal/c;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/c;->registerConnectionCallbacks(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V

    return-void
.end method

.method public registerConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/appstate/AppStateClient;->b:Lcom/google/android/gms/internal/c;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/c;->registerConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V

    return-void
.end method

.method public resolveState(Lcom/google/android/gms/appstate/OnStateLoadedListener;ILjava/lang/String;[B)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/appstate/AppStateClient;->b:Lcom/google/android/gms/internal/c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/c;->resolveState(Lcom/google/android/gms/appstate/OnStateLoadedListener;ILjava/lang/String;[B)V

    return-void
.end method

.method public signOut()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/appstate/AppStateClient;->b:Lcom/google/android/gms/internal/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/c;->signOut(Lcom/google/android/gms/appstate/OnSignOutCompleteListener;)V

    return-void
.end method

.method public signOut(Lcom/google/android/gms/appstate/OnSignOutCompleteListener;)V
    .locals 1

    const-string v0, "Must provide a valid listener"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/s;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/appstate/AppStateClient;->b:Lcom/google/android/gms/internal/c;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/c;->signOut(Lcom/google/android/gms/appstate/OnSignOutCompleteListener;)V

    return-void
.end method

.method public unregisterConnectionCallbacks(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/appstate/AppStateClient;->b:Lcom/google/android/gms/internal/c;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/c;->unregisterConnectionCallbacks(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V

    return-void
.end method

.method public unregisterConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/appstate/AppStateClient;->b:Lcom/google/android/gms/internal/c;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/c;->unregisterConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V

    return-void
.end method

.method public updateState(I[B)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/appstate/AppStateClient;->b:Lcom/google/android/gms/internal/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/internal/c;->a(Lcom/google/android/gms/appstate/OnStateLoadedListener;I[B)V

    return-void
.end method

.method public updateStateImmediate(Lcom/google/android/gms/appstate/OnStateLoadedListener;I[B)V
    .locals 1

    const-string v0, "Must provide a valid listener"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/s;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/appstate/AppStateClient;->b:Lcom/google/android/gms/internal/c;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/c;->a(Lcom/google/android/gms/appstate/OnStateLoadedListener;I[B)V

    return-void
.end method
