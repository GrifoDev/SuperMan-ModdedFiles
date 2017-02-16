.class final Ljava/util/ArraysParallelSortHelpers$FJObject$Merger;
.super Ljava/util/concurrent/CountedCompleter;
.source "ArraysParallelSortHelpers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ArraysParallelSortHelpers$FJObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Merger"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/CountedCompleter",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field static final serialVersionUID:J = 0x21f3ddce4497ab4cL


# instance fields
.field final a:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TT;>;"
        }
    .end annotation
.end field

.field final gran:I

.field final lbase:I

.field final lsize:I

.field final rbase:I

.field final rsize:I

.field final w:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field final wbase:I


# direct methods
.method constructor <init>(Ljava/util/concurrent/CountedCompleter;[Ljava/lang/Object;[Ljava/lang/Object;IIIIIILjava/util/Comparator;)V
    .locals 0
    .param p4, "lbase"    # I
    .param p5, "lsize"    # I
    .param p6, "rbase"    # I
    .param p7, "rsize"    # I
    .param p8, "wbase"    # I
    .param p9, "gran"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CountedCompleter",
            "<*>;[TT;[TT;IIIIII",
            "Ljava/util/Comparator",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 159
    .local p0, "this":Ljava/util/ArraysParallelSortHelpers$FJObject$Merger;, "Ljava/util/ArraysParallelSortHelpers$FJObject$Merger<TT;>;"
    .local p1, "par":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    .local p2, "a":[Ljava/lang/Object;, "[TT;"
    .local p3, "w":[Ljava/lang/Object;, "[TT;"
    .local p10, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/CountedCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    .line 160
    iput-object p2, p0, Ljava/util/ArraysParallelSortHelpers$FJObject$Merger;->a:[Ljava/lang/Object;

    iput-object p3, p0, Ljava/util/ArraysParallelSortHelpers$FJObject$Merger;->w:[Ljava/lang/Object;

    .line 161
    iput p4, p0, Ljava/util/ArraysParallelSortHelpers$FJObject$Merger;->lbase:I

    iput p5, p0, Ljava/util/ArraysParallelSortHelpers$FJObject$Merger;->lsize:I

    .line 162
    iput p6, p0, Ljava/util/ArraysParallelSortHelpers$FJObject$Merger;->rbase:I

    iput p7, p0, Ljava/util/ArraysParallelSortHelpers$FJObject$Merger;->rsize:I

    .line 163
    iput p8, p0, Ljava/util/ArraysParallelSortHelpers$FJObject$Merger;->wbase:I

    iput p9, p0, Ljava/util/ArraysParallelSortHelpers$FJObject$Merger;->gran:I

    .line 164
    iput-object p10, p0, Ljava/util/ArraysParallelSortHelpers$FJObject$Merger;->comparator:Ljava/util/Comparator;

    .line 158
    return-void
.end method


# virtual methods
.method public final compute()V
    .locals 30

    .prologue
    .line 168
    .local p0, "this":Ljava/util/ArraysParallelSortHelpers$FJObject$Merger;, "Ljava/util/ArraysParallelSortHelpers$FJObject$Merger<TT;>;"
    move-object/from16 v0, p0

    iget-object v12, v0, Ljava/util/ArraysParallelSortHelpers$FJObject$Merger;->comparator:Ljava/util/Comparator;

    .line 169
    .local v12, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/util/ArraysParallelSortHelpers$FJObject$Merger;->a:[Ljava/lang/Object;

    .local v4, "a":[Ljava/lang/Object;, "[TT;"
    move-object/from16 v0, p0

    iget-object v5, v0, Ljava/util/ArraysParallelSortHelpers$FJObject$Merger;->w:[Ljava/lang/Object;

    .line 170
    .local v5, "w":[Ljava/lang/Object;, "[TT;"
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/ArraysParallelSortHelpers$FJObject$Merger;->lbase:I

    move/from16 v17, v0

    .local v17, "lb":I
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/ArraysParallelSortHelpers$FJObject$Merger;->lsize:I

    move/from16 v21, v0

    .local v21, "ln":I
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/ArraysParallelSortHelpers$FJObject$Merger;->rbase:I

    move/from16 v23, v0

    .line 171
    .local v23, "rb":I
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/ArraysParallelSortHelpers$FJObject$Merger;->rsize:I

    move/from16 v27, v0

    .local v27, "rn":I
    move-object/from16 v0, p0

    iget v15, v0, Ljava/util/ArraysParallelSortHelpers$FJObject$Merger;->wbase:I

    .local v15, "k":I
    move-object/from16 v0, p0

    iget v11, v0, Ljava/util/ArraysParallelSortHelpers$FJObject$Merger;->gran:I

    .line 172
    .local v11, "g":I
    if-eqz v4, :cond_0

    if-nez v5, :cond_1

    .line 174
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3

    .line 172
    :cond_1
    if-ltz v17, :cond_0

    if-ltz v23, :cond_0

    if-ltz v15, :cond_0

    .line 173
    if-eqz v12, :cond_0

    .line 176
    :goto_0
    move/from16 v0, v21

    move/from16 v1, v27

    if-lt v0, v1, :cond_5

    .line 177
    move/from16 v0, v21

    if-gt v0, v11, :cond_3

    .line 211
    :cond_2
    add-int v18, v17, v21

    .local v18, "lf":I
    add-int v24, v23, v27

    .local v24, "rf":I
    move/from16 v16, v15

    .line 212
    .end local v15    # "k":I
    .local v16, "k":I
    :goto_1
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_9

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_9

    .line 214
    aget-object v13, v4, v17

    .local v13, "al":Ljava/lang/Object;, "TT;"
    aget-object v14, v4, v23

    .local v14, "ar":Ljava/lang/Object;, "TT;"
    invoke-interface {v12, v13, v14}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gtz v3, :cond_8

    .line 215
    add-int/lit8 v17, v17, 0x1

    move-object/from16 v29, v13

    .line 220
    .local v29, "t":Ljava/lang/Object;, "TT;"
    :goto_2
    add-int/lit8 v15, v16, 0x1

    .end local v16    # "k":I
    .restart local v15    # "k":I
    aput-object v29, v5, v16

    move/from16 v16, v15

    .end local v15    # "k":I
    .restart local v16    # "k":I
    goto :goto_1

    .line 179
    .end local v13    # "al":Ljava/lang/Object;, "TT;"
    .end local v14    # "ar":Ljava/lang/Object;, "TT;"
    .end local v16    # "k":I
    .end local v18    # "lf":I
    .end local v24    # "rf":I
    .end local v29    # "t":Ljava/lang/Object;, "TT;"
    .restart local v15    # "k":I
    :cond_3
    move/from16 v25, v27

    .line 180
    .local v25, "rh":I
    ushr-int/lit8 v19, v21, 0x1

    .local v19, "lh":I
    add-int v3, v19, v17

    aget-object v28, v4, v3

    .line 181
    .local v28, "split":Ljava/lang/Object;, "TT;"
    const/16 v22, 0x0

    .local v22, "lo":I
    :goto_3
    move/from16 v0, v22

    move/from16 v1, v25

    if-ge v0, v1, :cond_7

    .line 182
    add-int v3, v22, v25

    ushr-int/lit8 v26, v3, 0x1

    .line 183
    .local v26, "rm":I
    add-int v3, v26, v23

    aget-object v3, v4, v3

    move-object/from16 v0, v28

    invoke-interface {v12, v0, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gtz v3, :cond_4

    .line 184
    move/from16 v25, v26

    goto :goto_3

    .line 186
    :cond_4
    add-int/lit8 v22, v26, 0x1

    goto :goto_3

    .line 190
    .end local v19    # "lh":I
    .end local v22    # "lo":I
    .end local v25    # "rh":I
    .end local v26    # "rm":I
    .end local v28    # "split":Ljava/lang/Object;, "TT;"
    :cond_5
    move/from16 v0, v27

    if-le v0, v11, :cond_2

    .line 192
    move/from16 v19, v21

    .line 193
    .restart local v19    # "lh":I
    ushr-int/lit8 v25, v27, 0x1

    .restart local v25    # "rh":I
    add-int v3, v25, v23

    aget-object v28, v4, v3

    .line 194
    .restart local v28    # "split":Ljava/lang/Object;, "TT;"
    const/16 v22, 0x0

    .restart local v22    # "lo":I
    :goto_4
    move/from16 v0, v22

    move/from16 v1, v19

    if-ge v0, v1, :cond_7

    .line 195
    add-int v3, v22, v19

    ushr-int/lit8 v20, v3, 0x1

    .line 196
    .local v20, "lm":I
    add-int v3, v20, v17

    aget-object v3, v4, v3

    move-object/from16 v0, v28

    invoke-interface {v12, v0, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gtz v3, :cond_6

    .line 197
    move/from16 v19, v20

    goto :goto_4

    .line 199
    :cond_6
    add-int/lit8 v22, v20, 0x1

    goto :goto_4

    .line 202
    .end local v20    # "lm":I
    :cond_7
    new-instance v2, Ljava/util/ArraysParallelSortHelpers$FJObject$Merger;

    add-int v6, v17, v19

    sub-int v7, v21, v19

    .line 203
    add-int v8, v23, v25

    sub-int v9, v27, v25

    .line 204
    add-int v3, v15, v19

    add-int v10, v3, v25

    move-object/from16 v3, p0

    .line 202
    invoke-direct/range {v2 .. v12}, Ljava/util/ArraysParallelSortHelpers$FJObject$Merger;-><init>(Ljava/util/concurrent/CountedCompleter;[Ljava/lang/Object;[Ljava/lang/Object;IIIIIILjava/util/Comparator;)V

    .line 205
    .local v2, "m":Ljava/util/ArraysParallelSortHelpers$FJObject$Merger;, "Ljava/util/ArraysParallelSortHelpers$FJObject$Merger<TT;>;"
    move/from16 v27, v25

    .line 206
    move/from16 v21, v19

    .line 207
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/CountedCompleter;->addToPendingCount(I)V

    .line 208
    invoke-virtual {v2}, Ljava/util/concurrent/ForkJoinTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    goto/16 :goto_0

    .line 218
    .end local v2    # "m":Ljava/util/ArraysParallelSortHelpers$FJObject$Merger;, "Ljava/util/ArraysParallelSortHelpers$FJObject$Merger<TT;>;"
    .end local v15    # "k":I
    .end local v19    # "lh":I
    .end local v22    # "lo":I
    .end local v25    # "rh":I
    .end local v28    # "split":Ljava/lang/Object;, "TT;"
    .restart local v13    # "al":Ljava/lang/Object;, "TT;"
    .restart local v14    # "ar":Ljava/lang/Object;, "TT;"
    .restart local v16    # "k":I
    .restart local v18    # "lf":I
    .restart local v24    # "rf":I
    :cond_8
    add-int/lit8 v23, v23, 0x1

    move-object/from16 v29, v14

    .restart local v29    # "t":Ljava/lang/Object;, "TT;"
    goto :goto_2

    .line 222
    .end local v13    # "al":Ljava/lang/Object;, "TT;"
    .end local v14    # "ar":Ljava/lang/Object;, "TT;"
    .end local v29    # "t":Ljava/lang/Object;, "TT;"
    :cond_9
    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_b

    .line 223
    sub-int v3, v24, v23

    move/from16 v0, v23

    move/from16 v1, v16

    invoke-static {v4, v0, v5, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 227
    :cond_a
    :goto_5
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/CountedCompleter;->tryComplete()V

    .line 167
    return-void

    .line 224
    :cond_b
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_a

    .line 225
    sub-int v3, v18, v17

    move/from16 v0, v17

    move/from16 v1, v16

    invoke-static {v4, v0, v5, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_5
.end method
