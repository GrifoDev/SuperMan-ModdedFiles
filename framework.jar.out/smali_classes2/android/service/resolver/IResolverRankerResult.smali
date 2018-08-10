.class public interface abstract Landroid/service/resolver/IResolverRankerResult;
.super Ljava/lang/Object;
.source "IResolverRankerResult.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/resolver/IResolverRankerResult$Stub;
    }
.end annotation


# virtual methods
.method public abstract sendResult(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/service/resolver/ResolverTarget;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
