.class final Lcom/android/server/power/ShutdownThread$4;
.super Landroid/app/Dialog;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread;->createMConfirmDialog(Landroid/content/Context;II)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$ctx:Landroid/content/Context;

.field final synthetic val$description:I

.field final synthetic val$titleText:I


# direct methods
.method constructor <init>(Landroid/content/Context;ILandroid/content/Context;II)V
    .locals 0

    iput-object p3, p0, Lcom/android/server/power/ShutdownThread$4;->val$ctx:Landroid/content/Context;

    iput p4, p0, Lcom/android/server/power/ShutdownThread$4;->val$titleText:I

    iput p5, p0, Lcom/android/server/power/ShutdownThread$4;->val$description:I

    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

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
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-wrap1()V

    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public init()Landroid/app/Dialog;
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/power/ShutdownThread$4;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, 0x80180

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    const/16 v1, 0x7d9

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {p0}, Lcom/android/server/power/ShutdownThread$4;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {p0}, Lcom/android/server/power/ShutdownThread$4;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Window;->setWindowAnimations(I)V

    return-object p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 24

    invoke-super/range {p0 .. p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    new-instance v17, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$4;->val$ctx:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-direct/range {v17 .. v18}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-static/range {v17 .. v17}, Lcom/android/server/power/ShutdownThread;->-set3(Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    new-instance v16, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v17, -0x1

    const/16 v18, -0x1

    invoke-direct/range {v16 .. v18}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get18()Landroid/widget/RelativeLayout;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$4;->val$ctx:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v2, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v17, -0x1

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v3, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v17, -0x1000000

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v17

    const v18, 0x3f333333    # 0.7f

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v17

    const-wide/16 v18, 0x12c

    invoke-virtual/range {v17 .. v19}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/ViewPropertyAnimator;->start()V

    const/4 v7, 0x2

    new-instance v5, Lcom/samsung/android/cover/CoverManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$4;->val$ctx:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get9()Lcom/samsung/android/cover/CoverManager$StateListener;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/samsung/android/cover/CoverManager;->registerListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V

    invoke-virtual {v5}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/power/ShutdownThread;->-wrap0(Lcom/samsung/android/cover/CoverState;)Z

    move-result v17

    invoke-static/range {v17 .. v17}, Lcom/android/server/power/ShutdownThread;->-set1(Z)Z

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v7

    :cond_0
    new-instance v17, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$4;->val$ctx:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-direct/range {v17 .. v18}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-static/range {v17 .. v17}, Lcom/android/server/power/ShutdownThread;->-set0(Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v17, -0x2

    const/16 v18, -0x2

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v4, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v17, 0xd

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get3()Landroid/widget/LinearLayout;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get3()Landroid/widget/LinearLayout;

    move-result-object v17

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get3()Landroid/widget/LinearLayout;

    move-result-object v17

    const/16 v18, 0x11

    invoke-virtual/range {v17 .. v18}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v11, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$4;->val$ctx:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v11, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get11()Z

    move-result v17

    if-eqz v17, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$4;->val$ctx:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0x1080a2c

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    :goto_0
    invoke-virtual {v11, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v17, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v18

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0x3ff4cccccccccccdL    # 1.3

    mul-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v18, v0

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v19

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0x3ff4cccccccccccdL    # 1.3

    mul-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-int v0, v0

    move/from16 v19, v0

    invoke-direct/range {v17 .. v19}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get3()Landroid/widget/LinearLayout;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v14, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$4;->val$ctx:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v14, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v17, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v18, -0x2

    const/16 v19, -0x2

    invoke-direct/range {v17 .. v19}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$4;->val$ctx:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/ShutdownThread$4;->val$titleText:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v17, 0x2

    const v18, 0x418f5c29    # 17.92f

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string/jumbo v17, "#fafafa"

    invoke-static/range {v17 .. v17}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get3()Landroid/widget/LinearLayout;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v9, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$4;->val$ctx:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$4;->val$ctx:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v15

    const/high16 v17, 0x439b0000    # 310.0f

    const/16 v18, 0x1

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-static {v0, v1, v15}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v13

    new-instance v17, Landroid/widget/LinearLayout$LayoutParams;

    float-to-int v0, v13

    move/from16 v18, v0

    const/16 v19, -0x2

    invoke-direct/range {v17 .. v19}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$4;->val$ctx:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/ShutdownThread$4;->val$description:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v17, 0x41600000    # 14.0f

    const/16 v18, 0x2

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v9, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/16 v17, 0x3

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    const/16 v17, 0x11

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setGravity(I)V

    const-string/jumbo v17, "#c3c3c3"

    invoke-static/range {v17 .. v17}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get3()Landroid/widget/LinearLayout;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v17, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$4;->val$ctx:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-direct/range {v17 .. v18}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-static/range {v17 .. v17}, Lcom/android/server/power/ShutdownThread;->-set2(Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v17, -0x1

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v10, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get7()Landroid/widget/RelativeLayout;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get7()Landroid/widget/RelativeLayout;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get7()Landroid/widget/RelativeLayout;

    move-result-object v17

    const/high16 v18, -0x1000000

    invoke-virtual/range {v17 .. v18}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    new-instance v12, Lcom/android/server/power/ShutdownThread$4$1;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$4;->val$ctx:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v12, v0, v1}, Lcom/android/server/power/ShutdownThread$4$1;-><init>(Lcom/android/server/power/ShutdownThread$4;Landroid/content/Context;)V

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v14, v12}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get18()Landroid/widget/RelativeLayout;

    move-result-object v17

    new-instance v18, Lcom/android/server/power/ShutdownThread$4$2;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/power/ShutdownThread$4$2;-><init>(Lcom/android/server/power/ShutdownThread$4;)V

    invoke-virtual/range {v17 .. v18}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get18()Landroid/widget/RelativeLayout;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get18()Landroid/widget/RelativeLayout;

    move-result-object v17

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get3()Landroid/widget/LinearLayout;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get18()Landroid/widget/RelativeLayout;

    move-result-object v17

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get7()Landroid/widget/RelativeLayout;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get18()Landroid/widget/RelativeLayout;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/power/ShutdownThread$4;->setContentView(Landroid/view/View;)V

    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$4;->val$ctx:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0x1080a2a

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    goto/16 :goto_0
.end method

.method public onStart()V
    .locals 4

    const/4 v3, -0x1

    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    const-string/jumbo v1, "ShutdownThread"

    const-string/jumbo v2, "onStart"

    invoke-static {v1, v2}, Lcom/android/server/power/ShutdownThread$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/power/ShutdownThread$4;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/power/ShutdownThread$4;->getWindow()Landroid/view/Window;

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

    invoke-virtual {p0}, Lcom/android/server/power/ShutdownThread$4;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Window;->setWindowAnimations(I)V

    invoke-virtual {p0}, Lcom/android/server/power/ShutdownThread$4;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method
