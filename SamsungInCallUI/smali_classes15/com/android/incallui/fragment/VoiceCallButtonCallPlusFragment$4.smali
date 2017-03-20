.class Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;
.super Ljava/lang/Object;
.source "VoiceCallButtonCallPlusFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    .prologue
    .line 842
    iput-object p1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 24
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 845
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v8

    .line 846
    .local v8, "incallState":Lcom/android/incallui/InCallPresenter$InCallState;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v7

    .line 847
    .local v7, "id":I
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "onClick(View "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", id "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ")..."

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 848
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    move-object/from16 v19, v0

    # getter for: Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mHandler:Landroid/os/Handler;
    invoke-static/range {v19 .. v19}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->access$1600(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)Landroid/os/Handler;

    move-result-object v19

    const/16 v20, 0x65

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 849
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    move-object/from16 v19, v0

    # getter for: Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mHandler:Landroid/os/Handler;
    invoke-static/range {v19 .. v19}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->access$1600(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)Landroid/os/Handler;

    move-result-object v19

    const/16 v20, 0x65

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->removeMessages(I)V

    .line 851
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    move-object/from16 v19, v0

    # getter for: Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mHandler:Landroid/os/Handler;
    invoke-static/range {v19 .. v19}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->access$1600(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)Landroid/os/Handler;

    move-result-object v19

    const/16 v20, 0x66

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 852
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    move-object/from16 v19, v0

    # getter for: Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mHandler:Landroid/os/Handler;
    invoke-static/range {v19 .. v19}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->access$1600(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)Landroid/os/Handler;

    move-result-object v19

    const/16 v20, 0x66

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->removeMessages(I)V

    .line 854
    :cond_1
    sparse-switch v7, :sswitch_data_0

    .line 1068
    const-string v19, "onClick: unexpected"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->wtf(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1071
    :cond_2
    :goto_0
    return-void

    .line 856
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getContext()Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getContext()Landroid/content/Context;

    const-string v20, "layout_inflater"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/LayoutInflater;

    .line 857
    .local v9, "inflater":Landroid/view/LayoutInflater;
    const v19, 0x7f040168

    const/16 v20, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v9, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 858
    .local v12, "popupView":Landroid/view/View;
    const v19, 0x7f100411

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 859
    .local v10, "mCallPlusimage":Landroid/widget/ImageView;
    new-instance v19, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4$1;-><init>(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;)V

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 871
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    move-object/from16 v19, v0

    # getter for: Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->isoutgoing:Z
    invoke-static/range {v19 .. v19}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->access$1700(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)Z

    move-result v19

    if-nez v19, :cond_3

    sget-object v19, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v0, v19

    if-ne v8, v0, :cond_7

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    move-object/from16 v19, v0

    # getter for: Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->orientation:I
    invoke-static/range {v19 .. v19}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->access$1800(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)I

    move-result v19

    const/16 v20, 0x8

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    move-object/from16 v19, v0

    # getter for: Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->orientation:I
    invoke-static/range {v19 .. v19}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->access$1800(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)I

    move-result v19

    const/16 v20, 0x6

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    move-object/from16 v19, v0

    # getter for: Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->orientation:I
    invoke-static/range {v19 .. v19}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->access$1800(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)I

    move-result v19

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_7

    .line 872
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->rotated:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 876
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0a0441

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v16, v0

    .line 877
    .local v16, "width":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0a043d

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v19

    move/from16 v0, v19

    float-to-int v5, v0

    .line 878
    .local v5, "height":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0a043e

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    mul-int/lit8 v17, v19, -0x1

    .line 879
    .local v17, "width_margin":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0a043e

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    mul-int/lit8 v18, v19, -0x1

    .line 880
    .local v18, "width_margin_img_only":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0a0440

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    mul-int/lit8 v6, v19, -0x1

    .line 882
    .local v6, "height_margin":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->popupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v19, v0

    if-nez v19, :cond_5

    .line 883
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    move-object/from16 v19, v0

    new-instance v20, Landroid/widget/PopupWindow;

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-direct {v0, v12, v1, v5}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->popupWindow:Landroid/widget/PopupWindow;

    .line 884
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->popupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v19

    if-nez v19, :cond_2

    .line 885
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->popupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mEndCallButton:Landroid/widget/ImageButton;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2, v6}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 886
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    move-object/from16 v19, v0

    # getter for: Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;
    invoke-static/range {v19 .. v19}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->access$100(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    move-result-object v19

    if-eqz v19, :cond_6

    .line 887
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    move-object/from16 v19, v0

    # getter for: Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;
    invoke-static/range {v19 .. v19}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->access$100(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;->setScrollable(Z)V

    .line 888
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    move-object/from16 v19, v0

    # getter for: Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager_out:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;
    invoke-static/range {v19 .. v19}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->access$300(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    move-result-object v19

    if-eqz v19, :cond_2

    .line 889
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    move-object/from16 v19, v0

    # getter for: Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager_out:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;
    invoke-static/range {v19 .. v19}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->access$300(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;->setScrollable(Z)V

    goto/16 :goto_0

    .line 874
    .end local v5    # "height":I
    .end local v6    # "height_margin":I
    .end local v16    # "width":I
    .end local v17    # "width_margin":I
    .end local v18    # "width_margin_img_only":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    move-object/from16 v19, v0

    # getter for: Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mBackground:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->access$1900(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    goto/16 :goto_1

    .line 894
    .end local v9    # "inflater":Landroid/view/LayoutInflater;
    .end local v10    # "mCallPlusimage":Landroid/widget/ImageView;
    .end local v12    # "popupView":Landroid/view/View;
    :sswitch_1
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Google maps with co-ordinates : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    move-object/from16 v20, v0

    # getter for: Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->latitude:Ljava/lang/Double;
    invoke-static/range {v20 .. v20}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->access$2000(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)Ljava/lang/Double;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    move-object/from16 v20, v0

    # getter for: Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->longitude:Ljava/lang/Double;
    invoke-static/range {v20 .. v20}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->access$2100(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)Ljava/lang/Double;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 895
    sget-object v19, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v20, "geo:%f,%f?q=%f,%f"

    const/16 v21, 0x4

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    move-object/from16 v23, v0

    # getter for: Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->latitude:Ljava/lang/Double;
    invoke-static/range {v23 .. v23}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->access$2000(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)Ljava/lang/Double;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    move-object/from16 v23, v0

    # getter for: Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->longitude:Ljava/lang/Double;
    invoke-static/range {v23 .. v23}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->access$2100(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)Ljava/lang/Double;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    move-object/from16 v23, v0

    # getter for: Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->latitude:Ljava/lang/Double;
    invoke-static/range {v23 .. v23}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->access$2000(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)Ljava/lang/Double;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    move-object/from16 v23, v0

    # getter for: Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->longitude:Ljava/lang/Double;
    invoke-static/range {v23 .. v23}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->access$2100(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)Ljava/lang/Double;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v19 .. v21}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 896
    .local v15, "uri":Ljava/lang/String;
    new-instance v11, Landroid/content/Intent;

    const-string v19, "android.intent.action.VIEW"

    invoke-static {v15}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v11, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 897
    .local v11, "mapIntent":Landroid/content/Intent;
    const-string v19, "com.google.android.apps.maps"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 898
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v19

    if-eqz v19, :cond_2

    .line 899
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 934
    .end local v11    # "mapIntent":Landroid/content/Intent;
    .end local v15    # "uri":Ljava/lang/String;
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    # invokes: Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->checkThenModify(I)V
    invoke-static {v0, v7}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->access$2200(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;I)V

    goto/16 :goto_0

    .line 937
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getContext()Landroid/content/Context;

    move-result-object v19

    const-string v20, "com.android.incallui"

    const-string v21, "VOCB"

    const-string v22, "ADDC"

    invoke-static/range {v19 .. v22}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 941
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v19

    check-cast v19, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual/range {v19 .. v19}, Lcom/android/incallui/CallButtonPresenter;->addCallClicked()V

    goto/16 :goto_0

    .line 944
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getContext()Landroid/content/Context;

    move-result-object v19

    const-string v20, "com.android.incallui"

    const-string v21, "RECG"

    invoke-static/range {v19 .. v21}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 947
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    move-object/from16 v19, v0

    # invokes: Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->recordClicked()V
    invoke-static/range {v19 .. v19}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->access$2300(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)V

    goto/16 :goto_0

    .line 950
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    # invokes: Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->checkThenModify(I)V
    invoke-static {v0, v7}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->access$2200(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;I)V

    goto/16 :goto_0

    .line 953
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getContext()Landroid/content/Context;

    move-result-object v19

    const-string v20, "com.android.incallui"

    const-string v21, "VOCB"

    const-string v22, "EXVL"

    invoke-static/range {v19 .. v22}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 957
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->extraVolumeClicked()V

    goto/16 :goto_0

    .line 960
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getContext()Landroid/content/Context;

    move-result-object v19

    const-string v20, "com.android.incallui"

    const-string v21, "VOCB"

    const-string v22, "BLTH"

    invoke-static/range {v19 .. v22}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 964
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->bluetoothClicked()V

    goto/16 :goto_0

    .line 967
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getContext()Landroid/content/Context;

    move-result-object v19

    const-string v20, "com.android.incallui"

    const-string v21, "VOCB"

    const-string v22, "SPKR"

    invoke-static/range {v19 .. v22}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 971
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v19

    check-cast v19, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual/range {v19 .. v19}, Lcom/android/incallui/CallButtonPresenter;->speakerClicked()V

    goto/16 :goto_0

    .line 974
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getContext()Landroid/content/Context;

    move-result-object v19

    const-string v20, "com.android.incallui"

    const-string v21, "VOCB"

    const-string v22, "VOKP"

    invoke-static/range {v19 .. v22}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 978
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v19

    check-cast v19, Lcom/android/incallui/CallButtonPresenter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->isDialpadVisible()Z

    move-result v20

    if-nez v20, :cond_8

    const/16 v20, 0x1

    :goto_2
    invoke-virtual/range {v19 .. v20}, Lcom/android/incallui/CallButtonPresenter;->showDialpadClicked(Z)V

    goto/16 :goto_0

    :cond_8
    const/16 v20, 0x0

    goto :goto_2

    .line 981
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getContext()Landroid/content/Context;

    move-result-object v19

    const-string v20, "com.android.incallui"

    const-string v21, "VOCB"

    const-string v22, "MUTE"

    invoke-static/range {v19 .. v22}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 985
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v19

    check-cast v19, Lcom/android/incallui/CallButtonPresenter;

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/incallui/AudioModeProvider;->getMute()Z

    move-result v20

    if-nez v20, :cond_9

    const/16 v20, 0x1

    :goto_3
    invoke-virtual/range {v19 .. v20}, Lcom/android/incallui/CallButtonPresenter;->muteClicked(Z)V

    goto/16 :goto_0

    :cond_9
    const/16 v20, 0x0

    goto :goto_3

    .line 988
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v19

    check-cast v19, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual/range {v19 .. v19}, Lcom/android/incallui/CallButtonPresenter;->endCallClicked()V

    goto/16 :goto_0

    .line 991
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getContext()Landroid/content/Context;

    move-result-object v19

    const-string v20, "com.android.incallui"

    const-string v21, "BTNX"

    const-string v22, "Email"

    invoke-static/range {v19 .. v22}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 995
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    move-object/from16 v19, v0

    # invokes: Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->emailClicked()V
    invoke-static/range {v19 .. v19}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->access$2400(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)V

    goto/16 :goto_0

    .line 998
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getContext()Landroid/content/Context;

    move-result-object v19

    const-string v20, "com.android.incallui"

    const-string v21, "BTNX"

    const-string v22, "Message"

    invoke-static/range {v19 .. v22}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1002
    invoke-static {}, Lcom/android/incallui/util/PackageHelpers;->launchMessage()V

    goto/16 :goto_0

    .line 1005
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getContext()Landroid/content/Context;

    move-result-object v19

    const-string v20, "com.android.incallui"

    const-string v21, "BTNX"

    const-string v22, "Internet"

    invoke-static/range {v19 .. v22}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1009
    invoke-static {}, Lcom/android/incallui/util/PackageHelpers;->launchInternet()V

    goto/16 :goto_0

    .line 1012
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getContext()Landroid/content/Context;

    move-result-object v19

    const-string v20, "com.android.incallui"

    const-string v21, "BTNX"

    const-string v22, "Contact"

    invoke-static/range {v19 .. v22}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    invoke-static {}, Lcom/android/incallui/util/PackageHelpers;->launchContacts()V

    goto/16 :goto_0

    .line 1019
    :sswitch_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getContext()Landroid/content/Context;

    move-result-object v19

    const-string v20, "com.android.incallui"

    const-string v21, "BTNX"

    const-string v22, "Planner"

    invoke-static/range {v19 .. v22}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    invoke-static {}, Lcom/android/incallui/util/PackageHelpers;->launchPlanner()V

    goto/16 :goto_0

    .line 1026
    :sswitch_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getContext()Landroid/content/Context;

    move-result-object v19

    const-string v20, "com.android.incallui"

    const-string v21, "BTNX"

    const-string v22, "Memo"

    invoke-static/range {v19 .. v22}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1030
    invoke-static {}, Lcom/android/incallui/util/PackageHelpers;->launchMemo()V

    goto/16 :goto_0

    .line 1033
    :sswitch_12
    const-string v19, "ims_crane"

    invoke-static/range {v19 .. v19}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 1034
    const-string v19, "Launch share screen"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1036
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 1037
    .local v4, "context":Landroid/content/Context;
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v3

    .line 1039
    .local v3, "call":Lcom/android/incallui/Call;
    new-instance v14, Landroid/content/Intent;

    const-string v19, "android.intent.action.VIEW"

    move-object/from16 v0, v19

    invoke-direct {v14, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1040
    .local v14, "smsIntent":Landroid/content/Intent;
    invoke-static {v4}, Landroid/provider/Telephony$Sms;->getDefaultSmsPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1041
    const-string v19, "sms"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v3}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getPhoneNumber(Landroid/content/Context;Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1042
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->startActivity(Landroid/content/Intent;)V

    .line 1044
    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    .line 1045
    .local v13, "serviceIntent":Landroid/content/Intent;
    const-string v19, "com.samsung.crane"

    const-string v20, "com.samsung.crane.contentshare.ShareOverlayService"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1046
    const-string v19, "phone_number"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v3}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getPhoneNumber(Landroid/content/Context;Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1047
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getActivity()Landroid/app/Activity;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 1049
    .end local v3    # "call":Lcom/android/incallui/Call;
    .end local v4    # "context":Landroid/content/Context;
    .end local v13    # "serviceIntent":Landroid/content/Intent;
    .end local v14    # "smsIntent":Landroid/content/Intent;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v19

    check-cast v19, Lcom/android/incallui/CallButtonPresenter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    move-object/from16 v20, v0

    # getter for: Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mAction:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->access$2500(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    move-object/from16 v21, v0

    # getter for: Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mUri:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->access$2600(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Lcom/android/incallui/CallButtonPresenter;->callPlusClicked(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1057
    :sswitch_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    move-object/from16 v19, v0

    # getter for: Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;
    invoke-static/range {v19 .. v19}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->access$100(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    move-result-object v19

    if-eqz v19, :cond_2

    .line 1058
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    move-object/from16 v19, v0

    # getter for: Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;
    invoke-static/range {v19 .. v19}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->access$100(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;->setCurrentItem(I)V

    goto/16 :goto_0

    .line 1063
    :sswitch_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    move-object/from16 v19, v0

    # getter for: Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;
    invoke-static/range {v19 .. v19}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->access$100(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    move-result-object v19

    if-eqz v19, :cond_2

    .line 1064
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    move-object/from16 v19, v0

    # getter for: Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;
    invoke-static/range {v19 .. v19}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->access$100(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    move-result-object v19

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;->setCurrentItem(I)V

    goto/16 :goto_0

    .line 854
    :sswitch_data_0
    .sparse-switch
        0x7f100096 -> :sswitch_a
        0x7f100097 -> :sswitch_9
        0x7f10019d -> :sswitch_12
        0x7f1002fa -> :sswitch_5
        0x7f100348 -> :sswitch_4
        0x7f10037d -> :sswitch_b
        0x7f10037e -> :sswitch_8
        0x7f10038a -> :sswitch_3
        0x7f1003e9 -> :sswitch_13
        0x7f1003eb -> :sswitch_14
        0x7f1003f3 -> :sswitch_2
        0x7f1003f6 -> :sswitch_6
        0x7f1003f9 -> :sswitch_7
        0x7f100403 -> :sswitch_1
        0x7f100405 -> :sswitch_0
        0x7f100409 -> :sswitch_c
        0x7f10040b -> :sswitch_d
        0x7f10040c -> :sswitch_e
        0x7f10040e -> :sswitch_f
        0x7f10040f -> :sswitch_10
        0x7f100410 -> :sswitch_11
    .end sparse-switch
.end method
