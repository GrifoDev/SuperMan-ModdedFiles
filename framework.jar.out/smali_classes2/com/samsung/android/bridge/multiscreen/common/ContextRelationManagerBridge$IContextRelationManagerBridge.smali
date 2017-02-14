.class public interface abstract Lcom/samsung/android/bridge/multiscreen/common/ContextRelationManagerBridge$IContextRelationManagerBridge;
.super Ljava/lang/Object;
.source "ContextRelationManagerBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/bridge/multiscreen/common/ContextRelationManagerBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IContextRelationManagerBridge"
.end annotation


# virtual methods
.method public abstract createContext(Landroid/content/Context;Landroid/content/Context;)V
.end method

.method public abstract createDisplay(Landroid/content/Context;Landroid/view/Display;)V
.end method

.method public abstract createResources(Landroid/content/Context;Landroid/content/res/Resources;)V
.end method

.method public abstract createWindowManager(Landroid/content/Context;Landroid/view/WindowManagerImpl;)V
.end method

.method public abstract dump(Ljava/io/PrintWriter;Ljava/lang/String;ZZ)V
.end method

.method public abstract getContextRefSize()I
.end method

.method public abstract propagateChangedContextDisplay(Landroid/content/Context;I)V
.end method

.method public abstract removeContext(Landroid/content/Context;)V
.end method
