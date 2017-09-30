.class public interface abstract Lcom/android/incallui/DialpadUi;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/incallui/Ui;


# virtual methods
.method public abstract appendDigitsToField(C)V
.end method

.method public abstract clearDigits()V
.end method

.method public abstract getDtmfText()Ljava/lang/String;
.end method

.method public abstract getShowMenuStatus()Z
.end method

.method public abstract getView()Landroid/view/View;
.end method

.method public abstract hideElapsedTimeContainer()V
.end method

.method public abstract hideSoftInput()V
.end method

.method public abstract onDialerKeyDown(Landroid/view/KeyEvent;)Z
.end method

.method public abstract onDialerKeyUp(ILandroid/view/KeyEvent;)Z
.end method

.method public abstract setDtmfText(Ljava/lang/String;)V
.end method

.method public abstract setPrimaryCallElapsedTime(ZLjava/lang/String;)V
.end method

.method public abstract setPrimaryCallMenuForDialpad(Z)V
.end method

.method public abstract setVisible(Z)V
.end method

.method public abstract setupLayout()V
.end method

.method public abstract showElapsedTimeContainer()V
.end method

.method public abstract showIndicator(Z)V
.end method

.method public abstract showSoftInput()V
.end method
