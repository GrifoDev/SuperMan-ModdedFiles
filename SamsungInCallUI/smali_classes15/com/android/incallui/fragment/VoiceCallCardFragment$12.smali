.class Lcom/android/incallui/fragment/VoiceCallCardFragment$12;
.super Ljava/lang/Object;
.source "VoiceCallCardFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/fragment/VoiceCallCardFragment;->setCallCardPriority(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

.field final synthetic val$observer:Landroid/view/ViewTreeObserver;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/android/incallui/fragment/VoiceCallCardFragment;Landroid/view/ViewTreeObserver;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/fragment/VoiceCallCardFragment;

    .prologue
    .line 2405
    iput-object p1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment$12;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    iput-object p2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment$12;->val$observer:Landroid/view/ViewTreeObserver;

    iput p3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment$12;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 28

    .prologue
    .line 2408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$12;->val$observer:Landroid/view/ViewTreeObserver;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v24

    if-nez v24, :cond_1

    .line 2490
    :cond_0
    :goto_0
    return-void

    .line 2411
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$12;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->isAdded()Z

    move-result v24

    if-eqz v24, :cond_0

    .line 2414
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v24

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-static/range {v24 .. v26}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v7

    .line 2415
    .local v7, "call":Lcom/android/incallui/Call;
    if-eqz v7, :cond_0

    .line 2417
    invoke-virtual {v7}, Lcom/android/incallui/Call;->getState()I

    move-result v21

    .line 2418
    .local v21, "state":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$12;->val$observer:Landroid/view/ViewTreeObserver;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2420
    const-string v24, "setCallCardPriority..."

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$12;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallStateContainer:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-virtual/range {v24 .. v26}, Landroid/view/View;->measure(II)V

    .line 2422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$12;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallStateContainer:Landroid/view/View;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getMeasuredHeight()I

    move-result v22

    .line 2423
    .local v22, "stateHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$12;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryNameLayout:Landroid/view/ViewGroup;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/ViewGroup;->getHeight()I

    move-result v11

    .line 2424
    .local v11, "firstLineHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$12;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getVisibility()I

    move-result v24

    const/16 v25, 0x8

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_8

    const/16 v20, 0x0

    .line 2425
    .local v20, "secondLineHeight":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$12;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mThirdPriorityInfoLayout:Landroid/view/View;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getHeight()I

    move-result v23

    .line 2426
    .local v23, "thirdLineHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$12;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mForthPriorityInfoLayout:Landroid/view/View;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getHeight()I

    move-result v12

    .line 2427
    .local v12, "forthLineHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$12;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoView:Lcom/android/incallui/fragment/view/CallCardCallerInfoView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->getERIHeight()I

    move-result v10

    .line 2428
    .local v10, "eriHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$12;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhotoContainer:Landroid/view/View;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getHeight()I

    move-result v13

    .line 2430
    .local v13, "photoHeight":I
    const-wide/16 v4, 0x0

    .line 2431
    .local v4, "belowButtonHeight":D
    const/16 v24, 0x8

    move/from16 v0, v21

    move/from16 v1, v24

    if-eq v0, v1, :cond_2

    const/16 v24, 0x9

    move/from16 v0, v21

    move/from16 v1, v24

    if-eq v0, v1, :cond_2

    const/16 v24, 0xa

    move/from16 v0, v21

    move/from16 v1, v24

    if-ne v0, v1, :cond_3

    .line 2432
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$12;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0a01f7

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v24

    move/from16 v0, v24

    float-to-double v4, v0

    .line 2433
    const/16 v24, 0x8

    move/from16 v0, v21

    move/from16 v1, v24

    if-ne v0, v1, :cond_9

    .line 2434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$12;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0a0083

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v24

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v24, v0

    add-double v4, v4, v24

    .line 2440
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$12;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mDisplayHeight:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    const-wide v26, 0x3fdccccccccccccdL    # 0.45

    mul-double v8, v24, v26

    .line 2442
    .local v8, "callerInfoHeight":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$12;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0a0093

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v24

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v16, v0

    .line 2443
    .local v16, "marginTop":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$12;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0a01e8

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v24

    move/from16 v0, v24

    float-to-double v14, v0

    .line 2444
    .local v14, "indicator":D
    add-int v24, v22, v11

    add-int v24, v24, v20

    add-int v24, v24, v23

    add-int v24, v24, v12

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    add-double v24, v24, v16

    add-double v24, v24, v14

    int-to-double v0, v10

    move-wide/from16 v26, v0

    add-double v24, v24, v26

    int-to-double v0, v13

    move-wide/from16 v26, v0

    add-double v24, v24, v26

    sub-double v18, v8, v24

    .line 2445
    .local v18, "remainArea":D
    const/16 v24, 0x8

    move/from16 v0, v21

    move/from16 v1, v24

    if-eq v0, v1, :cond_4

    const/16 v24, 0x9

    move/from16 v0, v21

    move/from16 v1, v24

    if-eq v0, v1, :cond_4

    const/16 v24, 0xa

    move/from16 v0, v21

    move/from16 v1, v24

    if-eq v0, v1, :cond_4

    .line 2446
    add-double v18, v18, v4

    .line 2448
    :cond_4
    const-string v24, "VoiceCallCardFragment"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, " remainArea "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2450
    cmpg-double v24, v18, v4

    if-gtz v24, :cond_b

    .line 2451
    if-eqz v12, :cond_5

    .line 2452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$12;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mForthPriorityInfoLayout:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x8

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setVisibility(I)V

    .line 2453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$12;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mThirdPriorityInfoLayout:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setVisibility(I)V

    .line 2454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$12;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setVisibility(I)V

    .line 2455
    int-to-double v0, v12

    move-wide/from16 v24, v0

    add-double v18, v18, v24

    .line 2456
    const-string v24, "VoiceCallCardFragment"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "4th line is gone "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2458
    :cond_5
    cmpg-double v24, v18, v4

    if-gtz v24, :cond_6

    if-eqz v23, :cond_6

    .line 2459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$12;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mThirdPriorityInfoLayout:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x8

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setVisibility(I)V

    .line 2460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$12;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setVisibility(I)V

    .line 2461
    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v24, v0

    add-double v18, v18, v24

    .line 2462
    const-string v24, "VoiceCallCardFragment"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "3rd line is gone "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2464
    :cond_6
    cmpg-double v24, v18, v4

    if-gtz v24, :cond_7

    .line 2465
    if-nez v20, :cond_a

    .line 2466
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$12;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x8

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setVisibility(I)V

    .line 2467
    const-string v24, "VoiceCallCardFragment"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "2nd line is gone "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2482
    :cond_7
    :goto_3
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/incallui/UiAdapter;->isInMultiWindowMode()Z

    move-result v24

    if-eqz v24, :cond_e

    if-nez v12, :cond_e

    if-nez v23, :cond_e

    if-nez v20, :cond_e

    .line 2484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$12;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallNumberAndLabelDummy:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setVisibility(I)V

    .line 2489
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$12;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$12;->val$type:I

    move/from16 v25, v0

    # invokes: Lcom/android/incallui/fragment/VoiceCallCardFragment;->arrangeBelowButtonLayout(I)V
    invoke-static/range {v24 .. v25}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->access$500(Lcom/android/incallui/fragment/VoiceCallCardFragment;I)V

    goto/16 :goto_0

    .line 2424
    .end local v4    # "belowButtonHeight":D
    .end local v8    # "callerInfoHeight":D
    .end local v10    # "eriHeight":I
    .end local v12    # "forthLineHeight":I
    .end local v13    # "photoHeight":I
    .end local v14    # "indicator":D
    .end local v16    # "marginTop":D
    .end local v18    # "remainArea":D
    .end local v20    # "secondLineHeight":I
    .end local v23    # "thirdLineHeight":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$12;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getHeight()I

    move-result v20

    goto/16 :goto_1

    .line 2436
    .restart local v4    # "belowButtonHeight":D
    .restart local v10    # "eriHeight":I
    .restart local v12    # "forthLineHeight":I
    .restart local v13    # "photoHeight":I
    .restart local v20    # "secondLineHeight":I
    .restart local v23    # "thirdLineHeight":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$12;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2437
    .local v6, "buttonLP":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v0, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    add-double v4, v4, v24

    goto/16 :goto_2

    .line 2468
    .end local v6    # "buttonLP":Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v8    # "callerInfoHeight":D
    .restart local v14    # "indicator":D
    .restart local v16    # "marginTop":D
    .restart local v18    # "remainArea":D
    :cond_a
    const-wide/16 v24, 0x0

    cmpl-double v24, v4, v24

    if-eqz v24, :cond_7

    .line 2469
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$12;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x4

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setVisibility(I)V

    .line 2470
    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v24, v0

    add-double v18, v18, v24

    .line 2471
    const-string v24, "VoiceCallCardFragment"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "2nd line is invisible "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2475
    :cond_b
    if-eqz v12, :cond_c

    .line 2476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$12;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mForthPriorityInfoLayout:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setVisibility(I)V

    .line 2477
    :cond_c
    if-eqz v23, :cond_d

    .line 2478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$12;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mThirdPriorityInfoLayout:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setVisibility(I)V

    .line 2479
    :cond_d
    if-eqz v20, :cond_7

    .line 2480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$12;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 2486
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$12;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallNumberAndLabelDummy:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x8

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4
.end method
