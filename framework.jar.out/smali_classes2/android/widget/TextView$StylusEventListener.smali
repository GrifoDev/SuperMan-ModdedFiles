.class Landroid/widget/TextView$StylusEventListener;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$SemOnStylusButtonEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StylusEventListener"
.end annotation


# instance fields
.field private mDirLTR:Z

.field private mEndCurPosition:I

.field private mIsSelectableTextView:Z

.field private mMaxX:F

.field private mPressed:Z

.field private mStartCurPosition:I

.field private mStartX:F

.field private mStartY:F

.field private mThisView:Landroid/widget/TextView;

.field private oldEndPos:I

.field private selectRange:[I

.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method static synthetic -get0(Landroid/widget/TextView$StylusEventListener;)I
    .locals 1

    iget v0, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    return v0
.end method

.method static synthetic -get1(Landroid/widget/TextView$StylusEventListener;)I
    .locals 1

    iget v0, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    return v0
.end method

.method static synthetic -set0(Landroid/widget/TextView$StylusEventListener;I)I
    .locals 0

    iput p1, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    return p1
.end method

.method static synthetic -set1(Landroid/widget/TextView$StylusEventListener;I)I
    .locals 0

    iput p1, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    return p1
.end method

.method public constructor <init>(Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iput-object p1, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextView$StylusEventListener;->mDirLTR:Z

    iput-boolean v1, p0, Landroid/widget/TextView$StylusEventListener;->mPressed:Z

    iput-boolean v1, p0, Landroid/widget/TextView$StylusEventListener;->mIsSelectableTextView:Z

    iput v1, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    iput v1, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/TextView$StylusEventListener;->oldEndPos:I

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    iput v2, p0, Landroid/widget/TextView$StylusEventListener;->mStartX:F

    iput v2, p0, Landroid/widget/TextView$StylusEventListener;->mStartY:F

    iput v2, p0, Landroid/widget/TextView$StylusEventListener;->mMaxX:F

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/TextView$StylusEventListener;->mThisView:Landroid/widget/TextView;

    iput-object p2, p0, Landroid/widget/TextView$StylusEventListener;->mThisView:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public onStylusButtonEvent(Landroid/view/MotionEvent;)V
    .locals 18

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v14

    const/4 v15, 0x2

    if-ne v14, v15, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {v14}, Landroid/widget/TextView;->-get4(Landroid/widget/TextView;)Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v10

    if-nez v2, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v14

    and-int/lit8 v14, v14, 0x20

    if-eqz v14, :cond_6

    :cond_0
    invoke-static {}, Landroid/widget/TextView;->-get5()Z

    move-result v14

    if-nez v14, :cond_3

    invoke-static {}, Landroid/widget/TextView;->-get13()Landroid/widget/TextView;

    move-result-object v14

    if-eqz v14, :cond_1

    invoke-static {}, Landroid/widget/TextView;->-get13()Landroid/widget/TextView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/TextView;->clearMultiSelection()Z

    const/4 v14, 0x0

    invoke-static {v14}, Landroid/widget/TextView;->-set8(Landroid/widget/TextView;)Landroid/widget/TextView;

    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {v14}, Landroid/widget/TextView;->-wrap2(Landroid/widget/TextView;)Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    invoke-static {v14, v15}, Landroid/widget/TextView;->-set0(J)J

    invoke-static {}, Landroid/widget/TextView;->-get7()Landroid/widget/TextView;

    move-result-object v14

    if-eqz v14, :cond_2

    invoke-static {}, Landroid/widget/TextView;->-get2()J

    move-result-wide v14

    invoke-static {}, Landroid/widget/TextView;->-get6()J

    move-result-wide v16

    sub-long v14, v14, v16

    const-wide/16 v16, 0x64

    cmp-long v14, v14, v16

    if-gez v14, :cond_2

    invoke-static {}, Landroid/widget/TextView;->-get7()Landroid/widget/TextView;

    move-result-object v14

    invoke-static {v14}, Landroid/widget/TextView;->-set8(Landroid/widget/TextView;)Landroid/widget/TextView;

    :cond_2
    const/4 v14, 0x0

    invoke-static {v14}, Landroid/widget/TextView;->-set4(Landroid/widget/TextView;)Landroid/widget/TextView;

    const/4 v14, 0x1

    invoke-static {v14}, Landroid/widget/TextView;->-set3(Z)Z

    :cond_3
    invoke-static {}, Landroid/widget/TextView;->-get5()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-static {}, Landroid/widget/TextView;->-get13()Landroid/widget/TextView;

    move-result-object v14

    if-eqz v14, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TextView$StylusEventListener;->mThisView:Landroid/widget/TextView;

    if-nez v14, :cond_8

    :cond_4
    return-void

    :cond_5
    return-void

    :cond_6
    const/16 v14, 0xd3

    if-eq v2, v14, :cond_0

    const/4 v14, 0x0

    invoke-static {v14}, Landroid/widget/TextView;->-set3(Z)Z

    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/TextView$StylusEventListener;->mPressed:Z

    if-eqz v14, :cond_7

    invoke-static {}, Landroid/widget/TextView;->-get13()Landroid/widget/TextView;

    move-result-object v14

    if-nez v14, :cond_b

    :cond_7
    return-void

    :cond_8
    invoke-static {}, Landroid/widget/TextView;->-get13()Landroid/widget/TextView;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/TextView$StylusEventListener;->mThisView:Landroid/widget/TextView;

    if-eq v14, v15, :cond_9

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TextView$StylusEventListener;->mThisView:Landroid/widget/TextView;

    invoke-virtual {v14}, Landroid/widget/TextView;->hideCursorControllers()V

    return-void

    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {v14}, Landroid/widget/TextView;->-get10(Landroid/widget/TextView;)Landroid/widget/TextView$Marquee;

    move-result-object v14

    if-eqz v14, :cond_a

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {v14}, Landroid/widget/TextView;->-get10(Landroid/widget/TextView;)Landroid/widget/TextView$Marquee;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/TextView$Marquee;->isStopped()Z

    move-result v14

    if-eqz v14, :cond_c

    :cond_a
    invoke-static {}, Landroid/widget/TextView;->-get13()Landroid/widget/TextView;

    move-result-object v14

    instance-of v14, v14, Landroid/widget/EditText;

    if-eqz v14, :cond_e

    invoke-static {}, Landroid/widget/TextView;->-get13()Landroid/widget/TextView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/TextView;->hideCursorControllers()V

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    float-to-int v15, v9

    float-to-int v0, v10

    move/from16 v16, v0

    const/16 v17, 0x0

    invoke-static/range {v14 .. v17}, Landroid/widget/TextView;->-wrap3(Landroid/widget/TextView;III)Z

    move-result v14

    if-eqz v14, :cond_d

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-virtual {v14}, Landroid/widget/TextView;->canSelectText()Z

    move-result v14

    if-eqz v14, :cond_d

    :cond_b
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-virtual {v14}, Landroid/widget/TextView;->getTextForMultiSelection()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_f

    return-void

    :cond_c
    return-void

    :cond_d
    return-void

    :cond_e
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    float-to-int v15, v9

    float-to-int v0, v10

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/widget/TextView;->-get0(Landroid/widget/TextView;)F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    invoke-static/range {v14 .. v17}, Landroid/widget/TextView;->-wrap4(Landroid/widget/TextView;III)Z

    move-result v14

    if-nez v14, :cond_b

    return-void

    :cond_f
    sparse-switch v2, :sswitch_data_0

    :cond_10
    :goto_0
    return-void

    :sswitch_0
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/TextView$StylusEventListener;->mPressed:Z

    if-nez v14, :cond_10

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {v14}, Landroid/widget/TextView;->-wrap9(Landroid/widget/TextView;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-virtual {v14}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v14

    if-nez v14, :cond_13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TextView$StylusEventListener;->mThisView:Landroid/widget/TextView;

    instance-of v14, v14, Landroid/widget/EditText;

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/TextView$StylusEventListener;->mIsSelectableTextView:Z

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/TextView$StylusEventListener;->mThisView:Landroid/widget/TextView;

    invoke-static {v14, v15}, Landroid/widget/TextView;->-wrap0(Landroid/widget/TextView;Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v11

    iget v14, v11, Landroid/graphics/Point;->x:I

    int-to-float v14, v14

    sub-float v14, v9, v14

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/TextView$StylusEventListener;->mStartX:F

    iget v14, v11, Landroid/graphics/Point;->y:I

    int-to-float v14, v14

    sub-float v14, v10, v14

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/TextView$StylusEventListener;->mStartY:F

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/TextView$StylusEventListener;->mMaxX:F

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/TextView$StylusEventListener;->mStartX:F

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mStartY:F

    move/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    if-ltz v14, :cond_12

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {v14}, Landroid/widget/TextView;->-wrap5(Landroid/widget/TextView;)Z

    move-result v14

    if-eqz v14, :cond_11

    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/TextView$StylusEventListener;->mIsSelectableTextView:Z

    if-eqz v14, :cond_14

    :cond_11
    :goto_2
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/TextView$StylusEventListener;->oldEndPos:I

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/TextView$StylusEventListener;->mPressed:Z

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    const/4 v15, 0x1

    iput-boolean v15, v14, Landroid/widget/TextView;->mIsTouchDown:Z

    :cond_12
    const/4 v14, 0x0

    invoke-static {v14}, Landroid/text/MultiSelection;->setNeedToScroll(Z)V

    goto/16 :goto_0

    :cond_13
    const/4 v14, 0x1

    goto :goto_1

    :cond_14
    invoke-static {}, Landroid/widget/TextView;->-get2()J

    move-result-wide v14

    invoke-static {}, Landroid/widget/TextView;->-get8()J

    move-result-wide v16

    sub-long v14, v14, v16

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v16

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    cmp-long v14, v14, v16

    if-gez v14, :cond_16

    invoke-static {}, Landroid/widget/TextView;->-get12()Ljava/lang/Runnable;

    move-result-object v14

    if-eqz v14, :cond_15

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TextView$StylusEventListener;->mThisView:Landroid/widget/TextView;

    invoke-static {}, Landroid/widget/TextView;->-get12()Ljava/lang/Runnable;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v14, 0x0

    invoke-static {v14}, Landroid/widget/TextView;->-set7(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    :cond_15
    const/4 v14, 0x0

    invoke-static {v14}, Landroid/text/MultiSelection;->setIsMultiSelectingText(Z)V

    const/4 v14, 0x0

    invoke-static {v14}, Landroid/text/MultiSelection;->setNeedToScroll(Z)V

    invoke-static {}, Landroid/widget/TextView;->-get2()J

    move-result-wide v14

    invoke-static {v14, v15}, Landroid/widget/TextView;->-set5(J)J

    goto/16 :goto_0

    :cond_16
    const/4 v14, 0x1

    invoke-static {v14}, Landroid/text/MultiSelection;->setIsMultiSelectingText(Z)V

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->getVisibleTextRange([I)Z

    move-result v5

    if-nez v5, :cond_17

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    const/4 v15, 0x0

    const/16 v16, 0x0

    aput v15, v14, v16

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v15

    const/16 v16, 0x1

    aput v15, v14, v16

    :cond_17
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    const/16 v16, 0x0

    aget v15, v15, v16

    if-ge v14, v15, :cond_19

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    const/4 v15, 0x0

    aget v14, v14, v15

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    :cond_18
    :goto_3
    invoke-static {}, Landroid/widget/TextView;->-get2()J

    move-result-wide v14

    invoke-static {v14, v15}, Landroid/widget/TextView;->-set5(J)J

    const-string/jumbo v14, "TextView"

    const-string/jumbo v15, "Pen down with side button! : start text selection"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_19
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    const/16 v16, 0x1

    aget v15, v15, v16

    if-le v14, v15, :cond_18

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    const/4 v15, 0x1

    aget v14, v14, v15

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    goto :goto_3

    :sswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v14

    and-int/lit8 v14, v14, 0x20

    if-eqz v14, :cond_22

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {v14}, Landroid/widget/TextView;->-wrap5(Landroid/widget/TextView;)Z

    move-result v14

    if-eqz v14, :cond_10

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/TextView$StylusEventListener;->mThisView:Landroid/widget/TextView;

    invoke-static {v14, v15}, Landroid/widget/TextView;->-wrap0(Landroid/widget/TextView;Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v11

    iget v14, v11, Landroid/graphics/Point;->x:I

    int-to-float v14, v14

    sub-float v3, v9, v14

    iget v14, v11, Landroid/graphics/Point;->y:I

    int-to-float v14, v14

    sub-float v4, v10, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    float-to-int v15, v9

    float-to-int v0, v10

    move/from16 v16, v0

    const/16 v17, 0x0

    invoke-static/range {v14 .. v17}, Landroid/widget/TextView;->-wrap3(Landroid/widget/TextView;III)Z

    move-result v14

    invoke-static {v14}, Landroid/text/MultiSelection;->setNeedToScroll(Z)V

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/TextView$StylusEventListener;->mMaxX:F

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/TextView$StylusEventListener;->mStartX:F

    sub-float/2addr v15, v3

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    cmpg-float v14, v14, v15

    if-gez v14, :cond_1a

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/TextView$StylusEventListener;->mStartX:F

    sub-float/2addr v14, v3

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/TextView$StylusEventListener;->mMaxX:F

    :cond_1a
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-virtual {v14, v3, v4}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/TextView$StylusEventListener;->mIsSelectableTextView:Z

    if-nez v14, :cond_1b

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    const/16 v16, 0x0

    aget v15, v15, v16

    if-ge v14, v15, :cond_1c

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    const/4 v15, 0x0

    aget v14, v14, v15

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    :cond_1b
    :goto_4
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    if-ne v14, v15, :cond_1d

    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/TextView$StylusEventListener;->mIsSelectableTextView:Z

    if-nez v14, :cond_10

    check-cast v13, Landroid/text/Spannable;

    invoke-static {v13}, Landroid/text/MultiSelection;->removeCurSelection(Landroid/text/Spannable;)V

    goto/16 :goto_0

    :cond_1c
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    const/16 v16, 0x1

    aget v15, v15, v16

    if-le v14, v15, :cond_1b

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    const/4 v15, 0x1

    aget v14, v14, v15

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    goto :goto_4

    :cond_1d
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/TextView$StylusEventListener;->oldEndPos:I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    if-eq v14, v15, :cond_10

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    if-ltz v14, :cond_10

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/TextView$StylusEventListener;->oldEndPos:I

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    const/4 v15, 0x1

    invoke-static {v14, v15}, Landroid/widget/TextView;->-set2(Landroid/widget/TextView;Z)Z

    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/TextView$StylusEventListener;->mIsSelectableTextView:Z

    if-nez v14, :cond_20

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v15

    if-le v14, v15, :cond_1e

    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    :cond_1e
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v15

    if-le v14, v15, :cond_1f

    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    :cond_1f
    check-cast v13, Landroid/text/Spannable;

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    invoke-static {v13, v14, v15}, Landroid/text/MultiSelection;->setSelection(Landroid/text/Spannable;II)V

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    const/4 v15, 0x1

    invoke-static {v14, v15}, Landroid/widget/TextView;->-set9(Landroid/widget/TextView;Z)Z

    goto/16 :goto_0

    :cond_20
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TextView$StylusEventListener;->mThisView:Landroid/widget/TextView;

    invoke-virtual {v14}, Landroid/view/View;->isFocused()Z

    move-result v14

    if-nez v14, :cond_21

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TextView$StylusEventListener;->mThisView:Landroid/widget/TextView;

    invoke-virtual {v14}, Landroid/view/View;->requestFocus()Z

    :cond_21
    check-cast v13, Landroid/text/Spannable;

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    invoke-static {v13, v14, v15}, Landroid/widget/TextView;->semSetSelection(Landroid/text/Spannable;II)V

    goto/16 :goto_0

    :cond_22
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/TextView$StylusEventListener;->mThisView:Landroid/widget/TextView;

    invoke-static {v14, v15}, Landroid/widget/TextView;->-wrap0(Landroid/widget/TextView;Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v11

    iget v14, v11, Landroid/graphics/Point;->x:I

    int-to-float v14, v14

    sub-float v3, v9, v14

    iget v14, v11, Landroid/graphics/Point;->y:I

    int-to-float v14, v14

    sub-float v4, v10, v14

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/TextView$StylusEventListener;->mMaxX:F

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/TextView$StylusEventListener;->mStartX:F

    sub-float/2addr v15, v3

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    cmpg-float v14, v14, v15

    if-gez v14, :cond_23

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/TextView$StylusEventListener;->mStartX:F

    sub-float/2addr v14, v3

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/TextView$StylusEventListener;->mMaxX:F

    :cond_23
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-virtual {v14, v3, v4}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/TextView$StylusEventListener;->mIsSelectableTextView:Z

    if-nez v14, :cond_24

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    const/16 v16, 0x0

    aget v15, v15, v16

    if-ge v14, v15, :cond_27

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    const/4 v15, 0x0

    aget v14, v14, v15

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    :cond_24
    :goto_5
    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {v14}, Landroid/widget/TextView;->-get9(Landroid/widget/TextView;)Landroid/text/Layout;

    move-result-object v14

    if-eqz v14, :cond_25

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/TextView$StylusEventListener;->mStartY:F

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-virtual {v15, v4}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v15

    if-ne v14, v15, :cond_28

    const/4 v8, 0x1

    :cond_25
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/TextView$StylusEventListener;->mIsSelectableTextView:Z

    if-nez v14, :cond_29

    if-eqz v8, :cond_29

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/TextView$StylusEventListener;->mMaxX:F

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {v15}, Landroid/widget/TextView;->-get0(Landroid/widget/TextView;)F

    move-result v15

    cmpg-float v14, v14, v15

    if-gez v14, :cond_29

    invoke-static {}, Landroid/widget/TextView;->-get12()Ljava/lang/Runnable;

    move-result-object v14

    if-eqz v14, :cond_26

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TextView$StylusEventListener;->mThisView:Landroid/widget/TextView;

    invoke-static {}, Landroid/widget/TextView;->-get12()Ljava/lang/Runnable;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v14, 0x0

    invoke-static {v14}, Landroid/widget/TextView;->-set7(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    :cond_26
    new-instance v14, Landroid/widget/TextView$StylusEventListener$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/widget/TextView$StylusEventListener$1;-><init>(Landroid/widget/TextView$StylusEventListener;)V

    invoke-static {v14}, Landroid/widget/TextView;->-set7(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TextView$StylusEventListener;->mThisView:Landroid/widget/TextView;

    invoke-static {}, Landroid/widget/TextView;->-get12()Ljava/lang/Runnable;

    move-result-object v15

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v16

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    invoke-virtual/range {v14 .. v17}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    const/4 v15, 0x0

    iput-boolean v15, v14, Landroid/widget/TextView;->mIsTouchDown:Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/TextView$StylusEventListener;->mPressed:Z

    goto/16 :goto_0

    :cond_27
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    const/16 v16, 0x1

    aget v15, v15, v16

    if-le v14, v15, :cond_24

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    const/4 v15, 0x1

    aget v14, v14, v15

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    goto/16 :goto_5

    :cond_28
    const/4 v8, 0x0

    goto :goto_6

    :cond_29
    const/4 v14, 0x0

    invoke-static {v14}, Landroid/text/MultiSelection;->setNeedToScroll(Z)V

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    if-ne v14, v15, :cond_2c

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/TextView$StylusEventListener;->mPressed:Z

    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/TextView$StylusEventListener;->mIsSelectableTextView:Z

    if-nez v14, :cond_2b

    const/4 v14, 0x0

    invoke-static {v14}, Landroid/text/MultiSelection;->setIsMultiSelectingText(Z)V

    move-object v14, v13

    check-cast v14, Landroid/text/Spannable;

    invoke-static {v14}, Landroid/text/MultiSelection;->removeCurSelection(Landroid/text/Spannable;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    check-cast v13, Landroid/text/Spannable;

    invoke-static {v13}, Landroid/text/MultiSelection;->getMultiSelectionCount(Landroid/text/Spannable;)I

    move-result v14

    if-lez v14, :cond_2a

    const/4 v14, 0x1

    :goto_7
    invoke-static {v15, v14}, Landroid/widget/TextView;->-set9(Landroid/widget/TextView;Z)Z

    goto/16 :goto_0

    :cond_2a
    const/4 v14, 0x0

    goto :goto_7

    :cond_2b
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    const/4 v15, 0x0

    invoke-static {v14, v15}, Landroid/widget/TextView;->-set9(Landroid/widget/TextView;Z)Z

    goto/16 :goto_0

    :cond_2c
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    if-le v14, v15, :cond_2d

    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    move-object/from16 v0, p0

    iput v12, v0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    :cond_2d
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/TextView$StylusEventListener;->mIsSelectableTextView:Z

    if-nez v14, :cond_2f

    move-object v14, v13

    check-cast v14, Landroid/text/Spannable;

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    move/from16 v16, v0

    invoke-static/range {v14 .. v16}, Landroid/text/MultiSelection;->setSelection(Landroid/text/Spannable;II)V

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {v14}, Landroid/widget/TextView;->-wrap12(Landroid/widget/TextView;)V

    :try_start_0
    new-instance v7, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-virtual {v14}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-direct {v7, v14}, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    invoke-interface {v13, v14, v15}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->training(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_8
    const-string/jumbo v14, "TextView"

    const-string/jumbo v15, "Pen up with side button! : end text selection"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-virtual {v14}, Landroid/widget/TextView;->registerForTouchMonitorListener()V

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    const/4 v15, 0x1

    invoke-static {v14, v15}, Landroid/widget/TextView;->-set9(Landroid/widget/TextView;Z)Z

    const/4 v14, 0x0

    invoke-static {v14}, Landroid/text/MultiSelection;->setIsMultiSelectingText(Z)V

    :cond_2e
    :goto_9
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    const/4 v15, 0x0

    iput-boolean v15, v14, Landroid/widget/TextView;->mIsTouchDown:Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/TextView$StylusEventListener;->mPressed:Z

    goto/16 :goto_0

    :catch_0
    move-exception v6

    const-string/jumbo v14, "TextView"

    const-string/jumbo v15, "** skip SemInfoExtractionManager Service by IllegalStateException **"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_2f
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    if-ltz v14, :cond_2e

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    if-ltz v14, :cond_2e

    if-eqz v8, :cond_2e

    check-cast v13, Landroid/text/Spannable;

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    invoke-static {v13, v14, v15}, Landroid/widget/TextView;->semSetSelection(Landroid/text/Spannable;II)V

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {v14}, Landroid/widget/TextView;->-get3(Landroid/widget/TextView;)Landroid/widget/Editor;

    move-result-object v14

    if-eqz v14, :cond_30

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {v14}, Landroid/widget/TextView;->-get3(Landroid/widget/TextView;)Landroid/widget/Editor;

    move-result-object v14

    iget-boolean v14, v14, Landroid/widget/Editor;->mCreatedWithASelection:Z

    if-eqz v14, :cond_30

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {v14}, Landroid/widget/TextView;->-get3(Landroid/widget/TextView;)Landroid/widget/Editor;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Editor;->stopTextActionMode()V

    :cond_30
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {v14}, Landroid/widget/TextView;->-get3(Landroid/widget/TextView;)Landroid/widget/Editor;

    move-result-object v14

    if-eqz v14, :cond_2e

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {v14}, Landroid/widget/TextView;->-get3(Landroid/widget/TextView;)Landroid/widget/Editor;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Editor;->startSelectionActionMode()Z

    move-result v14

    if-eqz v14, :cond_31

    :cond_31
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {v14}, Landroid/widget/TextView;->-get3(Landroid/widget/TextView;)Landroid/widget/Editor;

    move-result-object v14

    const/4 v15, 0x0

    iput-boolean v15, v14, Landroid/widget/Editor;->mCreatedWithASelection:Z

    goto :goto_9

    :sswitch_3
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    const/4 v15, 0x0

    iput-boolean v15, v14, Landroid/widget/TextView;->mIsTouchDown:Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/TextView$StylusEventListener;->mPressed:Z

    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/TextView$StylusEventListener;->mIsSelectableTextView:Z

    if-nez v14, :cond_33

    const/4 v14, 0x0

    invoke-static {v14}, Landroid/text/MultiSelection;->setIsMultiSelectingText(Z)V

    move-object v14, v13

    check-cast v14, Landroid/text/Spannable;

    invoke-static {v14}, Landroid/text/MultiSelection;->removeCurSelection(Landroid/text/Spannable;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    check-cast v13, Landroid/text/Spannable;

    invoke-static {v13}, Landroid/text/MultiSelection;->getMultiSelectionCount(Landroid/text/Spannable;)I

    move-result v14

    if-lez v14, :cond_32

    const/4 v14, 0x1

    :goto_a
    invoke-static {v15, v14}, Landroid/widget/TextView;->-set9(Landroid/widget/TextView;Z)Z

    goto/16 :goto_0

    :cond_32
    const/4 v14, 0x0

    goto :goto_a

    :cond_33
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    const/4 v15, 0x0

    invoke-static {v14, v15}, Landroid/widget/TextView;->-set9(Landroid/widget/TextView;Z)Z

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    if-ltz v14, :cond_10

    check-cast v13, Landroid/text/Spannable;

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    invoke-static {v13, v14}, Landroid/widget/TextView;->semSetSelection(Landroid/text/Spannable;I)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_2
        0x2 -> :sswitch_1
        0x3 -> :sswitch_3
        0xd3 -> :sswitch_0
        0xd4 -> :sswitch_2
        0xd5 -> :sswitch_1
        0xd6 -> :sswitch_3
    .end sparse-switch
.end method
