.class public Lcom/samsung/android/directpeninput/PopupCue;
.super Ljava/lang/Object;
.source "PopupCue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/directpeninput/PopupCue$CueContainer;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final ENABLE_FLOATING_VISUAL_CUE_POSITION_X:Z = false

.field private static final ENABLE_FLOATING_VISUAL_CUE_POSITION_Y:Z = false

.field private static final TAG:Ljava/lang/String; = "WritingBuddyPopupCue"

.field public static final TYPE_MULTILINE_EDITOR:I = 0x2

.field public static final TYPE_NONFORM_VIEW:I = 0x3

.field public static final TYPE_SINGLELINE_EDITOR:I = 0x1


# instance fields
.field private mAnchorView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mCueContainerView:Lcom/samsung/android/directpeninput/PopupCue$CueContainer;

.field private mHoverListner:Landroid/view/View$OnHoverListener;

.field private mIWindowManager:Landroid/view/IWindowManager;

.field private mIsAirButtonClicked:Z

.field private mIsShowing:Z

.field private mPopupHeight:I

.field private mPopupPosX:I

.field private mPopupPosY:I

.field private mPopupWidth:I

.field private mPopupXfromAnchor:I

.field private mPopupYfromAnchor:I

.field private mTouchListner:Landroid/view/View$OnTouchListener;

.field private mType:I

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowToken:Landroid/os/IBinder;


# direct methods
.method static synthetic -set0(Lcom/samsung/android/directpeninput/PopupCue;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/directpeninput/PopupCue;->mIsAirButtonClicked:Z

    return p1
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    const-string/jumbo v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/directpeninput/PopupCue;->DEBUG:Z

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "anchorView"    # Landroid/view/View;

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/directpeninput/PopupCue;->mIWindowManager:Landroid/view/IWindowManager;

    .line 99
    iput-object p1, p0, Lcom/samsung/android/directpeninput/PopupCue;->mAnchorView:Landroid/view/View;

    .line 100
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/directpeninput/PopupCue;->mContext:Landroid/content/Context;

    .line 102
    invoke-direct {p0}, Lcom/samsung/android/directpeninput/PopupCue;->initPopup()V

    .line 98
    return-void
.end method

.method private computePosition(ILandroid/view/MotionEvent;)V
    .locals 30
    .param p1, "type"    # I
    .param p2, "motionevent"    # Landroid/view/MotionEvent;

    .prologue
    .line 224
    const/4 v4, 0x0

    .line 225
    .local v4, "cueWidth":I
    const/4 v3, 0x0

    .line 226
    .local v3, "cueHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/directpeninput/PopupCue;->mCueContainerView:Lcom/samsung/android/directpeninput/PopupCue$CueContainer;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/directpeninput/PopupCue$CueContainer;->getHoverCueDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 227
    .local v5, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_0

    .line 228
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 229
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 237
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/directpeninput/PopupCue;->mAnchorView:Landroid/view/View;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/directpeninput/PopupCue;->mWindowToken:Landroid/os/IBinder;

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/directpeninput/PopupCue;->mAnchorView:Landroid/view/View;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/samsung/android/directpeninput/PopupCue;->getVisibleRectOnScreen(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v22

    .line 240
    .local v22, "visibleScrRect":Landroid/graphics/Rect;
    new-instance v21, Landroid/graphics/Rect;

    invoke-direct/range {v21 .. v22}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 241
    .local v21, "visibleRect":Landroid/graphics/Rect;
    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 242
    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 244
    const/16 v16, 0x0

    .line 245
    .local v16, "paddingStart":I
    const/16 v17, 0x0

    .line 246
    .local v17, "paddingTop":I
    const/4 v15, 0x0

    .line 248
    .local v15, "paddingBottom":I
    const/16 v23, 0x0

    .line 249
    .local v23, "x":I
    const/16 v25, 0x0

    .line 251
    .local v25, "y":I
    const/16 v24, 0x0

    .line 252
    .local v24, "xFromAnchor":I
    const/16 v26, 0x0

    .line 266
    .local v26, "yFromAnchor":I
    const/16 v18, 0x0

    .line 267
    .local v18, "position_offset":I
    const/4 v13, 0x0

    .line 268
    .local v13, "minX":I
    const/4 v12, 0x0

    .line 269
    .local v12, "maxX":I
    const/4 v10, 0x0

    .line 270
    .local v10, "mX":I
    const/4 v11, 0x0

    .line 271
    .local v11, "mY":I
    if-eqz p2, :cond_1

    .line 272
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v27

    move/from16 v0, v27

    float-to-int v10, v0

    .line 273
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v27

    move/from16 v0, v27

    float-to-int v11, v0

    .line 275
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/directpeninput/PopupCue;->mAnchorView:Landroid/view/View;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    instance-of v0, v0, Landroid/widget/EditText;

    move/from16 v27, v0

    if-eqz v27, :cond_b

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/directpeninput/PopupCue;->mAnchorView:Landroid/view/View;

    move-object/from16 v20, v0

    check-cast v20, Landroid/widget/EditText;

    .line 279
    .local v20, "targetView":Landroid/widget/EditText;
    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v7

    .line 281
    .local v7, "l":Landroid/text/Layout;
    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getCompoundPaddingStart()I

    move-result v16

    .line 282
    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v17

    .line 283
    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v15

    .line 285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/directpeninput/PopupCue;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    .line 286
    const v28, 0x1050386

    .line 285
    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v27

    move/from16 v0, v27

    float-to-int v14, v0

    .line 287
    .local v14, "offestFromCursor":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/directpeninput/PopupCue;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    .line 288
    const v28, 0x1050387

    .line 287
    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v27

    move/from16 v0, v27

    float-to-int v6, v0

    .line 289
    .local v6, "imagePaddingBottom":I
    if-eqz v7, :cond_9

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getBaseline()I

    move-result v27

    if-lez v27, :cond_9

    .line 291
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v7, v0}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v27

    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v7, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v28

    sub-int v8, v27, v28

    .line 292
    .local v8, "layoutHeight":I
    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getBaseline()I

    move-result v27

    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v7, v0}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v28

    add-int v27, v27, v28

    .line 293
    div-int/lit8 v28, v8, 0x2

    .line 292
    sub-int v2, v27, v28

    .line 294
    .local v2, "centerYofText":I
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v27, v0

    add-int v27, v27, v2

    sub-int v28, v3, v6

    sub-int v25, v27, v28

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/directpeninput/PopupCue;->mAnchorView:Landroid/view/View;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getLayoutDirection()I

    move-result v27

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_8

    .line 303
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v27, v0

    sub-int v27, v27, v16

    sub-int v23, v27, v4

    .line 304
    sub-int v23, v23, v14

    .line 343
    .end local v8    # "layoutHeight":I
    :goto_0
    add-int v27, v23, v4

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_2

    .line 344
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v27, v0

    sub-int v23, v27, v4

    .line 356
    :cond_2
    if-gez v23, :cond_3

    const/16 v23, 0x0

    .line 357
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/directpeninput/PopupCue;->getStatusBarHeight()I

    move-result v19

    .line 358
    .local v19, "statusBarHeight":I
    move/from16 v0, v25

    move/from16 v1, v19

    if-ge v0, v1, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/directpeninput/PopupCue;->isStatusBarShowing()Z

    move-result v27

    if-eqz v27, :cond_4

    .line 359
    move/from16 v25, v19

    .line 362
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/directpeninput/PopupCue;->mAnchorView:Landroid/view/View;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/samsung/android/directpeninput/PopupCue;->getLowestListParentY(Landroid/view/View;)I

    move-result v9

    .line 363
    .local v9, "lowestListParentY":I
    if-ltz v9, :cond_5

    .line 364
    move/from16 v0, v25

    if-ge v0, v9, :cond_5

    move/from16 v25, v9

    .line 367
    :cond_5
    if-gez v25, :cond_6

    const/16 v25, 0x0

    .line 369
    :cond_6
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v27, v0

    sub-int v24, v23, v27

    .line 370
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v27, v0

    sub-int v26, v25, v27

    .line 397
    .end local v2    # "centerYofText":I
    .end local v6    # "imagePaddingBottom":I
    .end local v7    # "l":Landroid/text/Layout;
    .end local v9    # "lowestListParentY":I
    .end local v14    # "offestFromCursor":I
    .end local v19    # "statusBarHeight":I
    .end local v20    # "targetView":Landroid/widget/EditText;
    :goto_1
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/directpeninput/PopupCue;->mPopupXfromAnchor:I

    .line 398
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/directpeninput/PopupCue;->mPopupYfromAnchor:I

    .line 400
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/directpeninput/PopupCue;->mPopupPosX:I

    .line 401
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/directpeninput/PopupCue;->mPopupPosY:I

    .line 403
    move-object/from16 v0, p0

    iput v4, v0, Lcom/samsung/android/directpeninput/PopupCue;->mPopupWidth:I

    .line 404
    move-object/from16 v0, p0

    iput v3, v0, Lcom/samsung/android/directpeninput/PopupCue;->mPopupHeight:I

    .line 406
    sget-boolean v27, Lcom/samsung/android/directpeninput/PopupCue;->DEBUG:Z

    if-eqz v27, :cond_7

    .line 407
    const-string/jumbo v27, "WritingBuddyPopupCue"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "computePosition x : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/directpeninput/PopupCue;->mPopupPosX:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, " y : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/directpeninput/PopupCue;->mPopupPosY:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, " w : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    .line 408
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/directpeninput/PopupCue;->mPopupWidth:I

    move/from16 v29, v0

    .line 407
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    .line 408
    const-string/jumbo v29, " h : "

    .line 407
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    .line 408
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/directpeninput/PopupCue;->mPopupHeight:I

    move/from16 v29, v0

    .line 407
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_7
    return-void

    .line 306
    .restart local v2    # "centerYofText":I
    .restart local v6    # "imagePaddingBottom":I
    .restart local v7    # "l":Landroid/text/Layout;
    .restart local v8    # "layoutHeight":I
    .restart local v14    # "offestFromCursor":I
    .restart local v20    # "targetView":Landroid/widget/EditText;
    :cond_8
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v27, v0

    add-int v23, v27, v16

    .line 307
    add-int v23, v23, v14

    goto/16 :goto_0

    .line 331
    .end local v2    # "centerYofText":I
    .end local v8    # "layoutHeight":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/directpeninput/PopupCue;->mAnchorView:Landroid/view/View;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getLayoutDirection()I

    move-result v27

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_a

    .line 332
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v27, v0

    sub-int v27, v27, v16

    sub-int v23, v27, v4

    .line 333
    sub-int v23, v23, v14

    .line 339
    :goto_2
    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Rect;->height()I

    move-result v27

    add-int v28, v17, v15

    sub-int v27, v27, v28

    div-int/lit8 v27, v27, 0x2

    .line 338
    add-int v2, v17, v27

    .line 340
    .restart local v2    # "centerYofText":I
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v27, v0

    add-int v27, v27, v2

    sub-int v28, v3, v6

    sub-int v25, v27, v28

    goto/16 :goto_0

    .line 335
    .end local v2    # "centerYofText":I
    :cond_a
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v27, v0

    add-int v23, v27, v16

    .line 336
    add-int v23, v23, v14

    goto :goto_2

    .line 374
    .end local v6    # "imagePaddingBottom":I
    .end local v7    # "l":Landroid/text/Layout;
    .end local v14    # "offestFromCursor":I
    .end local v20    # "targetView":Landroid/widget/EditText;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/directpeninput/PopupCue;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    .line 375
    const v28, 0x1050384

    .line 374
    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v27

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v16, v0

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/directpeninput/PopupCue;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    .line 377
    const v28, 0x1050385

    .line 376
    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v27

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v17, v0

    .line 379
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v27, v0

    add-int v23, v27, v16

    .line 380
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v27, v0

    add-int v25, v27, v17

    .line 382
    add-int v27, v23, v4

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_c

    .line 383
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v27, v0

    sub-int v23, v27, v4

    .line 386
    :cond_c
    add-int v27, v25, v3

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_d

    .line 387
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v27, v0

    sub-int v25, v27, v3

    .line 390
    :cond_d
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v27, v0

    move/from16 v0, v23

    move/from16 v1, v27

    if-ge v0, v1, :cond_e

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    .line 391
    :cond_e
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v27, v0

    move/from16 v0, v25

    move/from16 v1, v27

    if-ge v0, v1, :cond_f

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v25, v0

    .line 393
    :cond_f
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v27, v0

    sub-int v24, v23, v27

    .line 394
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v27, v0

    sub-int v26, v25, v27

    goto/16 :goto_1
.end method

.method private convertDPtoPX(FLandroid/util/DisplayMetrics;)I
    .locals 3
    .param p1, "dp"    # F
    .param p2, "displayMetrics"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 791
    move-object v0, p2

    .line 792
    .local v0, "dm":Landroid/util/DisplayMetrics;
    if-nez p2, :cond_0

    .line 793
    iget-object v1, p0, Lcom/samsung/android/directpeninput/PopupCue;->mAnchorView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 795
    :cond_0
    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private createPopup()V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/samsung/android/directpeninput/PopupCue;->mCueContainerView:Lcom/samsung/android/directpeninput/PopupCue$CueContainer;

    if-nez v0, :cond_1

    .line 122
    new-instance v0, Lcom/samsung/android/directpeninput/PopupCue$CueContainer;

    iget-object v1, p0, Lcom/samsung/android/directpeninput/PopupCue;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/directpeninput/PopupCue$CueContainer;-><init>(Lcom/samsung/android/directpeninput/PopupCue;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/directpeninput/PopupCue;->mCueContainerView:Lcom/samsung/android/directpeninput/PopupCue$CueContainer;

    .line 124
    iget-object v0, p0, Lcom/samsung/android/directpeninput/PopupCue;->mTouchListner:Landroid/view/View$OnTouchListener;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/samsung/android/directpeninput/PopupCue;->mCueContainerView:Lcom/samsung/android/directpeninput/PopupCue$CueContainer;

    iget-object v1, p0, Lcom/samsung/android/directpeninput/PopupCue;->mTouchListner:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/directpeninput/PopupCue;->mHoverListner:Landroid/view/View$OnHoverListener;

    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/samsung/android/directpeninput/PopupCue;->mCueContainerView:Lcom/samsung/android/directpeninput/PopupCue$CueContainer;

    iget-object v1, p0, Lcom/samsung/android/directpeninput/PopupCue;->mHoverListner:Landroid/view/View$OnHoverListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 120
    :cond_1
    return-void
.end method

.method private createPopupLayoutParam()Landroid/view/WindowManager$LayoutParams;
    .locals 4

    .prologue
    .line 134
    sget-boolean v1, Lcom/samsung/android/directpeninput/PopupCue;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 135
    const-string/jumbo v1, "WritingBuddyPopupCue"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "createPopupLayoutParam() x : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/directpeninput/PopupCue;->mPopupPosX:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " y :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/directpeninput/PopupCue;->mPopupPosY:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 136
    const-string/jumbo v3, "  w : "

    .line 135
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 136
    iget v3, p0, Lcom/samsung/android/directpeninput/PopupCue;->mPopupWidth:I

    .line 135
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 136
    const-string/jumbo v3, " h : "

    .line 135
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 136
    iget v3, p0, Lcom/samsung/android/directpeninput/PopupCue;->mPopupHeight:I

    .line 135
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_0
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 141
    .local v0, "wlp":Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 142
    iget v1, p0, Lcom/samsung/android/directpeninput/PopupCue;->mPopupWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 143
    iget v1, p0, Lcom/samsung/android/directpeninput/PopupCue;->mPopupHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 144
    iget v1, p0, Lcom/samsung/android/directpeninput/PopupCue;->mPopupPosX:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 145
    iget v1, p0, Lcom/samsung/android/directpeninput/PopupCue;->mPopupPosY:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 146
    iget-object v1, p0, Lcom/samsung/android/directpeninput/PopupCue;->mWindowToken:Landroid/os/IBinder;

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 147
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "WritingBuddyCue : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 150
    const/16 v1, 0x3e8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 151
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x100

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 152
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 153
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x200

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 154
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x1000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 155
    const v1, 0x103051d

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 157
    return-object v0
.end method

.method private getLowestListParentY(Landroid/view/View;)I
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x1

    .line 657
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    .line 658
    .local v4, "vp":Landroid/view/ViewParent;
    const/4 v0, 0x0

    .line 659
    .local v0, "listParent":Landroid/view/View;
    const/4 v2, -0x1

    .line 661
    .end local v0    # "listParent":Landroid/view/View;
    .local v2, "lowestListParentY":I
    :goto_0
    instance-of v5, v4, Landroid/view/View;

    if-eqz v5, :cond_2

    move-object v3, v4

    .line 662
    check-cast v3, Landroid/view/View;

    .line 664
    .local v3, "parent":Landroid/view/View;
    instance-of v5, v3, Landroid/widget/AbsListView;

    if-nez v5, :cond_0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "RecyclerView"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 665
    :cond_0
    move-object v0, v3

    .line 666
    .local v0, "listParent":Landroid/view/View;
    const/4 v5, 0x2

    new-array v1, v5, [I

    .line 667
    .local v1, "loc":[I
    invoke-virtual {v3, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 668
    aget v5, v1, v7

    if-le v5, v2, :cond_1

    .line 669
    aget v2, v1, v7

    .line 673
    .end local v0    # "listParent":Landroid/view/View;
    .end local v1    # "loc":[I
    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    goto :goto_0

    .line 676
    .end local v3    # "parent":Landroid/view/View;
    :cond_2
    return v2
.end method

.method private getRectInWindow(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 537
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v4, v4, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 539
    .local v1, "r":Landroid/graphics/Rect;
    if-eqz p1, :cond_0

    .line 540
    filled-new-array {v4, v4}, [I

    move-result-object v0

    .line 543
    .local v0, "locInWindow":[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 544
    aget v2, v0, v4

    aget v3, v0, v6

    aget v4, v0, v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    aget v5, v0, v6

    .line 545
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    .line 544
    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 547
    .end local v0    # "locInWindow":[I
    :cond_0
    return-object v1
.end method

.method private getRectOnScreen(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 523
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v4, v4, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 525
    .local v1, "r":Landroid/graphics/Rect;
    if-eqz p1, :cond_0

    .line 526
    filled-new-array {v4, v4}, [I

    move-result-object v0

    .line 529
    .local v0, "locOnScr":[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 530
    aget v2, v0, v4

    aget v3, v0, v6

    aget v4, v0, v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    .line 531
    aget v5, v0, v6

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    .line 530
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 533
    .end local v0    # "locOnScr":[I
    :cond_0
    return-object v1
.end method

.method private getStatusBarHeight()I
    .locals 4

    .prologue
    .line 779
    const/4 v1, 0x0

    .line 781
    .local v1, "height":I
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/directpeninput/PopupCue;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 782
    const v3, 0x1050017

    .line 781
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 787
    :goto_0
    return v1

    .line 783
    :catch_0
    move-exception v0

    .line 784
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const-string/jumbo v2, "WritingBuddyPopupCue"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getVisibleRectInWindow(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 10
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 551
    invoke-direct {p0, p1}, Lcom/samsung/android/directpeninput/PopupCue;->getRectInWindow(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    .line 553
    .local v3, "r":Landroid/graphics/Rect;
    move-object v5, p1

    .line 554
    .local v5, "v":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    .line 556
    .local v6, "vp":Landroid/view/ViewParent;
    const/4 v4, 0x0

    .line 557
    .local v4, "top":I
    const/4 v0, 0x0

    .line 559
    .local v0, "bottomDiff":I
    :goto_0
    instance-of v7, v6, Landroid/view/View;

    if-eqz v7, :cond_3

    move-object v2, v6

    .line 560
    check-cast v2, Landroid/view/View;

    .line 563
    .local v2, "parent":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getY()F

    move-result v7

    float-to-int v7, v7

    add-int/2addr v4, v7

    .line 564
    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v7

    if-lez v7, :cond_0

    .line 565
    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v7

    if-le v7, v4, :cond_1

    .line 566
    iget v7, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v8

    sub-int/2addr v8, v4

    add-int/2addr v7, v8

    iput v7, v3, Landroid/graphics/Rect;->top:I

    .line 567
    const/4 v4, 0x0

    .line 586
    :cond_0
    :goto_1
    invoke-virtual {v5}, Landroid/view/View;->getY()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v8

    sub-int v1, v7, v8

    .line 587
    .local v1, "bottomPosY":I
    add-int v7, v1, v0

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v8

    if-ge v7, v8, :cond_2

    .line 588
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int v8, v1, v0

    sub-int/2addr v7, v8

    neg-int v0, v7

    .line 594
    :goto_2
    move-object v5, v2

    .line 595
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    goto :goto_0

    .line 569
    .end local v1    # "bottomPosY":I
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v7

    sub-int/2addr v4, v7

    goto :goto_1

    .line 590
    .restart local v1    # "bottomPosY":I
    :cond_2
    iget v7, v3, Landroid/graphics/Rect;->bottom:I

    add-int v8, v1, v0

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v9

    sub-int/2addr v8, v9

    sub-int/2addr v7, v8

    iput v7, v3, Landroid/graphics/Rect;->bottom:I

    .line 591
    const/4 v0, 0x0

    goto :goto_2

    .line 598
    .end local v1    # "bottomPosY":I
    .end local v2    # "parent":Landroid/view/View;
    :cond_3
    const-string/jumbo v7, "WritingBuddyPopupCue"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getVisibleRectInWindow : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    return-object v3
.end method

.method private getVisibleRectOnScreen(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 10
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 603
    invoke-direct {p0, p1}, Lcom/samsung/android/directpeninput/PopupCue;->getRectOnScreen(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    .line 605
    .local v3, "r":Landroid/graphics/Rect;
    move-object v5, p1

    .line 606
    .local v5, "v":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    .line 608
    .local v6, "vp":Landroid/view/ViewParent;
    const/4 v4, 0x0

    .line 609
    .local v4, "top":I
    const/4 v0, 0x0

    .line 611
    .local v0, "bottomDiff":I
    :goto_0
    instance-of v7, v6, Landroid/view/View;

    if-eqz v7, :cond_3

    move-object v2, v6

    .line 612
    check-cast v2, Landroid/view/View;

    .line 615
    .local v2, "parent":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getY()F

    move-result v7

    float-to-int v7, v7

    add-int/2addr v4, v7

    .line 616
    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v7

    if-lez v7, :cond_0

    .line 617
    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v7

    if-le v7, v4, :cond_1

    .line 618
    iget v7, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v8

    sub-int/2addr v8, v4

    add-int/2addr v7, v8

    iput v7, v3, Landroid/graphics/Rect;->top:I

    .line 619
    const/4 v4, 0x0

    .line 639
    :cond_0
    :goto_1
    invoke-virtual {v5}, Landroid/view/View;->getY()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v8

    sub-int v1, v7, v8

    .line 640
    .local v1, "bottomPosY":I
    add-int v7, v1, v0

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v8

    if-ge v7, v8, :cond_2

    .line 641
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int v8, v1, v0

    sub-int/2addr v7, v8

    neg-int v0, v7

    .line 647
    :goto_2
    move-object v5, v2

    .line 648
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    goto :goto_0

    .line 621
    .end local v1    # "bottomPosY":I
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v7

    sub-int/2addr v4, v7

    goto :goto_1

    .line 643
    .restart local v1    # "bottomPosY":I
    :cond_2
    iget v7, v3, Landroid/graphics/Rect;->bottom:I

    add-int v8, v1, v0

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v9

    sub-int/2addr v8, v9

    sub-int/2addr v7, v8

    iput v7, v3, Landroid/graphics/Rect;->bottom:I

    .line 644
    const/4 v0, 0x0

    goto :goto_2

    .line 651
    .end local v1    # "bottomPosY":I
    .end local v2    # "parent":Landroid/view/View;
    :cond_3
    const-string/jumbo v7, "WritingBuddyPopupCue"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getVisibleRectOnScreen : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    return-object v3
.end method

.method private initPopup()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 106
    iput v1, p0, Lcom/samsung/android/directpeninput/PopupCue;->mPopupWidth:I

    .line 107
    iput v1, p0, Lcom/samsung/android/directpeninput/PopupCue;->mPopupHeight:I

    .line 108
    iput v1, p0, Lcom/samsung/android/directpeninput/PopupCue;->mPopupPosX:I

    .line 109
    iput v1, p0, Lcom/samsung/android/directpeninput/PopupCue;->mPopupPosY:I

    .line 111
    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/android/directpeninput/PopupCue;->mType:I

    .line 112
    iput-boolean v1, p0, Lcom/samsung/android/directpeninput/PopupCue;->mIsShowing:Z

    .line 113
    iput-object v2, p0, Lcom/samsung/android/directpeninput/PopupCue;->mWindowToken:Landroid/os/IBinder;

    .line 114
    iput-object v2, p0, Lcom/samsung/android/directpeninput/PopupCue;->mWindowManager:Landroid/view/WindowManager;

    .line 115
    iput-object v2, p0, Lcom/samsung/android/directpeninput/PopupCue;->mCueContainerView:Lcom/samsung/android/directpeninput/PopupCue$CueContainer;

    .line 116
    iput-object v2, p0, Lcom/samsung/android/directpeninput/PopupCue;->mTouchListner:Landroid/view/View$OnTouchListener;

    .line 117
    iput-object v2, p0, Lcom/samsung/android/directpeninput/PopupCue;->mHoverListner:Landroid/view/View$OnHoverListener;

    .line 105
    return-void
.end method

.method private pointInView(Landroid/view/View;FF)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "localX"    # F
    .param p3, "localY"    # F

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 518
    cmpl-float v1, p2, v3

    if-ltz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v1, p2, v1

    if-gez v1, :cond_0

    cmpl-float v1, p3, v3

    if-ltz v1, :cond_0

    .line 519
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v1, p3, v1

    if-gez v1, :cond_0

    const/4 v0, 0x1

    .line 518
    :cond_0
    return v0
.end method


# virtual methods
.method public dismiss(Z)V
    .locals 7
    .param p1, "animation"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 204
    invoke-virtual {p0}, Lcom/samsung/android/directpeninput/PopupCue;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/directpeninput/PopupCue;->mCueContainerView:Lcom/samsung/android/directpeninput/PopupCue$CueContainer;

    if-eqz v3, :cond_1

    .line 205
    iget-object v3, p0, Lcom/samsung/android/directpeninput/PopupCue;->mCueContainerView:Lcom/samsung/android/directpeninput/PopupCue$CueContainer;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 206
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v3, v1, Landroid/view/WindowManager$LayoutParams;

    if-eqz v3, :cond_0

    move-object v2, v1

    .line 207
    nop

    nop

    .line 208
    .local v2, "wlp":Landroid/view/WindowManager$LayoutParams;
    if-eqz p1, :cond_2

    const v0, 0x103051d

    .line 210
    .local v0, "animationResID":I
    :goto_0
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eq v3, v0, :cond_0

    move-object v3, v1

    .line 211
    nop

    nop

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 212
    iget-object v3, p0, Lcom/samsung/android/directpeninput/PopupCue;->mWindowManager:Landroid/view/WindowManager;

    iget-object v4, p0, Lcom/samsung/android/directpeninput/PopupCue;->mCueContainerView:Lcom/samsung/android/directpeninput/PopupCue$CueContainer;

    invoke-interface {v3, v4, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 215
    .end local v0    # "animationResID":I
    .end local v2    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/directpeninput/PopupCue;->mWindowManager:Landroid/view/WindowManager;

    iget-object v4, p0, Lcom/samsung/android/directpeninput/PopupCue;->mCueContainerView:Lcom/samsung/android/directpeninput/PopupCue$CueContainer;

    invoke-interface {v3, v4}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 218
    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    iput-object v6, p0, Lcom/samsung/android/directpeninput/PopupCue;->mCueContainerView:Lcom/samsung/android/directpeninput/PopupCue$CueContainer;

    .line 219
    iput-boolean v5, p0, Lcom/samsung/android/directpeninput/PopupCue;->mIsShowing:Z

    .line 220
    iput-boolean v5, p0, Lcom/samsung/android/directpeninput/PopupCue;->mIsAirButtonClicked:Z

    .line 203
    return-void

    .line 209
    .restart local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v2    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "animationResID":I
    goto :goto_0
.end method

.method public getIWindowManager()Landroid/view/IWindowManager;
    .locals 1

    .prologue
    .line 771
    iget-object v0, p0, Lcom/samsung/android/directpeninput/PopupCue;->mIWindowManager:Landroid/view/IWindowManager;

    if-nez v0, :cond_0

    .line 773
    const-string/jumbo v0, "window"

    .line 772
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/directpeninput/PopupCue;->mIWindowManager:Landroid/view/IWindowManager;

    .line 775
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/directpeninput/PopupCue;->mIWindowManager:Landroid/view/IWindowManager;

    return-object v0
.end method

.method public getRectInAnchor()Landroid/graphics/Rect;
    .locals 3

    .prologue
    .line 495
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 496
    .local v0, "r":Landroid/graphics/Rect;
    iget v1, p0, Lcom/samsung/android/directpeninput/PopupCue;->mPopupXfromAnchor:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 497
    iget v1, p0, Lcom/samsung/android/directpeninput/PopupCue;->mPopupYfromAnchor:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 498
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/samsung/android/directpeninput/PopupCue;->mPopupWidth:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 499
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/samsung/android/directpeninput/PopupCue;->mPopupHeight:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 501
    return-object v0
.end method

.method public isAirButtonClicked()Z
    .locals 1

    .prologue
    .line 487
    iget-boolean v0, p0, Lcom/samsung/android/directpeninput/PopupCue;->mIsAirButtonClicked:Z

    return v0
.end method

.method public isPointInPopup(FF)Z
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v1, 0x0

    .line 511
    cmpl-float v0, p1, v1

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/directpeninput/PopupCue;->mPopupWidth:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    cmpl-float v0, p2, v1

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/directpeninput/PopupCue;->mPopupHeight:I

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_0

    .line 512
    const/4 v0, 0x1

    return v0

    .line 514
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/samsung/android/directpeninput/PopupCue;->mIsShowing:Z

    return v0
.end method

.method public isStatusBarShowing()Z
    .locals 1

    .prologue
    .line 763
    const/4 v0, 0x0

    return v0
.end method

.method public setOnHoverListener(Landroid/view/View$OnHoverListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnHoverListener;

    .prologue
    .line 475
    iput-object p1, p0, Lcom/samsung/android/directpeninput/PopupCue;->mHoverListner:Landroid/view/View$OnHoverListener;

    .line 477
    iget-object v0, p0, Lcom/samsung/android/directpeninput/PopupCue;->mCueContainerView:Lcom/samsung/android/directpeninput/PopupCue$CueContainer;

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/samsung/android/directpeninput/PopupCue;->mCueContainerView:Lcom/samsung/android/directpeninput/PopupCue$CueContainer;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 474
    :cond_0
    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnTouchListener;

    .prologue
    .line 463
    iput-object p1, p0, Lcom/samsung/android/directpeninput/PopupCue;->mTouchListner:Landroid/view/View$OnTouchListener;

    .line 465
    iget-object v0, p0, Lcom/samsung/android/directpeninput/PopupCue;->mCueContainerView:Lcom/samsung/android/directpeninput/PopupCue$CueContainer;

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/samsung/android/directpeninput/PopupCue;->mCueContainerView:Lcom/samsung/android/directpeninput/PopupCue$CueContainer;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 462
    :cond_0
    return-void
.end method

.method public setPosition(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 446
    iput p1, p0, Lcom/samsung/android/directpeninput/PopupCue;->mPopupPosX:I

    .line 447
    iput p2, p0, Lcom/samsung/android/directpeninput/PopupCue;->mPopupPosY:I

    .line 445
    return-void
.end method

.method public setSize(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 436
    iput p1, p0, Lcom/samsung/android/directpeninput/PopupCue;->mPopupWidth:I

    .line 437
    iput p2, p0, Lcom/samsung/android/directpeninput/PopupCue;->mPopupHeight:I

    .line 435
    return-void
.end method

.method public setWindowToken(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 455
    iput-object p1, p0, Lcom/samsung/android/directpeninput/PopupCue;->mWindowToken:Landroid/os/IBinder;

    .line 454
    return-void
.end method

.method public show(ILandroid/view/MotionEvent;)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "motionevent"    # Landroid/view/MotionEvent;

    .prologue
    .line 174
    iput p1, p0, Lcom/samsung/android/directpeninput/PopupCue;->mType:I

    .line 176
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/directpeninput/PopupCue;->mIsAirButtonClicked:Z

    .line 178
    invoke-virtual {p0}, Lcom/samsung/android/directpeninput/PopupCue;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 179
    invoke-direct {p0}, Lcom/samsung/android/directpeninput/PopupCue;->createPopup()V

    .line 180
    iget-object v0, p0, Lcom/samsung/android/directpeninput/PopupCue;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/samsung/android/directpeninput/PopupCue;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/samsung/android/directpeninput/PopupCue;->mWindowManager:Landroid/view/WindowManager;

    .line 183
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/directpeninput/PopupCue;->computePosition(ILandroid/view/MotionEvent;)V

    .line 184
    iget-object v0, p0, Lcom/samsung/android/directpeninput/PopupCue;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/samsung/android/directpeninput/PopupCue;->mCueContainerView:Lcom/samsung/android/directpeninput/PopupCue$CueContainer;

    invoke-direct {p0}, Lcom/samsung/android/directpeninput/PopupCue;->createPopupLayoutParam()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 185
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/directpeninput/PopupCue;->mIsShowing:Z

    .line 172
    :cond_1
    return-void
.end method

.method public switchCueButton(Z)V
    .locals 1
    .param p1, "isTouched"    # Z

    .prologue
    .line 196
    iget-object v0, p0, Lcom/samsung/android/directpeninput/PopupCue;->mCueContainerView:Lcom/samsung/android/directpeninput/PopupCue$CueContainer;

    invoke-virtual {v0, p1}, Lcom/samsung/android/directpeninput/PopupCue$CueContainer;->switchCueButton(Z)V

    .line 195
    return-void
.end method

.method public updatePopupPosition(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "motionevent"    # Landroid/view/MotionEvent;

    .prologue
    .line 416
    iget-object v1, p0, Lcom/samsung/android/directpeninput/PopupCue;->mCueContainerView:Lcom/samsung/android/directpeninput/PopupCue$CueContainer;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 418
    .local v0, "wlp":Landroid/view/WindowManager$LayoutParams;
    sget-boolean v1, Lcom/samsung/android/directpeninput/PopupCue;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 419
    const-string/jumbo v1, "WritingBuddyPopupCue"

    const-string/jumbo v2, "updatePopupPosition()"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    :cond_0
    iget v1, p0, Lcom/samsung/android/directpeninput/PopupCue;->mType:I

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/directpeninput/PopupCue;->computePosition(ILandroid/view/MotionEvent;)V

    .line 424
    iget v1, p0, Lcom/samsung/android/directpeninput/PopupCue;->mPopupPosX:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 425
    iget v1, p0, Lcom/samsung/android/directpeninput/PopupCue;->mPopupPosY:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 426
    iget v1, p0, Lcom/samsung/android/directpeninput/PopupCue;->mPopupWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 427
    iget v1, p0, Lcom/samsung/android/directpeninput/PopupCue;->mPopupHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 429
    iget-object v1, p0, Lcom/samsung/android/directpeninput/PopupCue;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/samsung/android/directpeninput/PopupCue;->mCueContainerView:Lcom/samsung/android/directpeninput/PopupCue$CueContainer;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 415
    return-void
.end method
