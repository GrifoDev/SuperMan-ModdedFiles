.class public interface abstract Lcom/android/incallui/InCallVideoCallCallbackNotifier$VideoEventListener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/InCallVideoCallCallbackNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "VideoEventListener"
.end annotation


# virtual methods
.method public abstract onCallDataUsageChange(J)V
.end method

.method public abstract onCallSessionEvent(I)V
.end method

.method public abstract onCallSessionEvent(Lcom/android/incallui/Call;I)V
.end method

.method public abstract onPeerPauseStateChanged(Lcom/android/incallui/Call;Z)V
.end method

.method public abstract onVideoQualityChanged(Lcom/android/incallui/Call;I)V
.end method
