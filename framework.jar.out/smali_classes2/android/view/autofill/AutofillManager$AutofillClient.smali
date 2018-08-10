.class public interface abstract Landroid/view/autofill/AutofillManager$AutofillClient;
.super Ljava/lang/Object;
.source "AutofillManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/autofill/AutofillManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AutofillClient"
.end annotation


# virtual methods
.method public abstract autofillCallbackAuthenticate(ILandroid/content/IntentSender;Landroid/content/Intent;)V
.end method

.method public abstract autofillCallbackRequestHideFillUi()Z
.end method

.method public abstract autofillCallbackRequestShowFillUi(Landroid/view/View;IILandroid/graphics/Rect;Landroid/view/autofill/IAutofillWindowPresenter;)Z
.end method

.method public abstract autofillCallbackResetableStateAvailable()V
.end method

.method public abstract findViewByAutofillIdTraversal(I)Landroid/view/View;
.end method

.method public abstract findViewsByAutofillIdTraversal([I)[Landroid/view/View;
.end method

.method public abstract getViewVisibility([I)[Z
.end method

.method public abstract isVisibleForAutofill()Z
.end method

.method public abstract runOnUiThread(Ljava/lang/Runnable;)V
.end method
