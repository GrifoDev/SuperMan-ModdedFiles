.class public interface abstract Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;
.super Ljava/lang/Object;
.source "SAccessoryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/accessory/manager/SAccessoryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AuthenticationTask"
.end annotation


# virtual methods
.method public abstract getSessionState(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)I
.end method

.method public abstract start(Landroid/os/Message;Z)V
.end method

.method public abstract stop(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V
.end method
