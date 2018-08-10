.class public interface abstract Lcom/samsung/android/settings/applications/EmHandler$EmHandlerCallback;
.super Ljava/lang/Object;
.source "EmHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/applications/EmHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EmHandlerCallback"
.end annotation


# virtual methods
.method public abstract exeCustomAction()V
.end method

.method public abstract exeOptAction()V
.end method

.method public abstract exePrefAction()V
.end method

.method public abstract exeViewAction()V
.end method

.method public abstract setActionType(Ljava/lang/String;)V
.end method

.method public abstract stopAction()V
.end method
