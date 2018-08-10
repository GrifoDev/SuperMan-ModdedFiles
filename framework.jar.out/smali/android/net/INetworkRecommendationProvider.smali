.class public interface abstract Landroid/net/INetworkRecommendationProvider;
.super Ljava/lang/Object;
.source "INetworkRecommendationProvider.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/INetworkRecommendationProvider$Stub;
    }
.end annotation


# virtual methods
.method public abstract requestScores([Landroid/net/NetworkKey;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
