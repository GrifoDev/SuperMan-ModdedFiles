.class public interface abstract Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;
.super Ljava/lang/Object;
.source "SAccessoryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/accessory/manager/SAccessoryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AuthenticationResultCallback"
.end annotation


# virtual methods
.method public abstract onAuthenticationComplted(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V
.end method

.method public abstract onAuthenticationStarted()V
.end method

.method public abstract onAuthenticationStarting(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V
.end method

.method public abstract onAuthenticationStopped(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V
.end method
