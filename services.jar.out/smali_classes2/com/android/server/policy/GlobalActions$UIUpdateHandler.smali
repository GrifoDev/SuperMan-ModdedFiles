.class final Lcom/android/server/policy/GlobalActions$UIUpdateHandler;
.super Landroid/os/Handler;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UIUpdateHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/GlobalActions;


# direct methods
.method private constructor <init>(Lcom/android/server/policy/GlobalActions;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$UIUpdateHandler;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;-><init>(Lcom/android/server/policy/GlobalActions;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 18

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->what:I

    packed-switch v15, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get31()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get45()Z

    move-result v15

    if-eqz v15, :cond_1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get35(Lcom/android/server/policy/GlobalActions;)Z

    move-result v15

    if-eqz v15, :cond_6

    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get9(Lcom/android/server/policy/GlobalActions;)Landroid/app/AlertDialog;

    move-result-object v15

    if-eqz v15, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get9(Lcom/android/server/policy/GlobalActions;)Landroid/app/AlertDialog;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get45()Z

    move-result v15

    if-eqz v15, :cond_12

    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get45()Z

    move-result v15

    if-eqz v15, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-wrap4(Lcom/android/server/policy/GlobalActions;)Z

    move-result v15

    if-eqz v15, :cond_12

    :cond_2
    :goto_1
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get31()Z

    move-result v15

    if-nez v15, :cond_3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get10(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;

    move-result-object v15

    if-eqz v15, :cond_3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get10(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;->isShowing()Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get45()Z

    move-result v15

    if-eqz v15, :cond_13

    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get45()Z

    move-result v15

    if-eqz v15, :cond_3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-wrap4(Lcom/android/server/policy/GlobalActions;)Z

    move-result v15

    if-eqz v15, :cond_13

    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get18(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    move-result-object v15

    if-eqz v15, :cond_4

    const-string/jumbo v15, "GlobalActions"

    const-string/jumbo v16, "handleMessage : MESSAGE_DISMISS : Call mDialog.dismiss()"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get18(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->dismiss()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Lcom/android/server/policy/GlobalActions;->-set4(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;)Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    const/4 v15, 0x0

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-set6(Z)Z

    const/4 v15, 0x0

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-set7(Z)Z

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Lcom/android/server/policy/GlobalActions;->-set10(Lcom/android/server/policy/GlobalActions;Z)Z

    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get32()Z

    move-result v15

    if-nez v15, :cond_4

    const/4 v15, 0x0

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-set9(Z)Z

    :cond_4
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get33()Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get32()Z

    move-result v15

    if-eqz v15, :cond_0

    const-string/jumbo v15, "GlobalActions"

    const-string/jumbo v16, "showing dialog because mIsMiniDialogMode and mIsMiniCoverOpened are true."

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v15, 0x0

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-set9(Z)Z

    const/4 v15, 0x0

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-set8(Z)Z

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get3(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$MyAdapter;

    move-result-object v15

    if-eqz v15, :cond_5

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get3(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$MyAdapter;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/server/policy/GlobalActions$MyAdapter;->notifyDataSetChanged()V

    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-wrap19(Lcom/android/server/policy/GlobalActions;)V

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get3(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$MyAdapter;

    move-result-object v15

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get18(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    move-result-object v15

    if-eqz v15, :cond_0

    const/4 v10, 0x0

    const/4 v6, 0x0

    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get31()Z

    move-result v15

    if-nez v15, :cond_7

    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get28()Z

    move-result v15

    if-eqz v15, :cond_a

    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get23(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    move-result-object v15

    const v16, 0x10203c6

    invoke-virtual/range {v15 .. v16}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    :goto_3
    const/4 v2, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get3(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$MyAdapter;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v15

    if-ge v2, v15, :cond_c

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get11(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v15

    iget v15, v15, Landroid/content/res/Configuration;->orientation:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_b

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get43(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;

    move-result-object v15

    if-eqz v15, :cond_8

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get43(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;

    move-result-object v15

    invoke-virtual {v15, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    :cond_8
    :goto_5
    if-eqz v10, :cond_9

    invoke-virtual {v10}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v15

    const-wide/16 v16, 0x12c

    invoke-virtual/range {v15 .. v17}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get24(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;

    move-result-object v15

    const v16, 0x10203c6

    invoke-virtual/range {v15 .. v16}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    goto :goto_3

    :cond_b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get42(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;

    move-result-object v15

    if-eqz v15, :cond_8

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get42(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;

    move-result-object v15

    invoke-virtual {v15, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    goto :goto_5

    :cond_c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/server/policy/GlobalActions;->requestUpdateWindowBlur(F)V

    if-eqz v6, :cond_f

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get9(Lcom/android/server/policy/GlobalActions;)Landroid/app/AlertDialog;

    move-result-object v15

    if-eqz v15, :cond_d

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get9(Lcom/android/server/policy/GlobalActions;)Landroid/app/AlertDialog;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v15

    if-eqz v15, :cond_d

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-wrap4(Lcom/android/server/policy/GlobalActions;)Z

    move-result v15

    if-nez v15, :cond_d

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get9(Lcom/android/server/policy/GlobalActions;)Landroid/app/AlertDialog;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/AlertDialog;->dismiss()V

    :cond_d
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get31()Z

    move-result v15

    if-nez v15, :cond_e

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get10(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;

    move-result-object v15

    if-eqz v15, :cond_e

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get10(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;->isShowing()Z

    move-result v15

    if-eqz v15, :cond_e

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-wrap4(Lcom/android/server/policy/GlobalActions;)Z

    move-result v15

    if-nez v15, :cond_e

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get10(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;->dismiss()V

    :cond_e
    invoke-virtual {v6}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v15

    const-wide/16 v16, 0x12c

    invoke-virtual/range {v15 .. v17}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v15

    new-instance v16, Lcom/android/server/policy/GlobalActions$UIUpdateHandler$1;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/policy/GlobalActions$UIUpdateHandler$1;-><init>(Lcom/android/server/policy/GlobalActions$UIUpdateHandler;)V

    invoke-virtual/range {v15 .. v16}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_f
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get8(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;

    move-result-object v15

    if-eqz v15, :cond_10

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get8(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v15

    if-nez v15, :cond_10

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get8(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v15

    const-wide/16 v16, 0x12c

    invoke-virtual/range {v15 .. v17}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    :cond_10
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get16(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;

    move-result-object v15

    if-eqz v15, :cond_11

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get16(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v15

    if-nez v15, :cond_11

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get16(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v15

    const-wide/16 v16, 0x12c

    invoke-virtual/range {v15 .. v17}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    :cond_11
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get22(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;

    move-result-object v15

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get22(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v15

    if-nez v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get22(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v15

    const-wide/16 v16, 0x12c

    invoke-virtual/range {v15 .. v17}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto/16 :goto_0

    :cond_12
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get9(Lcom/android/server/policy/GlobalActions;)Landroid/app/AlertDialog;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/AlertDialog;->dismiss()V

    goto/16 :goto_1

    :cond_13
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get10(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;->dismiss()V

    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get66()Z

    move-result v15

    if-nez v15, :cond_14

    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get65()Ljava/lang/Object;

    move-result-object v15

    monitor-enter v15

    const/16 v16, 0x0

    :try_start_0
    invoke-static/range {v16 .. v16}, Lcom/android/server/policy/GlobalActions;->-set17(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v15

    goto/16 :goto_2

    :catchall_0
    move-exception v16

    monitor-exit v15

    throw v16

    :cond_14
    const/4 v15, 0x0

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-set18(Z)Z

    goto/16 :goto_2

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get3(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$MyAdapter;

    move-result-object v15

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get3(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$MyAdapter;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/server/policy/GlobalActions$MyAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get3(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$MyAdapter;

    move-result-object v15

    if-eqz v15, :cond_15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get3(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$MyAdapter;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/server/policy/GlobalActions$MyAdapter;->notifyDataSetChanged()V

    :cond_15
    sget-object v15, Lcom/android/server/policy/GlobalActions;->mSilentModeView:Landroid/view/View;

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get55(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$SilentModeAction;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/server/policy/GlobalActions$SilentModeAction;->updateRingerMode()V

    goto/16 :goto_0

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get3(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$MyAdapter;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/server/policy/GlobalActions$MyAdapter;->notifyDataSetChanged()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-wrap19(Lcom/android/server/policy/GlobalActions;)V

    goto/16 :goto_0

    :pswitch_4
    const-string/jumbo v15, "GlobalActions"

    const-string/jumbo v16, "handleMessage : MESSAGE_REFRESH_AIRPLANEMODE"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get4(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$ToggleAction;

    move-result-object v15

    if-eqz v15, :cond_16

    const-string/jumbo v15, "GlobalActions"

    const-string/jumbo v16, "handleMessage : MESSAGE_REFRESH_AIRPLANEMODE : call mAirplaneModeOn.updateState"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get4(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$ToggleAction;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/server/policy/GlobalActions;->-get5(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/android/server/policy/GlobalActions$ToggleAction;->updateState(Lcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get45()Z

    move-result v15

    if-eqz v15, :cond_16

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/policy/GlobalActions;->mAirplaneStringId:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/policy/GlobalActions;->-get5(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    move-result-object v17

    invoke-static/range {v15 .. v17}, Lcom/android/server/policy/GlobalActions;->-wrap30(Lcom/android/server/policy/GlobalActions;ILcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    :cond_16
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get3(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$MyAdapter;

    move-result-object v15

    if-eqz v15, :cond_0

    const-string/jumbo v15, "GlobalActions"

    const-string/jumbo v16, "handleMessage : MESSAGE_REFRESH_AIRPLANEMODE : call mAdapter.notifyDataSetChanged"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get3(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$MyAdapter;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/server/policy/GlobalActions$MyAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    :pswitch_5
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v15, "com.samsung.cover.STATE_CHANGE"

    invoke-virtual {v5, v15}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v15, "suppressCoverUI"

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v15, "miniModeUI"

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v16, "sender"

    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v5, v0, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get11(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get18(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    move-result-object v15

    if-eqz v15, :cond_0

    const/4 v2, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get3(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$MyAdapter;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v15

    if-ge v2, v15, :cond_18

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get42(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;

    move-result-object v15

    invoke-virtual {v15, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    sget-object v15, Lcom/android/server/policy/GlobalActions;->SelectedItem:Landroid/view/View;

    invoke-virtual {v15, v11}, Landroid/view/View;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_17

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get43(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;

    move-result-object v15

    invoke-virtual {v15, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    const v15, 0x10203d9

    invoke-virtual {v13, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    const v15, 0x102000b

    invoke-virtual {v13, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v15, 0x10203d7

    invoke-virtual {v13, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-virtual {v7}, Landroid/widget/TextView;->getHeight()I

    move-result v16

    invoke-virtual {v9}, Landroid/widget/TextView;->getHeight()I

    move-result v17

    add-int v16, v16, v17

    move/from16 v0, v16

    invoke-virtual {v15, v3, v0}, Lcom/android/server/policy/GlobalActions;->calculateDescritionViewHeight(Landroid/view/View;I)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v15, v13, v0}, Lcom/android/server/policy/GlobalActions;->-wrap26(Lcom/android/server/policy/GlobalActions;Landroid/view/View;Z)V

    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_18
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get30()Z

    move-result v15

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get23(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    move-result-object v15

    const-string/jumbo v16, "HideConfirmLandscape"

    invoke-virtual/range {v15 .. v16}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->checkOrientation(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get42(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/LinearLayout;->removeAllViews()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-wrap20(Lcom/android/server/policy/GlobalActions;)V

    const/4 v15, 0x0

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-set7(Z)Z

    goto/16 :goto_0

    :pswitch_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get18(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    move-result-object v15

    if-eqz v15, :cond_0

    const/4 v2, 0x0

    :goto_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get3(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$MyAdapter;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v15

    if-ge v2, v15, :cond_1a

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get43(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;

    move-result-object v15

    invoke-virtual {v15, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    sget-object v15, Lcom/android/server/policy/GlobalActions;->SelectedItem:Landroid/view/View;

    invoke-virtual {v15, v14}, Landroid/view/View;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_19

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get42(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;

    move-result-object v15

    invoke-virtual {v15, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    const v15, 0x10203d9

    invoke-virtual {v12, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    const v15, 0x102000b

    invoke-virtual {v12, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v15, 0x10203d7

    invoke-virtual {v12, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-virtual {v7}, Landroid/widget/TextView;->getHeight()I

    move-result v16

    invoke-virtual {v9}, Landroid/widget/TextView;->getHeight()I

    move-result v17

    add-int v16, v16, v17

    move/from16 v0, v16

    invoke-virtual {v15, v3, v0}, Lcom/android/server/policy/GlobalActions;->calculateDescritionViewHeight(Landroid/view/View;I)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v15, v12, v0}, Lcom/android/server/policy/GlobalActions;->-wrap25(Lcom/android/server/policy/GlobalActions;Landroid/view/View;Z)V

    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_1a
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get29()Z

    move-result v15

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get23(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    move-result-object v15

    const-string/jumbo v16, "HideConfirmPortrait"

    invoke-virtual/range {v15 .. v16}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->checkOrientation(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get43(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/LinearLayout;->removeAllViews()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-wrap21(Lcom/android/server/policy/GlobalActions;)V

    const/4 v15, 0x0

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-set6(Z)Z

    goto/16 :goto_0

    :pswitch_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get18(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    move-result-object v15

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    const/16 v16, 0x1

    invoke-static/range {v15 .. v16}, Lcom/android/server/policy/GlobalActions;->-wrap24(Lcom/android/server/policy/GlobalActions;Z)V

    goto/16 :goto_0

    :pswitch_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get18(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    move-result-object v15

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    const/16 v16, 0x1

    invoke-static/range {v15 .. v16}, Lcom/android/server/policy/GlobalActions;->-wrap23(Lcom/android/server/policy/GlobalActions;Z)V

    goto/16 :goto_0

    :pswitch_a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get18(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    move-result-object v15

    if-eqz v15, :cond_0

    const/4 v2, 0x0

    :goto_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get3(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$MyAdapter;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v15

    if-ge v2, v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get43(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;

    move-result-object v15

    invoke-virtual {v15, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    const v15, 0x1020006

    invoke-virtual {v8, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    sget v16, Lcom/android/server/policy/GlobalActions;->mIsSelectedItemTagForSecure:I

    move/from16 v0, v16

    if-ne v15, v0, :cond_1b

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/server/policy/GlobalActions;->-get3(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$MyAdapter;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getItem(I)Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v15, v8, v0, v1}, Lcom/android/server/policy/GlobalActions;->-wrap17(Lcom/android/server/policy/GlobalActions;Landroid/view/View;Lcom/android/server/policy/GlobalActions$Action;Z)V

    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :pswitch_b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v15}, Lcom/android/server/policy/GlobalActions;->-get18(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    move-result-object v15

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    sget v16, Lcom/android/server/policy/GlobalActions;->sIsSelectedItemTagForBixby:I

    invoke-static/range {v15 .. v16}, Lcom/android/server/policy/GlobalActions;->-wrap18(Lcom/android/server/policy/GlobalActions;I)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method
