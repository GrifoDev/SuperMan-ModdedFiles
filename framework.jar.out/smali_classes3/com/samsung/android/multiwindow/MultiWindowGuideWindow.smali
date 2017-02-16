.class public Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;
.super Landroid/widget/FrameLayout;
.source "MultiWindowGuideWindow.java"


# static fields
.field private static final DEBUG:Z = true

.field public static final STATE_DOCKING:I = 0x3

.field public static final STATE_NONE:I = -0x1

.field public static final STATE_NOT_SUPPORT:I = 0x2

.field public static final STATE_RESIZE:I = 0x0

.field public static final STATE_WARNING:I = 0x1

.field public static final STROKE_RESIZE:I = 0x4

.field public static final STROKE_WARNING:I = 0x5

.field private static final TAG:Ljava/lang/String; = "MultiWindowGuideWindow"


# instance fields
.field private mAttached:Z

.field private mBounds:Landroid/graphics/Rect;

.field private mColor:[I

.field private mColorView:Landroid/widget/ImageView;

.field private mNotSupportView:Landroid/widget/ImageView;

.field private mState:I

.field private mStrokeWidth:I

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 65
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 28
    iput-boolean v2, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mAttached:Z

    .line 49
    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mColor:[I

    .line 55
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mState:I

    .line 57
    iput-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mColorView:Landroid/widget/ImageView;

    .line 58
    iput-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mNotSupportView:Landroid/widget/ImageView;

    .line 60
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mBounds:Landroid/graphics/Rect;

    .line 66
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 67
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mColor:[I

    const v1, 0x4da4dafc    # 3.45726848E8f

    aput v1, v0, v2

    .line 68
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mColor:[I

    const v1, 0x4dffb3b3    # 5.36245856E8f

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 69
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mColor:[I

    const v1, -0xb04603

    const/4 v2, 0x4

    aput v1, v0, v2

    .line 70
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mColor:[I

    const v1, -0xa0a1

    const/4 v2, 0x5

    aput v1, v0, v2

    .line 72
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 73
    sget v1, Lcom/samsung/android/framework/res/R$dimen;->multiwindow_decor_frame_thickness:I

    .line 72
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mStrokeWidth:I

    .line 74
    iget v0, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mStrokeWidth:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mStrokeWidth:I

    .line 64
    return-void
.end method

.method private generateLayoutParam()Landroid/view/WindowManager$LayoutParams;
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 78
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 79
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const-string/jumbo v1, "GuideWindow"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 80
    const v1, 0x800033

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 81
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 82
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 83
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 84
    const/16 v1, 0x8fd

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 85
    const/16 v1, 0x318

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 89
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 90
    return-object v0
.end method

.method private refreshUI()V
    .locals 5

    .prologue
    const/4 v3, 0x4

    const/4 v4, 0x0

    .line 94
    iget-boolean v1, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mAttached:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mColorView:Landroid/widget/ImageView;

    if-nez v1, :cond_1

    .line 95
    :cond_0
    return-void

    .line 94
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mNotSupportView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 98
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mColorView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 99
    .local v0, "drawable":Landroid/graphics/drawable/GradientDrawable;
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mColorView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 100
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mNotSupportView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 101
    iget v1, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mState:I

    packed-switch v1, :pswitch_data_0

    .line 93
    :goto_0
    :pswitch_0
    return-void

    .line 107
    :pswitch_1
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mColor:[I

    aget v1, v1, v4

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 108
    iget v1, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mStrokeWidth:I

    iget-object v2, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mColor:[I

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 109
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mColorView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 113
    :pswitch_2
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mColor:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 114
    iget v1, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mStrokeWidth:I

    iget-object v2, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mColor:[I

    const/4 v3, 0x5

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 115
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mColorView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 119
    :pswitch_3
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mNotSupportView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 101
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 199
    monitor-enter p0

    .line 200
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mAttached:Z

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 202
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 203
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mColorView:Landroid/widget/ImageView;

    .line 204
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mNotSupportView:Landroid/widget/ImageView;

    .line 205
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mAttached:Z

    .line 206
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 198
    return-void

    .line 199
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getGuideState()I
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mState:I

    return v0
.end method

.method public initialize()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 128
    iget-boolean v0, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mAttached:Z

    if-nez v0, :cond_2

    .line 129
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutDirection(I)V

    .line 130
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mColorView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 131
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mColorView:Landroid/widget/ImageView;

    .line 132
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mColorView:Landroid/widget/ImageView;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    sget v2, Lcom/samsung/android/framework/res/R$drawable;->samsung_multiwindow_guideview:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 133
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mColorView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 134
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mColorView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mNotSupportView:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 137
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mNotSupportView:Landroid/widget/ImageView;

    .line 138
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_CORNER_R"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 139
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mNotSupportView:Landroid/widget/ImageView;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    sget v2, Lcom/samsung/android/framework/res/R$drawable;->samsung_multiwindow_guideview_not_support_dream:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 143
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mNotSupportView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 144
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mNotSupportView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mColorView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 147
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mNotSupportView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 148
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-direct {p0}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->generateLayoutParam()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mAttached:Z

    .line 127
    :cond_2
    return-void

    .line 141
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mNotSupportView:Landroid/widget/ImageView;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    sget v2, Lcom/samsung/android/framework/res/R$drawable;->samsung_multiwindow_guideview_not_support:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public isAttached()Z
    .locals 1

    .prologue
    .line 213
    iget-boolean v0, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mAttached:Z

    return v0
.end method

.method public setGuideState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 160
    iget v0, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mState:I

    if-eq v0, p1, :cond_0

    .line 161
    iput p1, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mState:I

    .line 162
    invoke-direct {p0}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->refreshUI()V

    .line 159
    :cond_0
    return-void
.end method

.method public show(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v2, 0x2

    .line 168
    monitor-enter p0

    .line 169
    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mAttached:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mColorView:Landroid/widget/ImageView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    :cond_0
    monitor-exit p0

    .line 170
    return-void

    .line 169
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mNotSupportView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 172
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 176
    iget v1, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mState:I

    if-ne v1, v2, :cond_2

    .line 177
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mNotSupportView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 182
    .local v0, "vlp":Landroid/widget/FrameLayout$LayoutParams;
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 183
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 184
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 185
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 187
    iget v1, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mState:I

    if-ne v1, v2, :cond_3

    .line 188
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mNotSupportView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 189
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mNotSupportView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit p0

    .line 167
    return-void

    .line 179
    .end local v0    # "vlp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mColorView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .restart local v0    # "vlp":Landroid/widget/FrameLayout$LayoutParams;
    goto :goto_0

    .line 191
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mColorView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 192
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->mColorView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 168
    .end local v0    # "vlp":Landroid/widget/FrameLayout$LayoutParams;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
