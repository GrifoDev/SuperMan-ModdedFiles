.class interface abstract Lcom/android/server/autofill/ui/FillUi$Callback;
.super Ljava/lang/Object;
.source "FillUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/autofill/ui/FillUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onCanceled()V
.end method

.method public abstract onDatasetPicked(Landroid/service/autofill/Dataset;)V
.end method

.method public abstract onDestroy()V
.end method

.method public abstract onResponsePicked(Landroid/service/autofill/FillResponse;)V
.end method

.method public abstract requestHideFillUi()V
.end method

.method public abstract requestShowFillUi(IILandroid/view/autofill/IAutofillWindowPresenter;)V
.end method

.method public abstract startIntentSender(Landroid/content/IntentSender;)V
.end method
