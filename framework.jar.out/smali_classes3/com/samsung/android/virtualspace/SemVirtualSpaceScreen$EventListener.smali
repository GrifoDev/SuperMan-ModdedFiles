.class public interface abstract Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen$EventListener;
.super Ljava/lang/Object;
.source "SemVirtualSpaceScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EventListener"
.end annotation


# virtual methods
.method public abstract onAppOrientationChanged(Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;I)V
.end method

.method public abstract onBoundsChanged(Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;Landroid/graphics/Rect;)V
.end method

.method public abstract onContentChanged(Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;Z)V
.end method

.method public onIMETargetChanged(Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;Z)V
    .locals 0

    return-void
.end method

.method public abstract onOrientationChanged(Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;I)V
.end method

.method public onTopTaskUpdated(Lcom/samsung/android/virtualspace/SemVirtualSpaceScreen;I)V
    .locals 0

    return-void
.end method
