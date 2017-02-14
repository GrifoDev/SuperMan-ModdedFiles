.class final Lcom/android/server/pm/EphemeralResolverConnection$GetEphemeralResolveInfoCaller;
.super Landroid/util/TimedRemoteCaller;
.source "EphemeralResolverConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/EphemeralResolverConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GetEphemeralResolveInfoCaller"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/TimedRemoteCaller",
        "<",
        "Ljava/util/List",
        "<",
        "Landroid/content/pm/EphemeralResolveInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final mCallback:Landroid/os/IRemoteCallback;


# direct methods
.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, 0x1388

    invoke-direct {p0, v0, v1}, Landroid/util/TimedRemoteCaller;-><init>(J)V

    new-instance v0, Lcom/android/server/pm/EphemeralResolverConnection$GetEphemeralResolveInfoCaller$1;

    invoke-direct {v0, p0}, Lcom/android/server/pm/EphemeralResolverConnection$GetEphemeralResolveInfoCaller$1;-><init>(Lcom/android/server/pm/EphemeralResolverConnection$GetEphemeralResolveInfoCaller;)V

    iput-object v0, p0, Lcom/android/server/pm/EphemeralResolverConnection$GetEphemeralResolveInfoCaller;->mCallback:Landroid/os/IRemoteCallback;

    return-void
.end method


# virtual methods
.method public getEphemeralResolveInfoList(Lcom/android/internal/app/IEphemeralResolver;I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/app/IEphemeralResolver;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/EphemeralResolveInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/pm/EphemeralResolverConnection$GetEphemeralResolveInfoCaller;->onBeforeRemoteCall()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/pm/EphemeralResolverConnection$GetEphemeralResolveInfoCaller;->mCallback:Landroid/os/IRemoteCallback;

    invoke-interface {p1, v1, p2, v0}, Lcom/android/internal/app/IEphemeralResolver;->getEphemeralResolveInfoList(Landroid/os/IRemoteCallback;II)V

    invoke-virtual {p0, v0}, Lcom/android/server/pm/EphemeralResolverConnection$GetEphemeralResolveInfoCaller;->getResultTimed(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    return-object v1
.end method
