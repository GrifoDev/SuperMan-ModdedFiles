.class public Lcom/android/incallui/service/MiniModeView;
.super Landroid/widget/RelativeLayout;
.source "MiniModeView.java"


# instance fields
.field mMiniModeCallService:Lcom/android/incallui/service/MiniModeCallService;


# direct methods
.method public constructor <init>(Lcom/android/incallui/service/MiniModeCallService;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/incallui/service/MiniModeView;->mMiniModeCallService:Lcom/android/incallui/service/MiniModeCallService;

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/service/MiniModeView;->mMiniModeCallService:Lcom/android/incallui/service/MiniModeCallService;

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/MiniModeCallService;->onFocus(Z)V

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/MiniModeView;->mMiniModeCallService:Lcom/android/incallui/service/MiniModeCallService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/MiniModeCallService;->onFocus(Z)V

    goto :goto_0
.end method
