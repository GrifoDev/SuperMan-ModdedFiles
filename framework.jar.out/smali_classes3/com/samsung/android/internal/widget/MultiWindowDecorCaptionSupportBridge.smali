.class public Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;
.super Ljava/lang/Object;
.source "MultiWindowDecorCaptionSupportBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;
    }
.end annotation


# static fields
.field private static final CLASS_NAME:Ljava/lang/String; = "com.android.internal.widget.MultiWindowDecorCaptionSupport"

.field public static final GONE_CAPTION:I = 0x0

.field public static final SHOW_CAPTION:I = 0x1

.field public static final SHOW_CAPTION_OVERLAY:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MultiWindowDecorCaptionSupportBridge"


# instance fields
.field private IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    :try_start_0
    const-string/jumbo v2, "com.android.internal.widget.MultiWindowDecorCaptionSupport"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 68
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    iput-object v2, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-void

    .line 69
    :catch_0
    move-exception v1

    .line 70
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "MultiWindowDecorCaptionSupportBridge"

    const-string/jumbo v3, "Not created this class : com.android.internal.widget.MultiWindowDecorCaptionSupport"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getFullScreenFreeformWindowCaptionVisibility()I
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    invoke-interface {v0}, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;->getFullScreenFreeformWindowCaptionVisibility()I

    move-result v0

    return v0

    .line 179
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getLastMeasuredWithCaptionHeight()Z
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    invoke-interface {v0}, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;->getLastMeasuredWithCaptionHeight()Z

    move-result v0

    return v0

    .line 186
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getMultiWindowOutlineProvider()Landroid/view/ViewOutlineProvider;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 100
    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    invoke-interface {v0}, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;->getMultiWindowOutlineProvider()Landroid/view/ViewOutlineProvider;

    move-result-object v0

    return-object v0

    .line 103
    :cond_0
    return-object v1
.end method

.method public init(Lcom/android/internal/policy/PhoneWindow;Lcom/android/internal/widget/DecorCaptionView;Landroid/view/GestureDetector;Z)V
    .locals 1
    .param p1, "owner"    # Lcom/android/internal/policy/PhoneWindow;
    .param p2, "decorCaptionView"    # Lcom/android/internal/widget/DecorCaptionView;
    .param p3, "gestureDetector"    # Landroid/view/GestureDetector;
    .param p4, "overlayEnabled"    # Z

    .prologue
    .line 94
    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;->init(Lcom/android/internal/policy/PhoneWindow;Lcom/android/internal/widget/DecorCaptionView;Landroid/view/GestureDetector;Z)V

    .line 93
    :cond_0
    return-void
.end method

.method public isDesktopMode()Z
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    invoke-interface {v0}, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;->isDesktopMode()Z

    move-result v0

    return v0

    .line 199
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isFullScreenFreeform()Z
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    invoke-interface {v0}, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;->isFullScreenFreeform()Z

    move-result v0

    return v0

    .line 206
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public notifyMovingTask(Z)V
    .locals 1
    .param p1, "movingTask"    # Z

    .prologue
    .line 164
    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    invoke-interface {v0, p1}, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;->notifyMovingTask(Z)V

    .line 163
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 125
    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    invoke-interface {v0, p1}, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;->onConfigurationChanged(Z)V

    .line 124
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    invoke-interface {v0, p1}, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 90
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 131
    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;->onLayout(ZIIII)V

    .line 130
    :cond_0
    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    invoke-interface {v0, p1}, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;->onLongPress(Landroid/view/MotionEvent;)V

    .line 143
    :cond_0
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    invoke-interface {v0, p1}, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 140
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 160
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    invoke-interface {v0, p1}, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 153
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public removeContentView()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    invoke-interface {v0}, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;->removeContentView()V

    .line 118
    :cond_0
    return-void
.end method

.method public setCaptionView(Landroid/view/View;)V
    .locals 1
    .param p1, "caption"    # Landroid/view/View;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    invoke-interface {v0, p1}, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;->setCaptionView(Landroid/view/View;)V

    .line 106
    :cond_0
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1
    .param p1, "content"    # Landroid/view/View;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    invoke-interface {v0, p1}, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;->setContentView(Landroid/view/View;)V

    .line 112
    :cond_0
    return-void
.end method

.method public setLastMeasuredWithCaptionHeight(Z)V
    .locals 1
    .param p1, "measured"    # Z

    .prologue
    .line 190
    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    invoke-interface {v0, p1}, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;->setLastMeasuredWithCaptionHeight(Z)V

    .line 189
    :cond_0
    return-void
.end method

.method public updateButtonFocus(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    .prologue
    .line 81
    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    invoke-interface {v0, p1}, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;->updateButtonFocus(Z)V

    .line 80
    :cond_0
    return-void
.end method

.method public updateButtonVisibilityByFeature()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    invoke-interface {v0}, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;->updateButtonVisibilityByFeature()V

    .line 74
    :cond_0
    return-void
.end method

.method public updateFullScreenFreeformWindowCaptionVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 170
    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    invoke-interface {v0, p1}, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;->updateFullScreenFreeformWindowCaptionVisibility(I)V

    .line 169
    :cond_0
    return-void
.end method
