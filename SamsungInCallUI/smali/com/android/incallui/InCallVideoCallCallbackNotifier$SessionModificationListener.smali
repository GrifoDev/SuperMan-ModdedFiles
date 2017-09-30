.class public interface abstract Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/InCallVideoCallCallbackNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SessionModificationListener"
.end annotation


# virtual methods
.method public abstract onChangeToVideoRequest(Lcom/android/incallui/Call;I)V
.end method

.method public abstract onDowngradeToAudio(Lcom/android/incallui/Call;)V
.end method

.method public abstract onDowngradeToAudioRequest(Lcom/android/incallui/Call;I)V
.end method

.method public abstract onUpgradeToVideoFail(ILcom/android/incallui/Call;)V
.end method

.method public abstract onUpgradeToVideoRequest(Lcom/android/incallui/Call;I)V
.end method

.method public abstract onUpgradeToVideoSuccess(Lcom/android/incallui/Call;)V
.end method
