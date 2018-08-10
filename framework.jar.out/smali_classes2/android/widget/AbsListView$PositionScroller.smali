.class Landroid/widget/AbsListView$PositionScroller;
.super Landroid/widget/AbsListView$AbsPositionScroller;
.source "AbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PositionScroller"
.end annotation


# static fields
.field private static final MOVE_DOWN_BOUND:I = 0x3

.field private static final MOVE_DOWN_POS:I = 0x1

.field private static final MOVE_OFFSET:I = 0x5

.field private static final MOVE_UP_BOUND:I = 0x4

.field private static final MOVE_UP_POS:I = 0x2

.field private static final SCROLL_DURATION:I = 0xc8


# instance fields
.field private mBoundPos:I

.field private final mExtraScroll:I

.field private mLastSeenPos:I

.field private mMode:I

.field private mOffsetFromTop:I

.field private mScrollDuration:I

.field private mStoredFirstPosition:I

.field private mTargetPos:I

.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method constructor <init>(Landroid/widget/AbsListView;)V
    .locals 1

    iput-object p1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0}, Landroid/widget/AbsListView$AbsPositionScroller;-><init>()V

    invoke-static {p1}, Landroid/widget/AbsListView;->-get4(Landroid/widget/AbsListView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledFadingEdgeLength()I

    move-result v0

    iput v0, p0, Landroid/widget/AbsListView$PositionScroller;->mExtraScroll:I

    return-void
.end method

.method private scrollToVisible(III)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget v6, v14, Landroid/widget/AbsListView;->mFirstPosition:I

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v14}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v5

    add-int v14, v6, v5

    add-int/lit8 v7, v14, -0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget-object v14, v14, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v14, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v14}, Landroid/widget/AbsListView;->getHeight()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget-object v15, v15, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->bottom:I

    sub-int v8, v14, v15

    move/from16 v0, p1

    if-lt v0, v6, :cond_0

    move/from16 v0, p1

    if-le v0, v7, :cond_1

    :cond_0
    const-string/jumbo v14, "AbsListView"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "scrollToVisible called with targetPos "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " not visible ["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move/from16 v0, p2

    if-lt v0, v6, :cond_2

    move/from16 v0, p2

    if-le v0, v7, :cond_3

    :cond_2
    const/16 p2, -0x1

    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    sub-int v15, p1, v6

    invoke-virtual {v14, v15}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v13

    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v11

    const/4 v10, 0x0

    if-le v11, v8, :cond_4

    sub-int v10, v11, v8

    :cond_4
    if-ge v13, v9, :cond_5

    sub-int v10, v13, v9

    :cond_5
    if-nez v10, :cond_7

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-static {v14}, Landroid/widget/AbsListView;->-get18(Landroid/widget/AbsListView;)I

    move-result v14

    invoke-static {}, Landroid/widget/AbsListView;->-get0()I

    move-result v15

    if-ne v14, v15, :cond_6

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-static {}, Landroid/widget/AbsListView;->-get1()I

    move-result v15

    invoke-static {v14, v15}, Landroid/widget/AbsListView;->-set6(Landroid/widget/AbsListView;I)I

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-static {v14}, Landroid/widget/AbsListView;->-wrap10(Landroid/widget/AbsListView;)V

    :cond_6
    return-void

    :cond_7
    if-ltz p2, :cond_8

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    sub-int v15, p2, v6

    invoke-virtual {v14, v15}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-gez v10, :cond_9

    add-int v14, v2, v1

    if-le v14, v8, :cond_9

    sub-int v14, v2, v8

    const/4 v15, 0x0

    invoke-static {v15, v14}, Ljava/lang/Math;->max(II)I

    move-result v10

    :cond_8
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move/from16 v0, p3

    invoke-virtual {v14, v10, v0}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    return-void

    :cond_9
    if-lez v10, :cond_8

    sub-int v14, v4, v1

    if-ge v14, v9, :cond_8

    sub-int v14, v4, v9

    const/4 v15, 0x0

    invoke-static {v15, v14}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 43

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/widget/AbsListView;->getHeight()I

    move-result v26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget v12, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    move/from16 v38, v0

    packed-switch v38, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v38

    add-int/lit8 v23, v38, -0x1

    add-int v18, v12, v23

    if-gez v23, :cond_1

    return-void

    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    move/from16 v38, v0

    move/from16 v0, v18

    move/from16 v1, v38

    if-ne v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getHeight()I

    move-result v22

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTop()I

    move-result v25

    sub-int v24, v26, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget v0, v0, Landroid/widget/AbsListView;->mItemCount:I

    move/from16 v38, v0

    add-int/lit8 v38, v38, -0x1

    move/from16 v0, v18

    move/from16 v1, v38

    if-ge v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v38, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mExtraScroll:I

    move/from16 v39, v0

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->max(II)I

    move-result v9

    :goto_1
    sub-int v38, v22, v24

    add-int v35, v38, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v40, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    move/from16 v38, v0

    move/from16 v0, v18

    move/from16 v1, v38

    if-ge v0, v1, :cond_4

    const/16 v38, 0x1

    :goto_2
    const/16 v41, 0x1

    move-object/from16 v0, v39

    move/from16 v1, v35

    move/from16 v2, v40

    move/from16 v3, v41

    move/from16 v4, v38

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/AbsListView;->smoothScrollBy(IIZZ)V

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    move/from16 v38, v0

    move/from16 v0, v18

    move/from16 v1, v38

    if-ge v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    :cond_4
    const/16 v38, 0x0

    goto :goto_2

    :pswitch_1
    const/16 v31, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mBoundPos:I

    move/from16 v38, v0

    move/from16 v0, v38

    if-eq v12, v0, :cond_5

    const/16 v38, 0x1

    move/from16 v0, v38

    if-gt v6, v0, :cond_6

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    invoke-virtual/range {v38 .. v39}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    return-void

    :cond_6
    add-int v38, v12, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget v0, v0, Landroid/widget/AbsListView;->mItemCount:I

    move/from16 v39, v0

    move/from16 v0, v38

    move/from16 v1, v39

    if-ge v0, v1, :cond_5

    add-int/lit8 v28, v12, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    move/from16 v38, v0

    move/from16 v0, v28

    move/from16 v1, v38

    if-ne v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v38, v0

    const/16 v39, 0x1

    invoke-virtual/range {v38 .. v39}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getHeight()I

    move-result v30

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getTop()I

    move-result v32

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v38, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mExtraScroll:I

    move/from16 v39, v0

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->max(II)I

    move-result v9

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mBoundPos:I

    move/from16 v38, v0

    move/from16 v0, v28

    move/from16 v1, v38

    if-ge v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v38, v0

    add-int v39, v30, v32

    sub-int v39, v39, v9

    const/16 v40, 0x0

    move/from16 v0, v40

    move/from16 v1, v39

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v39

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v40, v0

    const/16 v41, 0x1

    const/16 v42, 0x1

    invoke-virtual/range {v38 .. v42}, Landroid/widget/AbsListView;->smoothScrollBy(IIZZ)V

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_8
    move/from16 v0, v32

    if-le v0, v9, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v38, v0

    sub-int v39, v32, v9

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v40, v0

    const/16 v41, 0x1

    const/16 v42, 0x0

    invoke-virtual/range {v38 .. v42}, Landroid/widget/AbsListView;->smoothScrollBy(IIZZ)V

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    invoke-virtual/range {v38 .. v39}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    goto/16 :goto_0

    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    move/from16 v38, v0

    move/from16 v0, v38

    if-ne v12, v0, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v38, v0

    invoke-static/range {v38 .. v38}, Landroid/widget/AbsListView;->-wrap5(Landroid/widget/AbsListView;)Z

    move-result v38

    if-eqz v38, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v38, v0

    invoke-static/range {v38 .. v38}, Landroid/widget/AbsListView;->-get27(Landroid/widget/AbsListView;)Z

    move-result v38

    if-eqz v38, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move/from16 v38, v0

    if-lez v38, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mStoredFirstPosition:I

    move/from16 v38, v0

    move/from16 v0, v38

    if-ne v0, v12, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    invoke-virtual/range {v38 .. v41}, Landroid/widget/AbsListView;->smoothScrollToPositionFromTop(III)V

    :cond_a
    move-object/from16 v0, p0

    iput v12, v0, Landroid/widget/AbsListView$PositionScroller;->mStoredFirstPosition:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    invoke-virtual/range {v38 .. v39}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    if-nez v14, :cond_c

    return-void

    :cond_c
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v15

    if-lez v12, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mExtraScroll:I

    move/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v39, v0

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->max(II)I

    move-result v9

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v39, v0

    sub-int v40, v15, v9

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v41, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    move/from16 v38, v0

    move/from16 v0, v38

    if-le v12, v0, :cond_e

    const/16 v38, 0x1

    :goto_4
    const/16 v42, 0x1

    move-object/from16 v0, v39

    move/from16 v1, v40

    move/from16 v2, v41

    move/from16 v3, v42

    move/from16 v4, v38

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/AbsListView;->smoothScrollBy(IIZZ)V

    move-object/from16 v0, p0

    iput v12, v0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    move/from16 v38, v0

    move/from16 v0, v38

    if-le v12, v0, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget v9, v0, Landroid/graphics/Rect;->top:I

    goto :goto_3

    :cond_e
    const/16 v38, 0x0

    goto :goto_4

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v38, v0

    invoke-static/range {v38 .. v38}, Landroid/widget/AbsListView;->-get18(Landroid/widget/AbsListView;)I

    move-result v38

    invoke-static {}, Landroid/widget/AbsListView;->-get2()I

    move-result v39

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v38, v0

    invoke-static {}, Landroid/widget/AbsListView;->-get0()I

    move-result v39

    invoke-static/range {v38 .. v39}, Landroid/widget/AbsListView;->-set6(Landroid/widget/AbsListView;I)I

    goto/16 :goto_0

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v38

    add-int/lit8 v23, v38, -0x2

    if-gez v23, :cond_10

    return-void

    :cond_10
    add-int v18, v12, v23

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    move/from16 v38, v0

    move/from16 v0, v18

    move/from16 v1, v38

    if-ne v0, v1, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getHeight()I

    move-result v22

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTop()I

    move-result v25

    sub-int v24, v26, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v38, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mExtraScroll:I

    move/from16 v39, v0

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->max(II)I

    move-result v9

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mBoundPos:I

    move/from16 v38, v0

    move/from16 v0, v18

    move/from16 v1, v38

    if-le v0, v1, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v38, v0

    sub-int v39, v24, v9

    move/from16 v0, v39

    neg-int v0, v0

    move/from16 v39, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v40, v0

    const/16 v41, 0x1

    const/16 v42, 0x1

    invoke-virtual/range {v38 .. v42}, Landroid/widget/AbsListView;->smoothScrollBy(IIZZ)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_12
    sub-int v5, v26, v9

    add-int v21, v25, v22

    move/from16 v0, v21

    if-le v5, v0, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v38, v0

    sub-int v39, v5, v21

    move/from16 v0, v39

    neg-int v0, v0

    move/from16 v39, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v40, v0

    const/16 v41, 0x1

    const/16 v42, 0x0

    invoke-virtual/range {v38 .. v42}, Landroid/widget/AbsListView;->smoothScrollBy(IIZZ)V

    goto/16 :goto_0

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    invoke-virtual/range {v38 .. v39}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    goto/16 :goto_0

    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v38, v0

    invoke-static/range {v38 .. v38}, Landroid/widget/AbsListView;->-wrap5(Landroid/widget/AbsListView;)Z

    move-result v38

    if-eqz v38, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v38, v0

    invoke-static/range {v38 .. v38}, Landroid/widget/AbsListView;->-get27(Landroid/widget/AbsListView;)Z

    move-result v38

    if-eqz v38, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move/from16 v38, v0

    if-nez v38, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v38, v0

    invoke-static/range {v38 .. v38}, Landroid/widget/AbsListView;->-wrap1(Landroid/widget/AbsListView;)Z

    move-result v38

    xor-int/lit8 v38, v38, 0x1

    if-eqz v38, :cond_14

    const-string/jumbo v38, "AbsListView"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v40, " re calculate done3 mFirstPosition = "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move/from16 v40, v0

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    invoke-static/range {v38 .. v39}, Landroid/widget/AbsListView;->-set8(Landroid/widget/AbsListView;Z)Z

    goto/16 :goto_0

    :cond_14
    move-object/from16 v0, p0

    iput v12, v0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    move/from16 v33, v0

    add-int v38, v12, v6

    add-int/lit8 v18, v38, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    invoke-virtual/range {v38 .. v39}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v38, v0

    add-int/lit8 v39, v6, -0x1

    invoke-virtual/range {v38 .. v39}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getHeight()I

    move-result v17

    int-to-float v0, v11

    move/from16 v38, v0

    const/16 v39, 0x0

    cmpl-float v38, v38, v39

    if-nez v38, :cond_16

    const/high16 v13, 0x3f800000    # 1.0f

    :goto_5
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v38, v0

    const/16 v39, 0x0

    cmpl-float v38, v38, v39

    if-nez v38, :cond_17

    const/high16 v19, 0x3f800000    # 1.0f

    :goto_6
    const/16 v37, 0x0

    move/from16 v0, v33

    if-ge v0, v12, :cond_18

    sub-int v38, v12, v33

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v38, v0

    const/high16 v39, 0x3f800000    # 1.0f

    sub-float v39, v39, v13

    add-float v38, v38, v39

    const/high16 v39, 0x3f800000    # 1.0f

    add-float v37, v38, v39

    :cond_15
    :goto_7
    int-to-float v0, v6

    move/from16 v38, v0

    div-float v34, v37, v38

    invoke-static/range {v34 .. v34}, Ljava/lang/Math;->abs(F)F

    move-result v38

    const/high16 v39, 0x3f800000    # 1.0f

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->min(FF)F

    move-result v27

    move/from16 v0, v33

    if-ge v0, v12, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/widget/AbsListView;->getHeight()I

    move-result v38

    move/from16 v0, v38

    neg-int v0, v0

    move/from16 v38, v0

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v38, v0

    mul-float v38, v38, v27

    move/from16 v0, v38

    float-to-int v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v38, v0

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v38, v0

    mul-float v38, v38, v27

    move/from16 v0, v38

    float-to-int v8, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v38, v0

    const/16 v39, 0x1

    const/16 v40, 0x1

    move-object/from16 v0, v38

    move/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v7, v8, v1, v2}, Landroid/widget/AbsListView;->smoothScrollBy(IIZZ)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_16
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v38

    add-int v38, v38, v11

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v38, v0

    int-to-float v0, v11

    move/from16 v39, v0

    div-float v13, v38, v39

    goto/16 :goto_5

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/widget/AbsListView;->getHeight()I

    move-result v38

    add-int v38, v38, v17

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getBottom()I

    move-result v39

    sub-int v38, v38, v39

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v38, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v39, v0

    div-float v19, v38, v39

    goto/16 :goto_6

    :cond_18
    move/from16 v0, v33

    move/from16 v1, v18

    if-le v0, v1, :cond_15

    sub-int v38, v33, v18

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v38, v0

    const/high16 v39, 0x3f800000    # 1.0f

    sub-float v39, v39, v19

    add-float v37, v38, v39

    goto/16 :goto_7

    :cond_19
    move/from16 v0, v33

    move/from16 v1, v18

    if-le v0, v1, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/widget/AbsListView;->getHeight()I

    move-result v38

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v38, v0

    mul-float v38, v38, v27

    move/from16 v0, v38

    float-to-int v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v38, v0

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v38, v0

    mul-float v38, v38, v27

    move/from16 v0, v38

    float-to-int v8, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v38, v0

    const/16 v39, 0x1

    const/16 v40, 0x1

    move-object/from16 v0, v38

    move/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v7, v8, v1, v2}, Landroid/widget/AbsListView;->smoothScrollBy(IIZZ)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v38, v0

    sub-int v39, v33, v12

    invoke-virtual/range {v38 .. v39}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Landroid/view/View;->getTop()I

    move-result v36

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mOffsetFromTop:I

    move/from16 v38, v0

    sub-int v7, v36, v38

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v38, v0

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v38, v0

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v39

    move/from16 v0, v39

    int-to-float v0, v0

    move/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/widget/AbsListView;->getHeight()I

    move-result v40

    move/from16 v0, v40

    int-to-float v0, v0

    move/from16 v40, v0

    div-float v39, v39, v40

    mul-float v38, v38, v39

    move/from16 v0, v38

    float-to-int v8, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v38, v0

    const/16 v39, 0x1

    const/16 v40, 0x0

    move-object/from16 v0, v38

    move/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v7, v8, v1, v2}, Landroid/widget/AbsListView;->smoothScrollBy(IIZZ)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public start(I)V
    .locals 9

    const/16 v8, 0xc8

    const/4 v6, 0x0

    const/4 v7, -0x1

    invoke-virtual {p0}, Landroid/widget/AbsListView$PositionScroller;->stop()V

    iget-object v5, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget-boolean v5, v5, Landroid/widget/AbsListView;->mDataChanged:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    new-instance v6, Landroid/widget/AbsListView$PositionScroller$1;

    invoke-direct {v6, p0, p1}, Landroid/widget/AbsListView$PositionScroller$1;-><init>(Landroid/widget/AbsListView$PositionScroller;I)V

    iput-object v6, v5, Landroid/widget/AbsListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    return-void

    :cond_0
    iget-object v5, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v5, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget v2, v5, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int v5, v2, v0

    add-int/lit8 v3, v5, -0x1

    iget-object v5, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/widget/AbsListView;->getCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v5, p1}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-ge v1, v2, :cond_2

    sub-int v5, v2, v1

    add-int/lit8 v4, v5, 0x1

    const/4 v5, 0x2

    iput v5, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    :goto_0
    if-lez v4, :cond_5

    div-int v5, v8, v4

    iput v5, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    :goto_1
    iput v1, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    iput v7, p0, Landroid/widget/AbsListView$PositionScroller;->mBoundPos:I

    iput v7, p0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    iget-object v5, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v5, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    if-le v1, v3, :cond_3

    sub-int v5, v1, v3

    add-int/lit8 v4, v5, 0x1

    const/4 v5, 0x1

    iput v5, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    goto :goto_0

    :cond_3
    iget-object v5, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-static {v5}, Landroid/widget/AbsListView;->-get18(Landroid/widget/AbsListView;)I

    move-result v5

    invoke-static {}, Landroid/widget/AbsListView;->-get2()I

    move-result v6

    if-ne v5, v6, :cond_4

    iget-object v5, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-static {}, Landroid/widget/AbsListView;->-get0()I

    move-result v6

    invoke-static {v5, v6}, Landroid/widget/AbsListView;->-set6(Landroid/widget/AbsListView;I)I

    :cond_4
    invoke-direct {p0, v1, v7, v8}, Landroid/widget/AbsListView$PositionScroller;->scrollToVisible(III)V

    return-void

    :cond_5
    iput v8, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    goto :goto_1
.end method

.method public start(II)V
    .locals 11

    invoke-virtual {p0}, Landroid/widget/AbsListView$PositionScroller;->stop()V

    const/4 v9, -0x1

    if-ne p2, v9, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/AbsListView$PositionScroller;->start(I)V

    return-void

    :cond_0
    iget-object v9, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget-boolean v9, v9, Landroid/widget/AbsListView;->mDataChanged:Z

    if-eqz v9, :cond_1

    iget-object v9, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    new-instance v10, Landroid/widget/AbsListView$PositionScroller$2;

    invoke-direct {v10, p0, p1, p2}, Landroid/widget/AbsListView$PositionScroller$2;-><init>(Landroid/widget/AbsListView$PositionScroller;II)V

    iput-object v10, v9, Landroid/widget/AbsListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    return-void

    :cond_1
    iget-object v9, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v9}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    if-nez v3, :cond_2

    return-void

    :cond_2
    iget-object v9, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget v5, v9, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int v9, v5, v3

    add-int/lit8 v6, v9, -0x1

    iget-object v9, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v9}, Landroid/widget/AbsListView;->getCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-static {v9, p1}, Ljava/lang/Math;->min(II)I

    move-result v9

    const/4 v10, 0x0

    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    if-ge v4, v5, :cond_5

    sub-int v1, v6, p2

    const/4 v9, 0x1

    if-ge v1, v9, :cond_3

    return-void

    :cond_3
    sub-int v9, v5, v4

    add-int/lit8 v7, v9, 0x1

    add-int/lit8 v2, v1, -0x1

    if-ge v2, v7, :cond_4

    move v8, v2

    const/4 v9, 0x4

    iput v9, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    :goto_0
    if-lez v8, :cond_9

    const/16 v9, 0xc8

    div-int/2addr v9, v8

    iput v9, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    :goto_1
    iput v4, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    iput p2, p0, Landroid/widget/AbsListView$PositionScroller;->mBoundPos:I

    const/4 v9, -0x1

    iput v9, p0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    iget-object v9, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v9, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void

    :cond_4
    move v8, v7

    const/4 v9, 0x2

    iput v9, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    goto :goto_0

    :cond_5
    if-le v4, v6, :cond_8

    sub-int v0, p2, v5

    const/4 v9, 0x1

    if-ge v0, v9, :cond_6

    return-void

    :cond_6
    sub-int v9, v4, v6

    add-int/lit8 v7, v9, 0x1

    add-int/lit8 v2, v0, -0x1

    if-ge v2, v7, :cond_7

    move v8, v2

    const/4 v9, 0x3

    iput v9, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    goto :goto_0

    :cond_7
    move v8, v7

    const/4 v9, 0x1

    iput v9, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    goto :goto_0

    :cond_8
    const/16 v9, 0xc8

    invoke-direct {p0, v4, p2, v9}, Landroid/widget/AbsListView$PositionScroller;->scrollToVisible(III)V

    return-void

    :cond_9
    const/16 v9, 0xc8

    iput v9, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    goto :goto_1
.end method

.method public startWithOffset(II)V
    .locals 1

    const/16 v0, 0xc8

    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/AbsListView$PositionScroller;->startWithOffset(III)V

    return-void
.end method

.method public startWithOffset(III)V
    .locals 11

    const/4 v10, 0x0

    const/4 v9, -0x1

    invoke-virtual {p0}, Landroid/widget/AbsListView$PositionScroller;->stop()V

    iget-object v7, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget-boolean v7, v7, Landroid/widget/AbsListView;->mDataChanged:Z

    if-eqz v7, :cond_0

    move v3, p2

    iget-object v7, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    new-instance v8, Landroid/widget/AbsListView$PositionScroller$3;

    invoke-direct {v8, p0, p1, p2, p3}, Landroid/widget/AbsListView$PositionScroller$3;-><init>(Landroid/widget/AbsListView$PositionScroller;III)V

    iput-object v8, v7, Landroid/widget/AbsListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    return-void

    :cond_0
    iget-object v7, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v7}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v7, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v7}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v7

    add-int/2addr p2, v7

    iget-object v7, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v7}, Landroid/widget/AbsListView;->getCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-static {v7, p1}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v10, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    iput p2, p0, Landroid/widget/AbsListView$PositionScroller;->mOffsetFromTop:I

    iput v9, p0, Landroid/widget/AbsListView$PositionScroller;->mBoundPos:I

    iput v9, p0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    const/4 v7, 0x5

    iput v7, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    iget-object v7, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget v1, v7, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int v7, v1, v0

    add-int/lit8 v2, v7, -0x1

    iget v7, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    if-ge v7, v1, :cond_2

    iget v7, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    sub-int v6, v1, v7

    :goto_0
    int-to-float v7, v6

    int-to-float v8, v0

    div-float v4, v7, v8

    const/high16 v7, 0x3f800000    # 1.0f

    cmpg-float v7, v4, v7

    if-gez v7, :cond_4

    :goto_1
    iput p3, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    iput v9, p0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    iget-object v7, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v7, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    iget v7, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    if-le v7, v2, :cond_3

    iget v7, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    sub-int v6, v7, v2

    goto :goto_0

    :cond_3
    iget-object v7, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget v8, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    sub-int/2addr v8, v1

    invoke-virtual {v7, v8}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v5

    iget-object v7, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    sub-int v8, v5, p2

    const/4 v9, 0x1

    invoke-virtual {v7, v8, p3, v9, v10}, Landroid/widget/AbsListView;->smoothScrollBy(IIZZ)V

    return-void

    :cond_4
    int-to-float v7, p3

    div-float/2addr v7, v4

    float-to-int p3, v7

    goto :goto_1
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method
