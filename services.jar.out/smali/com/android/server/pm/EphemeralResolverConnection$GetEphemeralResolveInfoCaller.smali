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
        "Landroid/content/pm/InstantAppResolveInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final mCallback:Landroid/os/IRemoteCallback;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/pm/EphemeralResolverConnection$GetEphemeralResolveInfoCaller;Ljava/lang/Object;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/EphemeralResolverConnection$GetEphemeralResolveInfoCaller;->onRemoteMethodResult(Ljava/lang/Object;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-static {}, Lcom/android/server/pm/EphemeralResolverConnection;->-get0()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/util/TimedRemoteCaller;-><init>(J)V

    new-instance v0, Lcom/android/server/pm/EphemeralResolverConnection$GetEphemeralResolveInfoCaller$1;

    invoke-direct {v0, p0}, Lcom/android/server/pm/EphemeralResolverConnection$GetEphemeralResolveInfoCaller$1;-><init>(Lcom/android/server/pm/EphemeralResolverConnection$GetEphemeralResolveInfoCaller;)V

    iput-object v0, p0, Lcom/android/server/pm/EphemeralResolverConnection$GetEphemeralResolveInfoCaller;->mCallback:Landroid/os/IRemoteCallback;

    return-void
.end method


# virtual methods
.method public getEphemeralResolveInfoList(Landroid/app/IInstantAppResolver;[ILjava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/IInstantAppResolver;",
            "[I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/InstantAppResolveInfo;",
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

    invoke-interface {p1, p2, p3, v0, v1}, Landroid/app/IInstantAppResolver;->getInstantAppResolveInfoList([ILjava/lang/String;ILandroid/os/IRemoteCallback;)V

    invoke-virtual {p0, v0}, Lcom/android/server/pm/EphemeralResolverConnection$GetEphemeralResolveInfoCaller;->getResultTimed(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    return-object v1
.end method
