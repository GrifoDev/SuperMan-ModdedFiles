.class public interface abstract Landroid/view/autofill/IAutofillWindowPresenter;
.super Ljava/lang/Object;
.source "IAutofillWindowPresenter.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/autofill/IAutofillWindowPresenter$Stub;
    }
.end annotation


# virtual methods
.method public abstract hide(Landroid/graphics/Rect;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract show(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;ZI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
