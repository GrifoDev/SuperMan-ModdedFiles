.class public Lcom/android/settingslib/NetworkPolicyEditor;
.super Ljava/lang/Object;
.source "NetworkPolicyEditor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/NetworkPolicyEditor$1;
    }
.end annotation


# instance fields
.field private mPolicyManager:Landroid/net/NetworkPolicyManager;


# virtual methods
.method public write([Landroid/net/NetworkPolicy;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/NetworkPolicyEditor;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v0, p1}, Landroid/net/NetworkPolicyManager;->setNetworkPolicies([Landroid/net/NetworkPolicy;)V

    return-void
.end method
