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

    iput-object p1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 17

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v3

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onClick(View "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", id "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")..."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    # getter for: Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v12}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->access$1600(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)Landroid/os/Handler;

    move-result-object v12

    const/16 v13, 0x65

    invoke-virtual {v12, v13}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v12

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    # getter for: Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v12}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->access$1600(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)Landroid/os/Handler;

    move-result-object v12

    const/16 v13, 0x65

    invoke-virtual {v12, v13}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    # getter for: Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v12}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->access$1600(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)Landroid/os/Handler;

    move-result-object v12

    const/16 v13, 0x66

    invoke-virtual {v12, v13}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v12

    if-eqz v12, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    # getter for: Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v12}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->access$1600(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)Landroid/os/Handler;

    move-result-object v12

    const/16 v13, 0x66

    invoke-virtual {v12, v13}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    sparse-switch v3, :sswitch_data_0

    const-string v12, "onClick: unexpected"

    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lcom/android/incallui/Log;->wtf(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void

    :sswitch_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    invoke-virtual {v12}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getContext()Landroid/content/Context;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    invoke-virtual {v13}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getContext()Landroid/content/Context;

    const-string v13, "layout_inflater"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    const v12, 0x7f040168

    const/4 v13, 0x0

    invoke-virtual {v5, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    const v12, 0x7f100410

    invoke-virtual {v8, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    new-instance v12, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4$1;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4$1;-><init>(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;)V

    invoke-virtual {v8, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    # getter for: Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->isoutgoing:Z
    invoke-static {v12}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->access$1700(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)Z

    move-result v12

    if-nez v12, :cond_3

    sget-object v12, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v4, v12, :cond_7

    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    # getter for: Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->orientation:I
    invoke-static {v12}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->access$1800(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)I

    move-result v12

    const/16 v13, 0x8

    if-eq v12, v13, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    # getter for: Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->orientation:I
    invoke-static {v12}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->access$1800(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)I

    move-result v12

    const/4 v13, 0x6

    if-eq v12, v13, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    # getter for: Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->orientation:I
    invoke-static {v12}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->access$1800(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)I

    move-result v12

    const/4 v13, 0x3

    if-ne v12, v13, :cond_7

    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    iget-object v12, v12, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->rotated:Landroid/graphics/Bitmap;

    invoke-virtual {v6, v12}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    iget-object v12, v12, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->popupWindow:Landroid/widget/PopupWindow;

    if-nez v12, :cond_5

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    new-instance v13, Landroid/widget/PopupWindow;

    const/16 v14, 0x578

    const/16 v15, 0x73a

    invoke-direct {v13, v8, v14, v15}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v13, v12, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->popupWindow:Landroid/widget/PopupWindow;

    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    iget-object v12, v12, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v12}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v12

    if-nez v12, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    iget-object v12, v12, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->popupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    iget-object v13, v13, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mEndCallButton:Landroid/widget/ImageButton;

    const/16 v14, -0x235

    const/16 v15, 0x19

    invoke-virtual {v12, v13, v14, v15}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    # getter for: Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;
    invoke-static {v12}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->access$100(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    move-result-object v12

    if-eqz v12, :cond_6

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    # getter for: Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;
    invoke-static {v12}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->access$100(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;->setScrollable(Z)V

    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    # getter for: Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager_out:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;
    invoke-static {v12}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->access$300(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    move-result-object v12

    if-eqz v12, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    # getter for: Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager_out:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;
    invoke-static {v12}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->access$300(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;->setScrollable(Z)V

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    # getter for: Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mBackground:Ljava/lang/String;
    invoke-static {v12}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->access$1900(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v6, v12}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    goto :goto_1

    :sswitch_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Google maps with co-ordinates : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    # getter for: Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->latitude:Ljava/lang/Double;
    invoke-static {v13}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->access$2000(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)Ljava/lang/Double;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    # getter for: Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->longitude:Ljava/lang/Double;
    invoke-static {v13}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->access$2100(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)Ljava/lang/Double;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v12, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v13, "geo:%f,%f?q=%f,%f"

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    move-object/from16 v16, v0

    # getter for: Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->latitude:Ljava/lang/Double;
    invoke-static/range {v16 .. v16}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->access$2000(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)Ljava/lang/Double;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    move-object/from16 v16, v0

    # getter for: Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->longitude:Ljava/lang/Double;
    invoke-static/range {v16 .. v16}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->access$2100(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)Ljava/lang/Double;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    move-object/from16 v16, v0

    # getter for: Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->latitude:Ljava/lang/Double;
    invoke-static/range {v16 .. v16}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->access$2000(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)Ljava/lang/Double;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    move-object/from16 v16, v0

    # getter for: Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->longitude:Ljava/lang/Double;
    invoke-static/range {v16 .. v16}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->access$2100(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)Ljava/lang/Double;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v12, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    new-instance v7, Landroid/content/Intent;

    const-string v12, "android.intent.action.VIEW"

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    invoke-direct {v7, v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v12, "com.google.android.apps.maps"

    invoke-virtual {v7, v12}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    invoke-virtual {v12}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    invoke-virtual {v7, v12}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v12

    if-eqz v12, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    invoke-virtual {v12, v7}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :sswitch_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    # invokes: Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->checkThenModify(I)V
    invoke-static {v12, v3}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->access$2200(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;I)V

    goto/16 :goto_0

    :sswitch_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    invoke-virtual {v12}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getContext()Landroid/content/Context;

    move-result-object v12

    const-string v13, "com.android.incallui"

    const-string v14, "VOCB"

    const-string v15, "ADDC"

    invoke-static {v12, v13, v14, v15}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    invoke-virtual {v12}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v12

    check-cast v12, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v12}, Lcom/android/incallui/CallButtonPresenter;->addCallClicked()V

    goto/16 :goto_0

    :sswitch_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    invoke-virtual {v12}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getContext()Landroid/content/Context;

    move-result-object v12

    const-string v13, "com.android.incallui"

    const-string v14, "RECG"

    invoke-static {v12, v13, v14}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    # invokes: Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->recordClicked()V
    invoke-static {v12}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->access$2300(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)V

    goto/16 :goto_0

    :sswitch_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    # invokes: Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->checkThenModify(I)V
    invoke-static {v12, v3}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->access$2200(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;I)V

    goto/16 :goto_0

    :sswitch_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    invoke-virtual {v12}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getContext()Landroid/content/Context;

    move-result-object v12

    const-string v13, "com.android.incallui"

    const-string v14, "VOCB"

    const-string v15, "EXVL"

    invoke-static {v12, v13, v14, v15}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    invoke-virtual {v12}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->extraVolumeClicked()V

    goto/16 :goto_0

    :sswitch_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    invoke-virtual {v12}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getContext()Landroid/content/Context;

    move-result-object v12

    const-string v13, "com.android.incallui"

    const-string v14, "VOCB"

    const-string v15, "BLTH"

    invoke-static {v12, v13, v14, v15}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    invoke-virtual {v12}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->bluetoothClicked()V

    goto/16 :goto_0

    :sswitch_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    invoke-virtual {v12}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getContext()Landroid/content/Context;

    move-result-object v12

    const-string v13, "com.android.incallui"

    const-string v14, "VOCB"

    const-string v15, "SPKR"

    invoke-static {v12, v13, v14, v15}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    invoke-virtual {v12}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v12

    check-cast v12, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v12}, Lcom/android/incallui/CallButtonPresenter;->speakerClicked()V

    goto/16 :goto_0

    :sswitch_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    invoke-virtual {v12}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getContext()Landroid/content/Context;

    move-result-object v12

    const-string v13, "com.android.incallui"

    const-string v14, "VOCB"

    const-string v15, "VOKP"

    invoke-static {v12, v13, v14, v15}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    invoke-virtual {v12}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v12

    check-cast v12, Lcom/android/incallui/CallButtonPresenter;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    invoke-virtual {v13}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->isDialpadVisible()Z

    move-result v13

    if-nez v13, :cond_8

    const/4 v13, 0x1

    :goto_2
    invoke-virtual {v12, v13}, Lcom/android/incallui/CallButtonPresenter;->showDialpadClicked(Z)V

    goto/16 :goto_0

    :cond_8
    const/4 v13, 0x0

    goto :goto_2

    :sswitch_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    invoke-virtual {v12}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getContext()Landroid/content/Context;

    move-result-object v12

    const-string v13, "com.android.incallui"

    const-string v14, "VOCB"

    const-string v15, "MUTE"

    invoke-static {v12, v13, v14, v15}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    invoke-virtual {v12}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v12

    check-cast v12, Lcom/android/incallui/CallButtonPresenter;

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/incallui/AudioModeProvider;->getMute()Z

    move-result v13

    if-nez v13, :cond_9

    const/4 v13, 0x1

    :goto_3
    invoke-virtual {v12, v13}, Lcom/android/incallui/CallButtonPresenter;->muteClicked(Z)V

    goto/16 :goto_0

    :cond_9
    const/4 v13, 0x0

    goto :goto_3

    :sswitch_b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    invoke-virtual {v12}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v12

    check-cast v12, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v12}, Lcom/android/incallui/CallButtonPresenter;->endCallClicked()V

    goto/16 :goto_0

    :sswitch_c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    invoke-virtual {v12}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getContext()Landroid/content/Context;

    move-result-object v12

    const-string v13, "com.android.incallui"

    const-string v14, "BTNX"

    const-string v15, "Email"

    invoke-static {v12, v13, v14, v15}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    # invokes: Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->emailClicked()V
    invoke-static {v12}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->access$2400(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)V

    goto/16 :goto_0

    :sswitch_d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    invoke-virtual {v12}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getContext()Landroid/content/Context;

    move-result-object v12

    const-string v13, "com.android.incallui"

    const-string v14, "BTNX"

    const-string v15, "Message"

    invoke-static {v12, v13, v14, v15}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/util/PackageHelpers;->launchMessage()V

    goto/16 :goto_0

    :sswitch_e
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    invoke-virtual {v12}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getContext()Landroid/content/Context;

    move-result-object v12

    const-string v13, "com.android.incallui"

    const-string v14, "BTNX"

    const-string v15, "Internet"

    invoke-static {v12, v13, v14, v15}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/util/PackageHelpers;->launchInternet()V

    goto/16 :goto_0

    :sswitch_f
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    invoke-virtual {v12}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getContext()Landroid/content/Context;

    move-result-object v12

    const-string v13, "com.android.incallui"

    const-string v14, "BTNX"

    const-string v15, "Contact"

    invoke-static {v12, v13, v14, v15}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/util/PackageHelpers;->launchContacts()V

    goto/16 :goto_0

    :sswitch_10
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    invoke-virtual {v12}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getContext()Landroid/content/Context;

    move-result-object v12

    const-string v13, "com.android.incallui"

    const-string v14, "BTNX"

    const-string v15, "Planner"

    invoke-static {v12, v13, v14, v15}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/util/PackageHelpers;->launchPlanner()V

    goto/16 :goto_0

    :sswitch_11
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    invoke-virtual {v12}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getContext()Landroid/content/Context;

    move-result-object v12

    const-string v13, "com.android.incallui"

    const-string v14, "BTNX"

    const-string v15, "Memo"

    invoke-static {v12, v13, v14, v15}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/util/PackageHelpers;->launchMemo()V

    goto/16 :goto_0

    :sswitch_12
    const-string v12, "ims_crane"

    invoke-static {v12}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_a

    const-string v12, "Launch share screen"

    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    new-instance v10, Landroid/content/Intent;

    const-string v12, "android.intent.action.VIEW"

    invoke-direct {v10, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/provider/Telephony$Sms;->getDefaultSmsPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v12, "sms"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    invoke-virtual {v13, v2, v1}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getPhoneNumber(Landroid/content/Context;Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    invoke-virtual {v12, v10}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->startActivity(Landroid/content/Intent;)V

    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    const-string v12, "com.samsung.crane"

    const-string v13, "com.samsung.crane.contentshare.ShareOverlayService"

    invoke-virtual {v9, v12, v13}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    invoke-virtual {v12}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12, v9}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    :cond_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    invoke-virtual {v12}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v12

    check-cast v12, Lcom/android/incallui/CallButtonPresenter;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    # getter for: Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mAction:Ljava/lang/String;
    invoke-static {v13}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->access$2500(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    # getter for: Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mUri:Ljava/lang/String;
    invoke-static {v14}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->access$2600(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lcom/android/incallui/CallButtonPresenter;->callPlusClicked(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_13
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    # getter for: Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;
    invoke-static {v12}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->access$100(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    move-result-object v12

    if-eqz v12, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    # getter for: Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;
    invoke-static {v12}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->access$100(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;->setCurrentItem(I)V

    goto/16 :goto_0

    :sswitch_14
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    # getter for: Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;
    invoke-static {v12}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->access$100(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    move-result-object v12

    if-eqz v12, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$4;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    # getter for: Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mPager:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;
    invoke-static {v12}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->access$100(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallViewPager;->setCurrentItem(I)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f100096 -> :sswitch_a
        0x7f100097 -> :sswitch_9
        0x7f10019d -> :sswitch_12
        0x7f1002fa -> :sswitch_5
        0x7f100347 -> :sswitch_4
        0x7f10037c -> :sswitch_b
        0x7f10037d -> :sswitch_8
        0x7f100389 -> :sswitch_3
        0x7f1003e8 -> :sswitch_13
        0x7f1003ea -> :sswitch_14
        0x7f1003f2 -> :sswitch_2
        0x7f1003f5 -> :sswitch_6
        0x7f1003f8 -> :sswitch_7
        0x7f100402 -> :sswitch_1
        0x7f100404 -> :sswitch_0
        0x7f100408 -> :sswitch_c
        0x7f10040a -> :sswitch_d
        0x7f10040b -> :sswitch_e
        0x7f10040d -> :sswitch_f
        0x7f10040e -> :sswitch_10
        0x7f10040f -> :sswitch_11
    .end sparse-switch
.end method
