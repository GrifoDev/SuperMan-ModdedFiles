.class public Lcom/android/internal/widget/NotificationActionListLayout;
.super Landroid/view/ViewGroup;
.source "NotificationActionListLayout.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/NotificationActionListLayout$-void__clinit___LambdaImpl0;
    }
.end annotation


# static fields
.field public static final MEASURE_ORDER_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/widget/TextView;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mMeasureOrderOther:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mMeasureOrderTextViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/widget/TextView;",
            ">;>;"
        }
    .end annotation
.end field

.field private mTotalWidth:I


# direct methods
.method static synthetic -com_android_internal_widget_NotificationActionListLayout_lambda$1(Landroid/util/Pair;Landroid/util/Pair;)I
    .locals 2
    .param p0, "a"    # Landroid/util/Pair;
    .param p1, "b"    # Landroid/util/Pair;

    .prologue
    .line 267
    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 267
    new-instance v0, Lcom/android/internal/widget/NotificationActionListLayout$-void__clinit___LambdaImpl0;

    invoke-direct {v0}, Lcom/android/internal/widget/NotificationActionListLayout$-void__clinit___LambdaImpl0;-><init>()V

    .line 266
    sput-object v0, Lcom/android/internal/widget/NotificationActionListLayout;->MEASURE_ORDER_COMPARATOR:Ljava/util/Comparator;

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mTotalWidth:I

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderTextViews:Ljava/util/ArrayList;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderOther:Ljava/util/ArrayList;

    .line 42
    return-void
.end method

.method private clearMeasureOrder()V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderOther:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 172
    iget-object v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderTextViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 170
    return-void
.end method

.method private rebuildMeasureOrder(II)V
    .locals 5
    .param p1, "capacityText"    # I
    .param p2, "capacityOther"    # I

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->clearMeasureOrder()V

    .line 155
    iget-object v3, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderTextViews:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 156
    iget-object v3, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderOther:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 157
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getChildCount()I

    move-result v1

    .line 158
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 159
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/NotificationActionListLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 160
    .local v0, "c":Landroid/view/View;
    instance-of v3, v0, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    move-object v3, v0

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 161
    iget-object v4, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderTextViews:Ljava/util/ArrayList;

    move-object v3, v0

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 162
    check-cast v0, Landroid/widget/TextView;

    .line 161
    .end local v0    # "c":Landroid/view/View;
    invoke-static {v3, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 164
    .restart local v0    # "c":Landroid/view/View;
    :cond_0
    iget-object v3, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderOther:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 167
    .end local v0    # "c":Landroid/view/View;
    :cond_1
    iget-object v3, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderTextViews:Ljava/util/ArrayList;

    sget-object v4, Lcom/android/internal/widget/NotificationActionListLayout;->MEASURE_ORDER_COMPARATOR:Ljava/util/Comparator;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 153
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 263
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    return v0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .prologue
    .line 250
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 245
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 255
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    .line 256
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 258
    .restart local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 20
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 189
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/NotificationActionListLayout;->isLayoutRtl()Z

    move-result v13

    .line 190
    .local v13, "isLayoutRtl":Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mPaddingTop:I

    move/from16 v16, v0

    .line 196
    .local v16, "paddingTop":I
    sub-int v10, p5, p3

    .line 199
    .local v10, "height":I
    sub-int v18, v10, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mPaddingBottom:I

    move/from16 v19, v0

    sub-int v12, v18, v19

    .line 201
    .local v12, "innerHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getChildCount()I

    move-result v8

    .line 203
    .local v8, "count":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getLayoutDirection()I

    move-result v14

    .line 204
    .local v14, "layoutDirection":I
    const v18, 0x800003

    move/from16 v0, v18

    invoke-static {v0, v14}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v18

    packed-switch v18, :pswitch_data_0

    .line 212
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mPaddingLeft:I

    .line 216
    .local v5, "childLeft":I
    :goto_0
    const/16 v17, 0x0

    .line 217
    .local v17, "start":I
    const/4 v9, 0x1

    .line 219
    .local v9, "dir":I
    if-eqz v13, :cond_0

    .line 220
    add-int/lit8 v17, v8, -0x1

    .line 221
    const/4 v9, -0x1

    .line 224
    :cond_0
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    if-ge v11, v8, :cond_2

    .line 225
    mul-int v18, v9, v11

    add-int v4, v17, v18

    .line 226
    .local v4, "childIndex":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/NotificationActionListLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 227
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v18

    const/16 v19, 0x8

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_1

    .line 228
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 229
    .local v7, "childWidth":I
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 231
    .local v3, "childHeight":I
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 233
    .local v15, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    sub-int v18, v12, v3

    div-int/lit8 v18, v18, 0x2

    add-int v18, v18, v16

    .line 234
    iget v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v19, v0

    .line 233
    add-int v18, v18, v19

    .line 234
    iget v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move/from16 v19, v0

    .line 233
    sub-int v6, v18, v19

    .line 236
    .local v6, "childTop":I
    iget v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v18, v0

    add-int v5, v5, v18

    .line 237
    add-int v18, v5, v7

    add-int v19, v6, v3

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v2, v5, v6, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 238
    iget v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v18, v0

    add-int v18, v18, v7

    add-int v5, v5, v18

    .line 224
    .end local v3    # "childHeight":I
    .end local v6    # "childTop":I
    .end local v7    # "childWidth":I
    .end local v15    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 207
    .end local v2    # "child":Landroid/view/View;
    .end local v4    # "childIndex":I
    .end local v5    # "childLeft":I
    .end local v9    # "dir":I
    .end local v11    # "i":I
    .end local v17    # "start":I
    :pswitch_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mPaddingLeft:I

    move/from16 v18, v0

    add-int v18, v18, p4

    sub-int v18, v18, p2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mTotalWidth:I

    move/from16 v19, v0

    sub-int v5, v18, v19

    .line 208
    .restart local v5    # "childLeft":I
    goto :goto_0

    .line 188
    .restart local v9    # "dir":I
    .restart local v11    # "i":I
    .restart local v17    # "start":I
    :cond_2
    return-void

    .line 204
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 30
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 48
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getChildCount()I

    move-result v13

    .line 49
    .local v13, "N":I
    const/16 v29, 0x0

    .line 50
    .local v29, "textViews":I
    const/16 v26, 0x0

    .line 51
    .local v26, "otherViews":I
    const/16 v23, 0x0

    .line 53
    .local v23, "notGoneChildren":I
    const/16 v18, 0x0

    .line 54
    .local v18, "lastNotGoneChild":Landroid/view/View;
    const/16 v16, 0x0

    .end local v18    # "lastNotGoneChild":Landroid/view/View;
    .local v16, "i":I
    :goto_0
    move/from16 v0, v16

    if-ge v0, v13, :cond_2

    .line 55
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/NotificationActionListLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 56
    .local v4, "c":Landroid/view/View;
    instance-of v3, v4, Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 57
    add-int/lit8 v29, v29, 0x1

    .line 61
    :goto_1
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v5, 0x8

    if-eq v3, v5, :cond_0

    .line 62
    add-int/lit8 v23, v23, 0x1

    .line 63
    move-object/from16 v18, v4

    .line 54
    :cond_0
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 59
    :cond_1
    add-int/lit8 v26, v26, 0x1

    goto :goto_1

    .line 69
    .end local v4    # "c":Landroid/view/View;
    :cond_2
    const/16 v22, 0x0

    .line 70
    .local v22, "needRebuild":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderTextViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v29

    if-ne v0, v3, :cond_3

    .line 71
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderOther:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v26

    if-eq v0, v3, :cond_4

    .line 72
    :cond_3
    const/16 v22, 0x1

    .line 74
    :cond_4
    if-nez v22, :cond_6

    .line 75
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderTextViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v28

    .line 76
    .local v28, "size":I
    const/16 v16, 0x0

    :goto_2
    move/from16 v0, v16

    move/from16 v1, v28

    if-ge v0, v1, :cond_6

    .line 77
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderTextViews:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/util/Pair;

    .line 78
    .local v27, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/widget/TextView;>;"
    move-object/from16 v0, v27

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object/from16 v0, v27

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-eq v5, v3, :cond_5

    .line 79
    const/16 v22, 0x1

    .line 76
    :cond_5
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 83
    .end local v27    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/widget/TextView;>;"
    .end local v28    # "size":I
    :cond_6
    const/4 v3, 0x1

    move/from16 v0, v23

    if-le v0, v3, :cond_7

    if-eqz v22, :cond_7

    .line 84
    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/NotificationActionListLayout;->rebuildMeasureOrder(II)V

    .line 88
    :cond_7
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    if-eqz v3, :cond_8

    const/4 v15, 0x1

    .line 90
    .local v15, "constrained":Z
    :goto_3
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mPaddingLeft:I

    sub-int/2addr v3, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mPaddingRight:I

    sub-int v17, v3, v5

    .line 91
    .local v17, "innerWidth":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderOther:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v25

    .line 92
    .local v25, "otherSize":I
    const/4 v10, 0x0

    .line 95
    .local v10, "usedWidth":I
    const/16 v21, 0x0

    .line 96
    .local v21, "measuredChildren":I
    const/16 v16, 0x0

    :goto_4
    move/from16 v0, v16

    if-ge v0, v13, :cond_c

    const/4 v3, 0x1

    move/from16 v0, v23

    if-le v0, v3, :cond_c

    .line 100
    move/from16 v0, v16

    move/from16 v1, v25

    if-ge v0, v1, :cond_9

    .line 101
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderOther:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 105
    .restart local v4    # "c":Landroid/view/View;
    :goto_5
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v5, 0x8

    if-ne v3, v5, :cond_a

    .line 96
    :goto_6
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .line 88
    .end local v4    # "c":Landroid/view/View;
    .end local v10    # "usedWidth":I
    .end local v15    # "constrained":Z
    .end local v17    # "innerWidth":I
    .end local v21    # "measuredChildren":I
    .end local v25    # "otherSize":I
    :cond_8
    const/4 v15, 0x0

    .restart local v15    # "constrained":Z
    goto :goto_3

    .line 103
    .restart local v10    # "usedWidth":I
    .restart local v17    # "innerWidth":I
    .restart local v21    # "measuredChildren":I
    .restart local v25    # "otherSize":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderTextViews:Ljava/util/ArrayList;

    sub-int v5, v16, v25

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/view/View;

    .restart local v4    # "c":Landroid/view/View;
    goto :goto_5

    .line 108
    :cond_a
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    check-cast v19, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 110
    .local v19, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    move v6, v10

    .line 111
    .local v6, "usedWidthForChild":I
    if-eqz v15, :cond_b

    .line 116
    sub-int v14, v17, v10

    .line 117
    .local v14, "availableWidth":I
    sub-int v3, v23, v21

    div-int v20, v14, v3

    .line 119
    .local v20, "maxWidthForChild":I
    sub-int v6, v17, v20

    .line 123
    .end local v14    # "availableWidth":I
    .end local v20    # "maxWidthForChild":I
    :cond_b
    const/4 v8, 0x0

    move-object/from16 v3, p0

    move/from16 v5, p1

    move/from16 v7, p2

    .line 122
    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/widget/NotificationActionListLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 125
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    move-object/from16 v0, v19

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v5

    move-object/from16 v0, v19

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, v5

    add-int/2addr v10, v3

    .line 126
    add-int/lit8 v21, v21, 0x1

    goto :goto_6

    .line 131
    .end local v4    # "c":Landroid/view/View;
    .end local v6    # "usedWidthForChild":I
    .end local v19    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_c
    if-eqz v18, :cond_e

    if-eqz v15, :cond_f

    move/from16 v0, v17

    if-ge v10, v0, :cond_f

    .line 133
    :goto_7
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    check-cast v19, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 134
    .restart local v19    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    const/4 v3, 0x1

    move/from16 v0, v23

    if-le v0, v3, :cond_d

    .line 136
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    move-object/from16 v0, v19

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v5

    move-object/from16 v0, v19

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, v5

    sub-int/2addr v10, v3

    .line 139
    :cond_d
    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    move/from16 v24, v0

    .line 140
    .local v24, "originalWidth":I
    const/4 v3, -0x1

    move-object/from16 v0, v19

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 142
    const/4 v12, 0x0

    move-object/from16 v7, p0

    move-object/from16 v8, v18

    move/from16 v9, p1

    move/from16 v11, p2

    .line 141
    invoke-virtual/range {v7 .. v12}, Lcom/android/internal/widget/NotificationActionListLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 143
    move/from16 v0, v24

    move-object/from16 v1, v19

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 145
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    move-object/from16 v0, v19

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v5

    move-object/from16 v0, v19

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, v5

    add-int/2addr v10, v3

    .line 148
    .end local v19    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v24    # "originalWidth":I
    :cond_e
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mPaddingRight:I

    add-int/2addr v3, v10

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mPaddingLeft:I

    add-int/2addr v3, v5

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mTotalWidth:I

    .line 149
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getSuggestedMinimumWidth()I

    move-result v3

    move/from16 v0, p1

    invoke-static {v3, v0}, Lcom/android/internal/widget/NotificationActionListLayout;->resolveSize(II)I

    move-result v3

    .line 150
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getSuggestedMinimumHeight()I

    move-result v5

    move/from16 v0, p2

    invoke-static {v5, v0}, Lcom/android/internal/widget/NotificationActionListLayout;->resolveSize(II)I

    move-result v5

    .line 149
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5}, Lcom/android/internal/widget/NotificationActionListLayout;->setMeasuredDimension(II)V

    .line 47
    return-void

    .line 132
    :cond_f
    const/4 v3, 0x1

    move/from16 v0, v23

    if-ne v0, v3, :cond_e

    goto :goto_7
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 177
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    .line 178
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->clearMeasureOrder()V

    .line 176
    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 183
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    .line 184
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->clearMeasureOrder()V

    .line 182
    return-void
.end method
