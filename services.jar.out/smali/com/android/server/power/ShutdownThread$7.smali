.class final Lcom/android/server/power/ShutdownThread$7;
.super Landroid/app/Dialog;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread;->createMConfirmDialog(Landroid/content/Context;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$ctx:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;ILandroid/content/Context;)V
    .locals 0

    iput-object p3, p0, Lcom/android/server/power/ShutdownThread$7;->val$ctx:Landroid/content/Context;

    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-wrap9()V

    return v1

    :pswitch_1
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-wrap9()V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public init()Landroid/app/Dialog;
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/power/ShutdownThread$7;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, 0x80580

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    const/16 v1, 0x96b

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {p0}, Lcom/android/server/power/ShutdownThread$7;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x10000

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    invoke-virtual {p0}, Lcom/android/server/power/ShutdownThread$7;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {p0}, Lcom/android/server/power/ShutdownThread$7;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Window;->setWindowAnimations(I)V

    return-object p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 26

    invoke-super/range {p0 .. p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$7;->val$ctx:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get35()Z

    move-result v22

    if-eqz v22, :cond_0

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get11()Z

    move-result v22

    if-eqz v22, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$7;->val$ctx:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/power/ShutdownThread;->-wrap1(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v16

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_4

    new-instance v20, Landroid/graphics/Rect;

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v22, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_0
    const/16 v22, 0x3

    move/from16 v0, v22

    new-array v15, v0, [F

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread$ExtractColor;->getColorHSV(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)[F

    move-result-object v15

    if-nez v15, :cond_5

    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Lcom/android/server/power/ShutdownThread;->-set19(Z)Z

    :cond_0
    :goto_1
    new-instance v22, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$7;->val$ctx:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-static/range {v22 .. v22}, Lcom/android/server/power/ShutdownThread;->-set11(Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    new-instance v18, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v22, -0x1

    const/16 v23, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get23()Landroid/widget/RelativeLayout;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$7;->val$ctx:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-direct {v6, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v22, -0x1

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-direct {v7, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get33()Z

    move-result v22

    if-nez v22, :cond_7

    const/high16 v22, -0x1000000

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    :goto_2
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v22

    const v23, 0x3f333333    # 0.7f

    invoke-virtual/range {v22 .. v23}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v22

    const-wide/16 v24, 0x12c

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/ViewPropertyAnimator;->start()V

    const/4 v12, 0x2

    new-instance v10, Lcom/samsung/android/cover/CoverManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$7;->val$ctx:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-direct {v10, v0}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    if-eqz v10, :cond_1

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get10()Lcom/samsung/android/cover/CoverManager$StateListener;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Lcom/samsung/android/cover/CoverManager;->registerListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V

    invoke-virtual {v10}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/power/ShutdownThread;->-wrap6(Lcom/samsung/android/cover/CoverState;)Z

    move-result v22

    invoke-static/range {v22 .. v22}, Lcom/android/server/power/ShutdownThread;->-set1(Z)Z

    if-eqz v11, :cond_1

    invoke-virtual {v11}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v12

    :cond_1
    new-instance v22, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$7;->val$ctx:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-static/range {v22 .. v22}, Lcom/android/server/power/ShutdownThread;->-set0(Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v22, -0x2

    const/16 v23, -0x2

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-direct {v8, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v22, 0xd

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v8, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get3()Landroid/widget/LinearLayout;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get3()Landroid/widget/LinearLayout;

    move-result-object v22

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get3()Landroid/widget/LinearLayout;

    move-result-object v22

    const/16 v23, 0x11

    invoke-virtual/range {v22 .. v23}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get3()Landroid/widget/LinearLayout;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$7;->val$ctx:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get35()Z

    move-result v24

    invoke-static/range {v23 .. v24}, Lcom/android/server/power/ShutdownThread;->-wrap3(Landroid/content/Context;Z)Landroid/widget/ImageView;

    move-result-object v23

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get3()Landroid/widget/LinearLayout;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$7;->val$ctx:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get33()Z

    move-result v24

    invoke-static/range {v23 .. v24}, Lcom/android/server/power/ShutdownThread;->-wrap5(Landroid/content/Context;Z)Landroid/widget/TextView;

    move-result-object v23

    const/16 v24, 0x1

    invoke-virtual/range {v22 .. v24}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get3()Landroid/widget/LinearLayout;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$7;->val$ctx:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get33()Z

    move-result v24

    invoke-static/range {v23 .. v24}, Lcom/android/server/power/ShutdownThread;->-wrap4(Landroid/content/Context;Z)Landroid/widget/TextView;

    move-result-object v23

    const/16 v24, 0x2

    invoke-virtual/range {v22 .. v24}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    new-instance v22, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$7;->val$ctx:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-static/range {v22 .. v22}, Lcom/android/server/power/ShutdownThread;->-set3(Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    new-instance v13, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v22, -0x1

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-direct {v13, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get8()Landroid/widget/RelativeLayout;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get8()Landroid/widget/RelativeLayout;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get35()Z

    move-result v22

    if-eqz v22, :cond_8

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get33()Z

    move-result v22

    if-eqz v22, :cond_8

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get8()Landroid/widget/RelativeLayout;

    move-result-object v22

    const/16 v23, -0x1

    invoke-virtual/range {v22 .. v23}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    :goto_3
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get35()Z

    move-result v22

    if-eqz v22, :cond_3

    const/16 v19, 0x200

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get33()Z

    move-result v22

    if-eqz v22, :cond_2

    const/16 v19, 0x210

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/power/ShutdownThread$7;->getWindow()Landroid/view/Window;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_3
    new-instance v9, Lcom/android/server/power/ShutdownThread$7$1;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$7;->val$ctx:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v9, v0, v1}, Lcom/android/server/power/ShutdownThread$7$1;-><init>(Lcom/android/server/power/ShutdownThread$7;Landroid/content/Context;)V

    new-instance v21, Lcom/android/server/power/ShutdownThread$7$2;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$7;->val$ctx:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/server/power/ShutdownThread$7$2;-><init>(Lcom/android/server/power/ShutdownThread$7;Landroid/content/Context;)V

    const/4 v14, 0x0

    :goto_4
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get3()Landroid/widget/LinearLayout;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v22

    move/from16 v0, v22

    if-ge v14, v0, :cond_9

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get3()Landroid/widget/LinearLayout;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get3()Landroid/widget/LinearLayout;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    :cond_4
    new-instance v20, Landroid/graphics/Rect;

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v22, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v22, "ShutdownThread"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Whole Area Hue="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v24, 0x0

    aget v24, v15, v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, ", Saturation="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v24, 0x1

    aget v24, v15, v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, ", Brightness="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v24, 0x2

    aget v24, v15, v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v22, 0x1

    aget v22, v15, v22

    const v23, 0x3e99999a    # 0.3f

    cmpg-float v22, v22, v23

    if-gez v22, :cond_6

    const/16 v22, 0x2

    aget v22, v15, v22

    const v23, 0x3f6147ae    # 0.88f

    cmpl-float v22, v22, v23

    if-ltz v22, :cond_6

    const/16 v22, 0x1

    invoke-static/range {v22 .. v22}, Lcom/android/server/power/ShutdownThread;->-set19(Z)Z

    goto/16 :goto_1

    :cond_6
    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Lcom/android/server/power/ShutdownThread;->-set19(Z)Z

    goto/16 :goto_1

    :cond_7
    const/16 v22, -0x1

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    goto/16 :goto_2

    :cond_8
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get8()Landroid/widget/RelativeLayout;

    move-result-object v22

    const/high16 v23, -0x1000000

    invoke-virtual/range {v22 .. v23}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    goto/16 :goto_3

    :cond_9
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get23()Landroid/widget/RelativeLayout;

    move-result-object v22

    new-instance v23, Lcom/android/server/power/ShutdownThread$7$3;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/power/ShutdownThread$7$3;-><init>(Lcom/android/server/power/ShutdownThread$7;)V

    invoke-virtual/range {v22 .. v23}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get23()Landroid/widget/RelativeLayout;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get23()Landroid/widget/RelativeLayout;

    move-result-object v22

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get3()Landroid/widget/LinearLayout;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get23()Landroid/widget/RelativeLayout;

    move-result-object v22

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get8()Landroid/widget/RelativeLayout;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get23()Landroid/widget/RelativeLayout;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/power/ShutdownThread$7;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public onStart()V
    .locals 4

    const/4 v3, -0x1

    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    const-string/jumbo v1, "ShutdownThread"

    const-string/jumbo v2, "onStart"

    invoke-static {v1, v2}, Lcom/android/server/power/ShutdownThread$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/power/ShutdownThread$7;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/power/ShutdownThread$7;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Landroid/view/Window;->setLayout(II)V

    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x20000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x1000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    or-int/lit8 v1, v1, 0x40

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    invoke-virtual {p0}, Lcom/android/server/power/ShutdownThread$7;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Window;->setWindowAnimations(I)V

    invoke-virtual {p0}, Lcom/android/server/power/ShutdownThread$7;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method
