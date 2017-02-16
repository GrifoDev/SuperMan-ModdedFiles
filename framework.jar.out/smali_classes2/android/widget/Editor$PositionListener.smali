.class Landroid/widget/Editor$PositionListener;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PositionListener"
.end annotation


# instance fields
.field private final MAXIMUM_NUMBER_OF_LISTENERS:I

.field private mCanMove:[Z

.field protected mDelayHandler:Landroid/os/Handler;

.field private mDelayTime:I

.field private mNumberOfListeners:I

.field private mPositionHasChanged:Z

.field private mPositionListeners:[Landroid/widget/Editor$TextViewPositionListener;

.field private mPositionX:I

.field private mPositionXOnScreen:I

.field private mPositionY:I

.field private mPositionYOnScreen:I

.field private mScrollHasChanged:Z

.field private mTempContentsViewCoords:[I

.field final mTempCoords:[I

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method static synthetic -get0(Landroid/widget/Editor$PositionListener;)I
    .locals 1

    iget v0, p0, Landroid/widget/Editor$PositionListener;->mPositionX:I

    return v0
.end method

.method static synthetic -get1(Landroid/widget/Editor$PositionListener;)I
    .locals 1

    iget v0, p0, Landroid/widget/Editor$PositionListener;->mPositionY:I

    return v0
.end method

.method static synthetic -wrap0(Landroid/widget/Editor$PositionListener;Landroid/widget/Editor$TextViewPositionListener;IIZZ)V
    .locals 0
    .param p1, "positionListener"    # Landroid/widget/Editor$TextViewPositionListener;
    .param p2, "positionX"    # I
    .param p3, "positionY"    # I
    .param p4, "positonChanged"    # Z
    .param p5, "scrollChanged"    # Z

    .prologue
    invoke-direct/range {p0 .. p5}, Landroid/widget/Editor$PositionListener;->updatePositionWithDelay(Landroid/widget/Editor$TextViewPositionListener;IIZZ)V

    return-void
.end method

.method private constructor <init>(Landroid/widget/Editor;)V
    .locals 3
    .param p1, "this$0"    # Landroid/widget/Editor;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x7

    .line 3114
    iput-object p1, p0, Landroid/widget/Editor$PositionListener;->this$0:Landroid/widget/Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3118
    iput v1, p0, Landroid/widget/Editor$PositionListener;->MAXIMUM_NUMBER_OF_LISTENERS:I

    .line 3120
    new-array v0, v1, [Landroid/widget/Editor$TextViewPositionListener;

    .line 3119
    iput-object v0, p0, Landroid/widget/Editor$PositionListener;->mPositionListeners:[Landroid/widget/Editor$TextViewPositionListener;

    .line 3121
    new-array v0, v1, [Z

    iput-object v0, p0, Landroid/widget/Editor$PositionListener;->mCanMove:[Z

    .line 3122
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor$PositionListener;->mPositionHasChanged:Z

    .line 3128
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/Editor$PositionListener;->mTempCoords:[I

    .line 3129
    iput-object v2, p0, Landroid/widget/Editor$PositionListener;->mTempContentsViewCoords:[I

    .line 3130
    const/16 v0, 0x12c

    iput v0, p0, Landroid/widget/Editor$PositionListener;->mDelayTime:I

    .line 3131
    iput-object v2, p0, Landroid/widget/Editor$PositionListener;->mDelayHandler:Landroid/os/Handler;

    .line 3114
    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/Editor;Landroid/widget/Editor$PositionListener;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/Editor;

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/Editor$PositionListener;-><init>(Landroid/widget/Editor;)V

    return-void
.end method

.method private checkContentsSizeChanged()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3286
    const/4 v0, 0x0

    .line 3289
    .local v0, "rootView":Landroid/view/View;
    iget-object v1, p0, Landroid/widget/Editor$PositionListener;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 3291
    .local v0, "rootView":Landroid/view/View;
    if-nez v0, :cond_0

    .line 3292
    return-void

    .line 3295
    :cond_0
    iget-object v1, p0, Landroid/widget/Editor$PositionListener;->mTempContentsViewCoords:[I

    if-eqz v1, :cond_3

    .line 3296
    iget-boolean v1, p0, Landroid/widget/Editor$PositionListener;->mPositionHasChanged:Z

    if-nez v1, :cond_2

    .line 3297
    iget-object v1, p0, Landroid/widget/Editor$PositionListener;->mTempContentsViewCoords:[I

    aget v1, v1, v2

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/widget/Editor$PositionListener;->mTempContentsViewCoords:[I

    aget v1, v1, v3

    if-eqz v1, :cond_2

    .line 3298
    :cond_1
    iput-boolean v3, p0, Landroid/widget/Editor$PositionListener;->mPositionHasChanged:Z

    .line 3305
    :cond_2
    :goto_0
    iget-object v1, p0, Landroid/widget/Editor$PositionListener;->mTempContentsViewCoords:[I

    aput v2, v1, v2

    .line 3306
    iget-object v1, p0, Landroid/widget/Editor$PositionListener;->mTempContentsViewCoords:[I

    aput v2, v1, v3

    .line 3285
    return-void

    .line 3302
    :cond_3
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/widget/Editor$PositionListener;->mTempContentsViewCoords:[I

    goto :goto_0
.end method

.method private prepareHander()V
    .locals 1

    .prologue
    .line 3200
    new-instance v0, Landroid/widget/Editor$PositionListener$1;

    invoke-direct {v0, p0}, Landroid/widget/Editor$PositionListener$1;-><init>(Landroid/widget/Editor$PositionListener;)V

    iput-object v0, p0, Landroid/widget/Editor$PositionListener;->mDelayHandler:Landroid/os/Handler;

    .line 3199
    return-void
.end method

.method private updatePosition()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 3270
    iget-object v0, p0, Landroid/widget/Editor$PositionListener;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v3, p0, Landroid/widget/Editor$PositionListener;->mTempCoords:[I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->getLocationInWindow([I)V

    .line 3272
    iget-object v0, p0, Landroid/widget/Editor$PositionListener;->mTempCoords:[I

    aget v0, v0, v2

    iget v3, p0, Landroid/widget/Editor$PositionListener;->mPositionX:I

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$PositionListener;->mTempCoords:[I

    aget v0, v0, v1

    iget v3, p0, Landroid/widget/Editor$PositionListener;->mPositionY:I

    if-eq v0, v3, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/widget/Editor$PositionListener;->mPositionHasChanged:Z

    .line 3274
    iget-object v0, p0, Landroid/widget/Editor$PositionListener;->mTempCoords:[I

    aget v0, v0, v2

    iput v0, p0, Landroid/widget/Editor$PositionListener;->mPositionX:I

    .line 3275
    iget-object v0, p0, Landroid/widget/Editor$PositionListener;->mTempCoords:[I

    aget v0, v0, v1

    iput v0, p0, Landroid/widget/Editor$PositionListener;->mPositionY:I

    .line 3277
    iget-object v0, p0, Landroid/widget/Editor$PositionListener;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v3, p0, Landroid/widget/Editor$PositionListener;->mTempCoords:[I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 3279
    iget-object v0, p0, Landroid/widget/Editor$PositionListener;->mTempCoords:[I

    aget v0, v0, v2

    iput v0, p0, Landroid/widget/Editor$PositionListener;->mPositionXOnScreen:I

    .line 3280
    iget-object v0, p0, Landroid/widget/Editor$PositionListener;->mTempCoords:[I

    aget v0, v0, v1

    iput v0, p0, Landroid/widget/Editor$PositionListener;->mPositionYOnScreen:I

    .line 3269
    return-void

    :cond_1
    move v0, v2

    .line 3272
    goto :goto_0
.end method

.method private updatePositionWithDelay(Landroid/widget/Editor$TextViewPositionListener;IIZZ)V
    .locals 0
    .param p1, "positionListener"    # Landroid/widget/Editor$TextViewPositionListener;
    .param p2, "positionX"    # I
    .param p3, "positionY"    # I
    .param p4, "positonChanged"    # Z
    .param p5, "scrollChanged"    # Z

    .prologue
    .line 3266
    invoke-interface {p1, p2, p3, p4, p5}, Landroid/widget/Editor$TextViewPositionListener;->updatePosition(IIZZ)V

    .line 3264
    return-void
.end method


# virtual methods
.method public addSubscriber(Landroid/widget/Editor$TextViewPositionListener;Z)V
    .locals 5
    .param p1, "positionListener"    # Landroid/widget/Editor$TextViewPositionListener;
    .param p2, "canMove"    # Z

    .prologue
    .line 3134
    iget v4, p0, Landroid/widget/Editor$PositionListener;->mNumberOfListeners:I

    if-nez v4, :cond_0

    .line 3135
    invoke-direct {p0}, Landroid/widget/Editor$PositionListener;->updatePosition()V

    .line 3136
    iget-object v4, p0, Landroid/widget/Editor$PositionListener;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    .line 3137
    .local v3, "vto":Landroid/view/ViewTreeObserver;
    invoke-virtual {v3, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 3140
    .end local v3    # "vto":Landroid/view/ViewTreeObserver;
    :cond_0
    const/4 v0, -0x1

    .line 3141
    .local v0, "emptySlotIndex":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v4, 0x7

    if-ge v1, v4, :cond_3

    .line 3142
    iget-object v4, p0, Landroid/widget/Editor$PositionListener;->mPositionListeners:[Landroid/widget/Editor$TextViewPositionListener;

    aget-object v2, v4, v1

    .line 3143
    .local v2, "listener":Landroid/widget/Editor$TextViewPositionListener;
    if-ne v2, p1, :cond_1

    .line 3144
    return-void

    .line 3145
    :cond_1
    if-gez v0, :cond_2

    if-nez v2, :cond_2

    .line 3146
    move v0, v1

    .line 3141
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3157
    .end local v2    # "listener":Landroid/widget/Editor$TextViewPositionListener;
    :cond_3
    iget-object v4, p0, Landroid/widget/Editor$PositionListener;->mPositionListeners:[Landroid/widget/Editor$TextViewPositionListener;

    aput-object p1, v4, v0

    .line 3158
    iget-object v4, p0, Landroid/widget/Editor$PositionListener;->mCanMove:[Z

    aput-boolean p2, v4, v0

    .line 3159
    iget v4, p0, Landroid/widget/Editor$PositionListener;->mNumberOfListeners:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/widget/Editor$PositionListener;->mNumberOfListeners:I

    .line 3133
    return-void
.end method

.method public getPositionX()I
    .locals 1

    .prologue
    .line 3184
    iget v0, p0, Landroid/widget/Editor$PositionListener;->mPositionX:I

    return v0
.end method

.method public getPositionXOnScreen()I
    .locals 1

    .prologue
    .line 3192
    iget v0, p0, Landroid/widget/Editor$PositionListener;->mPositionXOnScreen:I

    return v0
.end method

.method public getPositionY()I
    .locals 1

    .prologue
    .line 3188
    iget v0, p0, Landroid/widget/Editor$PositionListener;->mPositionY:I

    return v0
.end method

.method public getPositionYOnScreen()I
    .locals 1

    .prologue
    .line 3196
    iget v0, p0, Landroid/widget/Editor$PositionListener;->mPositionYOnScreen:I

    return v0
.end method

.method public onPreDraw()Z
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 3211
    invoke-direct {p0}, Landroid/widget/Editor$PositionListener;->updatePosition()V

    .line 3212
    invoke-direct {p0}, Landroid/widget/Editor$PositionListener;->checkContentsSizeChanged()V

    .line 3214
    const/4 v3, 0x0

    .line 3216
    .local v3, "isNeedToDelay":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v7, 0x7

    if-ge v2, v7, :cond_7

    .line 3217
    iget-boolean v7, p0, Landroid/widget/Editor$PositionListener;->mPositionHasChanged:Z

    if-nez v7, :cond_0

    iget-boolean v7, p0, Landroid/widget/Editor$PositionListener;->mScrollHasChanged:Z

    if-nez v7, :cond_0

    iget-object v7, p0, Landroid/widget/Editor$PositionListener;->mCanMove:[Z

    aget-boolean v7, v7, v2

    if-eqz v7, :cond_5

    .line 3218
    :cond_0
    iget-object v7, p0, Landroid/widget/Editor$PositionListener;->mPositionListeners:[Landroid/widget/Editor$TextViewPositionListener;

    aget-object v5, v7, v2

    .line 3219
    .local v5, "positionListener":Landroid/widget/Editor$TextViewPositionListener;
    if-eqz v5, :cond_5

    .line 3220
    const/4 v3, 0x0

    .line 3221
    iget-object v7, p0, Landroid/widget/Editor$PositionListener;->this$0:Landroid/widget/Editor;

    invoke-static {v7}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-boolean v7, p0, Landroid/widget/Editor$PositionListener;->mPositionHasChanged:Z

    if-eqz v7, :cond_2

    instance-of v7, v5, Landroid/widget/Editor$HandleView;

    if-eqz v7, :cond_2

    move-object v0, v5

    .line 3222
    check-cast v0, Landroid/widget/Editor$HandleView;

    .line 3223
    .local v0, "currentHandle":Landroid/widget/Editor$HandleView;
    invoke-virtual {v0}, Landroid/widget/Editor$HandleView;->isDragging()Z

    move-result v7

    if-nez v7, :cond_2

    .line 3225
    invoke-virtual {v0}, Landroid/widget/Editor$HandleView;->dismiss()V

    .line 3226
    instance-of v7, v0, Landroid/widget/Editor$InsertionHandleView;

    if-eqz v7, :cond_1

    iget-object v7, p0, Landroid/widget/Editor$PositionListener;->this$0:Landroid/widget/Editor;

    iget-object v7, v7, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-nez v7, :cond_1

    .line 3227
    check-cast v0, Landroid/widget/Editor$InsertionHandleView;

    .end local v0    # "currentHandle":Landroid/widget/Editor$HandleView;
    invoke-static {v0}, Landroid/widget/Editor$InsertionHandleView;->-wrap0(Landroid/widget/Editor$InsertionHandleView;)V

    .line 3229
    :cond_1
    const/4 v3, 0x1

    .line 3232
    :cond_2
    if-eqz v3, :cond_6

    .line 3233
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    .line 3234
    .local v4, "msg":Landroid/os/Message;
    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3235
    iput v11, v4, Landroid/os/Message;->what:I

    .line 3236
    instance-of v7, v5, Landroid/widget/Editor$HandleView;

    if-eqz v7, :cond_3

    move-object v0, v5

    .line 3237
    check-cast v0, Landroid/widget/Editor$HandleView;

    .line 3238
    .restart local v0    # "currentHandle":Landroid/widget/Editor$HandleView;
    invoke-virtual {v0}, Landroid/widget/Editor$HandleView;->getHandleType()I

    move-result v7

    iput v7, v4, Landroid/os/Message;->what:I

    .line 3241
    .end local v0    # "currentHandle":Landroid/widget/Editor$HandleView;
    :cond_3
    iget-object v7, p0, Landroid/widget/Editor$PositionListener;->mDelayHandler:Landroid/os/Handler;

    if-nez v7, :cond_4

    .line 3242
    invoke-direct {p0}, Landroid/widget/Editor$PositionListener;->prepareHander()V

    .line 3245
    :cond_4
    iget-object v7, p0, Landroid/widget/Editor$PositionListener;->mDelayHandler:Landroid/os/Handler;

    iget v8, v4, Landroid/os/Message;->what:I

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 3246
    iget-object v7, p0, Landroid/widget/Editor$PositionListener;->mDelayHandler:Landroid/os/Handler;

    iget v8, p0, Landroid/widget/Editor$PositionListener;->mDelayTime:I

    int-to-long v8, v8

    invoke-virtual {v7, v4, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v6

    .line 3216
    .end local v4    # "msg":Landroid/os/Message;
    .end local v5    # "positionListener":Landroid/widget/Editor$TextViewPositionListener;
    :cond_5
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3250
    .restart local v5    # "positionListener":Landroid/widget/Editor$TextViewPositionListener;
    :cond_6
    :try_start_0
    iget v7, p0, Landroid/widget/Editor$PositionListener;->mPositionX:I

    iget v8, p0, Landroid/widget/Editor$PositionListener;->mPositionY:I

    iget-boolean v9, p0, Landroid/widget/Editor$PositionListener;->mPositionHasChanged:Z

    iget-boolean v10, p0, Landroid/widget/Editor$PositionListener;->mScrollHasChanged:Z

    invoke-interface {v5, v7, v8, v9, v10}, Landroid/widget/Editor$TextViewPositionListener;->updatePosition(IIZZ)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 3251
    :catch_0
    move-exception v1

    .line 3252
    .local v1, "e":Landroid/view/WindowManager$BadTokenException;
    const-string/jumbo v7, "Editor"

    const-string/jumbo v8, "Occurred BadTokenException by position update timing."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3253
    invoke-virtual {v1}, Landroid/view/WindowManager$BadTokenException;->printStackTrace()V

    goto :goto_1

    .line 3260
    .end local v1    # "e":Landroid/view/WindowManager$BadTokenException;
    .end local v5    # "positionListener":Landroid/widget/Editor$TextViewPositionListener;
    :cond_7
    iput-boolean v11, p0, Landroid/widget/Editor$PositionListener;->mScrollHasChanged:Z

    .line 3261
    const/4 v7, 0x1

    return v7
.end method

.method public onScrollChanged()V
    .locals 1

    .prologue
    .line 3311
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor$PositionListener;->mScrollHasChanged:Z

    .line 3310
    return-void
.end method

.method public removeSubscriber(Landroid/widget/Editor$TextViewPositionListener;)V
    .locals 4
    .param p1, "positionListener"    # Landroid/widget/Editor$TextViewPositionListener;

    .prologue
    .line 3163
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x7

    if-ge v0, v2, :cond_0

    .line 3164
    iget-object v2, p0, Landroid/widget/Editor$PositionListener;->mPositionListeners:[Landroid/widget/Editor$TextViewPositionListener;

    aget-object v2, v2, v0

    if-ne v2, p1, :cond_2

    .line 3165
    iget-object v2, p0, Landroid/widget/Editor$PositionListener;->mPositionListeners:[Landroid/widget/Editor$TextViewPositionListener;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 3166
    iget v2, p0, Landroid/widget/Editor$PositionListener;->mNumberOfListeners:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/widget/Editor$PositionListener;->mNumberOfListeners:I

    .line 3177
    :cond_0
    iget v2, p0, Landroid/widget/Editor$PositionListener;->mNumberOfListeners:I

    if-nez v2, :cond_1

    .line 3178
    iget-object v2, p0, Landroid/widget/Editor$PositionListener;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 3179
    .local v1, "vto":Landroid/view/ViewTreeObserver;
    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 3162
    .end local v1    # "vto":Landroid/view/ViewTreeObserver;
    :cond_1
    return-void

    .line 3163
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
