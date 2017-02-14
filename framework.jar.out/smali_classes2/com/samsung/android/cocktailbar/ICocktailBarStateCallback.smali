.class public interface abstract Lcom/samsung/android/cocktailbar/ICocktailBarStateCallback;
.super Ljava/lang/Object;
.source "ICocktailBarStateCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/cocktailbar/ICocktailBarStateCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onCocktailBarStateChanged(Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
