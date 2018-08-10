.class public final Landroid/app/InstantAppResolverService$InstantAppResolutionCallback;
.super Ljava/lang/Object;
.source "InstantAppResolverService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/InstantAppResolverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InstantAppResolutionCallback"
.end annotation


# instance fields
.field private final mCallback:Landroid/os/IRemoteCallback;

.field private final mSequence:I


# direct methods
.method constructor <init>(ILandroid/os/IRemoteCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/app/InstantAppResolverService$InstantAppResolutionCallback;->mCallback:Landroid/os/IRemoteCallback;

    iput p1, p0, Landroid/app/InstantAppResolverService$InstantAppResolutionCallback;->mSequence:I

    return-void
.end method


# virtual methods
.method public onInstantAppResolveInfo(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/InstantAppResolveInfo;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "android.app.extra.RESOLVE_INFO"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelableList(Ljava/lang/String;Ljava/util/List;)V

    const-string/jumbo v2, "android.app.extra.SEQUENCE"

    iget v3, p0, Landroid/app/InstantAppResolverService$InstantAppResolutionCallback;->mSequence:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :try_start_0
    iget-object v2, p0, Landroid/app/InstantAppResolverService$InstantAppResolutionCallback;->mCallback:Landroid/os/IRemoteCallback;

    invoke-interface {v2, v0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method
