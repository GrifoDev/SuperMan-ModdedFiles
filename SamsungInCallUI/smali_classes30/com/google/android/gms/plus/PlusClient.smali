.class public Lcom/google/android/gms/plus/PlusClient;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/GooglePlayServicesClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/plus/PlusClient$Builder;,
        Lcom/google/android/gms/plus/PlusClient$OnAccessRevokedListener;,
        Lcom/google/android/gms/plus/PlusClient$OnPeopleLoadedListener;,
        Lcom/google/android/gms/plus/PlusClient$OrderBy;,
        Lcom/google/android/gms/plus/PlusClient$OnMomentsLoadedListener;
    }
.end annotation


# static fields
.field public static final KEY_REQUEST_VISIBLE_ACTIVITIES:Ljava/lang/String; = "request_visible_actions"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field final hU:Lcom/google/android/gms/internal/bt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/bt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/plus/PlusClient;->hU:Lcom/google/android/gms/internal/bt;

    return-void
.end method


# virtual methods
.method bu()Lcom/google/android/gms/internal/bt;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->hU:Lcom/google/android/gms/internal/bt;

    return-object v0
.end method

.method public clearDefaultAccount()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->hU:Lcom/google/android/gms/internal/bt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bt;->clearDefaultAccount()V

    return-void
.end method

.method public connect()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->hU:Lcom/google/android/gms/internal/bt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bt;->connect()V

    return-void
.end method

.method public disconnect()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->hU:Lcom/google/android/gms/internal/bt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bt;->disconnect()V

    return-void
.end method

.method public getAccountName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->hU:Lcom/google/android/gms/internal/bt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bt;->getAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentPerson()Lcom/google/android/gms/plus/model/people/Person;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->hU:Lcom/google/android/gms/internal/bt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bt;->getCurrentPerson()Lcom/google/android/gms/plus/model/people/Person;

    move-result-object v0

    return-object v0
.end method

.method public isConnected()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->hU:Lcom/google/android/gms/internal/bt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bt;->isConnected()Z

    move-result v0

    return v0
.end method

.method public isConnecting()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->hU:Lcom/google/android/gms/internal/bt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bt;->isConnecting()Z

    move-result v0

    return v0
.end method

.method public isConnectionCallbacksRegistered(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->hU:Lcom/google/android/gms/internal/bt;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/bt;->isConnectionCallbacksRegistered(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)Z

    move-result v0

    return v0
.end method

.method public isConnectionFailedListenerRegistered(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->hU:Lcom/google/android/gms/internal/bt;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/bt;->isConnectionFailedListenerRegistered(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)Z

    move-result v0

    return v0
.end method

.method public loadMoments(Lcom/google/android/gms/plus/PlusClient$OnMomentsLoadedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->hU:Lcom/google/android/gms/internal/bt;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/bt;->loadMoments(Lcom/google/android/gms/plus/PlusClient$OnMomentsLoadedListener;)V

    return-void
.end method

.method public loadMoments(Lcom/google/android/gms/plus/PlusClient$OnMomentsLoadedListener;ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->hU:Lcom/google/android/gms/internal/bt;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/bt;->loadMoments(Lcom/google/android/gms/plus/PlusClient$OnMomentsLoadedListener;ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public loadPeople(Lcom/google/android/gms/plus/PlusClient$OnPeopleLoadedListener;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/plus/PlusClient$OnPeopleLoadedListener;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->hU:Lcom/google/android/gms/internal/bt;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/bt;->a(Lcom/google/android/gms/plus/PlusClient$OnPeopleLoadedListener;Ljava/util/Collection;)V

    return-void
.end method

.method public varargs loadPeople(Lcom/google/android/gms/plus/PlusClient$OnPeopleLoadedListener;[Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->hU:Lcom/google/android/gms/internal/bt;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/bt;->a(Lcom/google/android/gms/plus/PlusClient$OnPeopleLoadedListener;[Ljava/lang/String;)V

    return-void
.end method

.method public loadVisiblePeople(Lcom/google/android/gms/plus/PlusClient$OnPeopleLoadedListener;ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->hU:Lcom/google/android/gms/internal/bt;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/bt;->loadVisiblePeople(Lcom/google/android/gms/plus/PlusClient$OnPeopleLoadedListener;ILjava/lang/String;)V

    return-void
.end method

.method public loadVisiblePeople(Lcom/google/android/gms/plus/PlusClient$OnPeopleLoadedListener;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->hU:Lcom/google/android/gms/internal/bt;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/bt;->loadVisiblePeople(Lcom/google/android/gms/plus/PlusClient$OnPeopleLoadedListener;Ljava/lang/String;)V

    return-void
.end method

.method public registerConnectionCallbacks(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->hU:Lcom/google/android/gms/internal/bt;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/bt;->registerConnectionCallbacks(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V

    return-void
.end method

.method public registerConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->hU:Lcom/google/android/gms/internal/bt;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/bt;->registerConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V

    return-void
.end method

.method public removeMoment(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->hU:Lcom/google/android/gms/internal/bt;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/bt;->removeMoment(Ljava/lang/String;)V

    return-void
.end method

.method public revokeAccessAndDisconnect(Lcom/google/android/gms/plus/PlusClient$OnAccessRevokedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->hU:Lcom/google/android/gms/internal/bt;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/bt;->revokeAccessAndDisconnect(Lcom/google/android/gms/plus/PlusClient$OnAccessRevokedListener;)V

    return-void
.end method

.method public unregisterConnectionCallbacks(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->hU:Lcom/google/android/gms/internal/bt;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/bt;->unregisterConnectionCallbacks(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V

    return-void
.end method

.method public unregisterConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->hU:Lcom/google/android/gms/internal/bt;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/bt;->unregisterConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V

    return-void
.end method

.method public writeMoment(Lcom/google/android/gms/plus/model/moments/Moment;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->hU:Lcom/google/android/gms/internal/bt;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/bt;->writeMoment(Lcom/google/android/gms/plus/model/moments/Moment;)V

    return-void
.end method
