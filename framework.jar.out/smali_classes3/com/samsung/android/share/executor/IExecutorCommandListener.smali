.class public interface abstract Lcom/samsung/android/share/executor/IExecutorCommandListener;
.super Ljava/lang/Object;
.source "IExecutorCommandListener.java"


# virtual methods
.method public abstract onParamFillingReceived(Lcom/samsung/android/share/executor/data/ParamFilling;)Z
.end method

.method public abstract onRuleCanceled(Ljava/lang/String;)V
.end method

.method public abstract onScreenStatesRequested()Lcom/samsung/android/share/executor/data/ScreenStateInfo;
.end method

.method public abstract onStateReceived(Lcom/samsung/android/share/executor/data/State;)V
.end method
