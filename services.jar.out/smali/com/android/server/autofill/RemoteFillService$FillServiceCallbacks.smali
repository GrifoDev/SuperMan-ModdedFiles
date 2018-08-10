.class public interface abstract Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;
.super Ljava/lang/Object;
.source "RemoteFillService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/autofill/RemoteFillService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FillServiceCallbacks"
.end annotation


# virtual methods
.method public abstract onFillRequestFailure(Ljava/lang/CharSequence;Ljava/lang/String;)V
.end method

.method public abstract onFillRequestSuccess(ILandroid/service/autofill/FillResponse;ILjava/lang/String;)V
.end method

.method public abstract onSaveRequestFailure(Ljava/lang/CharSequence;Ljava/lang/String;)V
.end method

.method public abstract onSaveRequestSuccess(Ljava/lang/String;)V
.end method

.method public abstract onServiceDied(Lcom/android/server/autofill/RemoteFillService;)V
.end method
