.class public abstract Lcom/android/server/net/NetworkPolicyManagerInternal;
.super Ljava/lang/Object;
.source "NetworkPolicyManagerInternal.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract isUidNetworkingBlocked(ILjava/lang/String;)Z
.end method

.method public abstract isUidRestrictedOnMeteredNetworks(I)Z
.end method

.method public abstract resetUserState(I)V
.end method
