.class public interface abstract Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$TwoPhoneCallback;
.super Ljava/lang/Object;
.source "TwoPhoneModeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TwoPhoneCallback"
.end annotation


# virtual methods
.method public abstract getKeyguardBar()Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;
.end method

.method public abstract getPhoneBar()Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;
.end method

.method public abstract getStackScroller()Landroid/view/ViewGroup;
.end method
