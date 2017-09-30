.class public interface abstract Lcom/android/incallui/CallList$CallUpdateListener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/CallList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CallUpdateListener"
.end annotation


# virtual methods
.method public abstract onCallChanged(Lcom/android/incallui/Call;)V
.end method

.method public abstract onChildNumberChange()V
.end method

.method public abstract onLastForwardedNumberChange()V
.end method

.method public abstract onSessionModificationStateChange(I)V
.end method
