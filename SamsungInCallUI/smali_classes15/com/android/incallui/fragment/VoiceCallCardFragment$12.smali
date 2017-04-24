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

    iput-object p1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment$12;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    iput-object p2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment$12;->val$observer:Landroid/view/ViewTreeObserver;

    iput p3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment$12;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$12;->val$observer:Landroid/view/ViewTreeObserver;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v24

    if-nez v24, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$12;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->isAdded()Z

    move-result v24

    if-eqz v24, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v24

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-static/range {v24 .. v26}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Lcom/android/incallui/Call;->getState()I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$12;->val$observer:Landroid/view/ViewTreeObserver;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const-string v24, "setCallCardPriority..."

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$12;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallStateContainer:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-virtual/range {v24 .. v26}, Landroid/view/View;->measure(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$12;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallStateContainer:Landroid/view/View;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getMeasuredHeight()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$12;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryNameLayout:Landroid/view/ViewGroup;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/ViewGroup;->getHeight()I

    move-result v11

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

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$12;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mThirdPriorityInfoLayout:Landroid/view/View;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getHeight()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$12;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mForthPriorityInfoLayout:Landroid/view/View;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getHeight()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$12;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoView:Lcom/android/incallui/fragment/view/CallCardCallerInfoView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->getERIHeight()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$12;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhotoContainer:Landroid/view/View;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getHeight()I

    move-result v13

    const-wide/16 v4, 0x0

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

    const/16 v24, 0x8

    move/from16 v0, v21

    move/from16 v1, v24

    if-ne v0, v1, :cond_9

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

    add-double v18, v18, v4

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

    cmpg-double v24, v18, v4

    if-gtz v24, :cond_b

    if-eqz v12, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$12;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mForthPriorityInfoLayout:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x8

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$12;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mThirdPriorityInfoLayout:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$12;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setVisibility(I)V

    int-to-double v0, v12

    move-wide/from16 v24, v0

    add-double v18, v18, v24

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

    :cond_5
    cmpg-double v24, v18, v4

    if-gtz v24, :cond_6

    if-eqz v23, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$12;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mThirdPriorityInfoLayout:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x8

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$12;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setVisibility(I)V

    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v24, v0

    add-double v18, v18, v24

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

    :cond_6
    cmpg-double v24, v18, v4

    if-gtz v24, :cond_7

    if-nez v20, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$12;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x8

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setVisibility(I)V

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

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$12;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallNumberAndLabelDummy:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setVisibility(I)V

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

    iget v0, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    add-double v4, v4, v24

    goto/16 :goto_2

    :cond_a
    const-wide/16 v24, 0x0

    cmpl-double v24, v4, v24

    if-eqz v24, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$12;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x4

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setVisibility(I)V

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v24, v0

    add-double v18, v18, v24

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

    :cond_b
    if-eqz v12, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$12;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mForthPriorityInfoLayout:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    if-eqz v23, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$12;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mThirdPriorityInfoLayout:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    if-eqz v20, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$12;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

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
