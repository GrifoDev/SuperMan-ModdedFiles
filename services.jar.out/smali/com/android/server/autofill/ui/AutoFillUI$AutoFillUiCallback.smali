.class public interface abstract Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;
.super Ljava/lang/Object;
.source "AutoFillUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/autofill/ui/AutoFillUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AutoFillUiCallback"
.end annotation


# virtual methods
.method public abstract authenticate(IILandroid/content/IntentSender;Landroid/os/Bundle;)V
.end method

.method public abstract cancelSave()V
.end method

.method public abstract fill(IILandroid/service/autofill/Dataset;)V
.end method

.method public abstract requestHideFillUi(Landroid/view/autofill/AutofillId;)V
.end method

.method public abstract requestShowFillUi(Landroid/view/autofill/AutofillId;IILandroid/view/autofill/IAutofillWindowPresenter;)V
.end method

.method public abstract save()V
.end method

.method public abstract startIntentSender(Landroid/content/IntentSender;)V
.end method
