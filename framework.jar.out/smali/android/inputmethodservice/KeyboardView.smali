.class public Landroid/inputmethodservice/KeyboardView;
.super Landroid/view/View;
.source "KeyboardView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;,
        Landroid/inputmethodservice/KeyboardView$SwipeTracker;
    }
.end annotation


# static fields
.field private static final DEBOUNCE_TIME:I = 0x46

.field private static final DEBUG:Z = false

.field private static final DELAY_AFTER_PREVIEW:I = 0x46

.field private static final DELAY_BEFORE_PREVIEW:I = 0x0

.field private static final KEY_DELETE:[I

.field private static final LONGPRESS_TIMEOUT:I

.field private static final LONG_PRESSABLE_STATE_SET:[I

.field private static MAX_NEARBY_KEYS:I = 0x0

.field private static final MSG_LONGPRESS:I = 0x4

.field private static final MSG_REMOVE_PREVIEW:I = 0x2

.field private static final MSG_REPEAT:I = 0x3

.field private static final MSG_SHOW_PREVIEW:I = 0x1

.field private static final MULTITAP_INTERVAL:I = 0x320

.field private static final NOT_A_KEY:I = -0x1

.field private static final REPEAT_INTERVAL:I = 0x32

.field private static final REPEAT_START_DELAY:I = 0x190


# instance fields
.field private mAbortKey:Z

.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBackgroundDimAmount:F

.field private mBuffer:Landroid/graphics/Bitmap;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mClipRegion:Landroid/graphics/Rect;

.field private final mCoordinates:[I

.field private mCurrentKey:I

.field private mCurrentKeyIndex:I

.field private mCurrentKeyTime:J

.field private mDirtyRect:Landroid/graphics/Rect;

.field private mDisambiguateSwipe:Z

.field private mDistances:[I

.field private mDownKey:I

.field private mDownTime:J

.field private mDrawPending:Z

.field private mGestureDetector:Landroid/view/GestureDetector;

.field mHandler:Landroid/os/Handler;

.field private mHeadsetRequiredToHearPasswordsAnnounced:Z

.field private mInMultiTap:Z

.field private mInvalidatedKey:Landroid/inputmethodservice/Keyboard$Key;

.field private mKeyBackground:Landroid/graphics/drawable/Drawable;

.field private mKeyIndices:[I

.field private mKeyTextColor:I

.field private mKeyTextSize:I

.field private mKeyboard:Landroid/inputmethodservice/Keyboard;

.field private mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

.field private mKeyboardChanged:Z

.field private mKeys:[Landroid/inputmethodservice/Keyboard$Key;

.field private mLabelTextSize:I

.field private mLastCodeX:I

.field private mLastCodeY:I

.field private mLastKey:I

.field private mLastKeyTime:J

.field private mLastMoveTime:J

.field private mLastSentIndex:I

.field private mLastTapTime:J

.field private mLastX:I

.field private mLastY:I

.field private mMiniKeyboard:Landroid/inputmethodservice/KeyboardView;

.field private mMiniKeyboardCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/inputmethodservice/Keyboard$Key;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mMiniKeyboardContainer:Landroid/view/View;

.field private mMiniKeyboardOffsetX:I

.field private mMiniKeyboardOffsetY:I

.field private mMiniKeyboardOnScreen:Z

.field private mOldPointerCount:I

.field private mOldPointerX:F

.field private mOldPointerY:F

.field private mPadding:Landroid/graphics/Rect;

.field private mPaint:Landroid/graphics/Paint;

.field private mPopupKeyboard:Landroid/widget/PopupWindow;

.field private mPopupLayout:I

.field private mPopupParent:Landroid/view/View;

.field private mPopupPreviewX:I

.field private mPopupPreviewY:I

.field private mPopupX:I

.field private mPopupY:I

.field private mPossiblePoly:Z

.field private mPreviewCentered:Z

.field private mPreviewHeight:I

.field private mPreviewLabel:Ljava/lang/StringBuilder;

.field private mPreviewOffset:I

.field private mPreviewPopup:Landroid/widget/PopupWindow;

.field private mPreviewText:Landroid/widget/TextView;

.field private mPreviewTextSizeLarge:I

.field private mProximityCorrectOn:Z

.field private mProximityThreshold:I

.field private mRepeatKeyIndex:I

.field private mShadowColor:I

.field private mShadowRadius:F

.field private mShowPreview:Z

.field private mShowTouchPoints:Z

.field private mStartX:I

.field private mStartY:I

.field private mSwipeThreshold:I

.field private mSwipeTracker:Landroid/inputmethodservice/KeyboardView$SwipeTracker;

.field private mTapCount:I

.field private mVerticalCorrection:I


# direct methods
.method static synthetic -get0(Landroid/inputmethodservice/KeyboardView;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mDisambiguateSwipe:Z

    return v0
.end method

.method static synthetic -get1(Landroid/inputmethodservice/KeyboardView;)I
    .locals 1

    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mDownKey:I

    return v0
.end method

.method static synthetic -get2(Landroid/inputmethodservice/KeyboardView;)Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;
    .locals 1

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    return-object v0
.end method

.method static synthetic -get3(Landroid/inputmethodservice/KeyboardView;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mPossiblePoly:Z

    return v0
.end method

.method static synthetic -get4(Landroid/inputmethodservice/KeyboardView;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get5(Landroid/inputmethodservice/KeyboardView;)I
    .locals 1

    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mStartX:I

    return v0
.end method

.method static synthetic -get6(Landroid/inputmethodservice/KeyboardView;)I
    .locals 1

    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mStartY:I

    return v0
.end method

.method static synthetic -get7(Landroid/inputmethodservice/KeyboardView;)I
    .locals 1

    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mSwipeThreshold:I

    return v0
.end method

.method static synthetic -get8(Landroid/inputmethodservice/KeyboardView;)Landroid/inputmethodservice/KeyboardView$SwipeTracker;
    .locals 1

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mSwipeTracker:Landroid/inputmethodservice/KeyboardView$SwipeTracker;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/inputmethodservice/KeyboardView;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    invoke-direct {p0, p1}, Landroid/inputmethodservice/KeyboardView;->openPopupIfRequired(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Landroid/inputmethodservice/KeyboardView;)Z
    .locals 1

    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->repeatKey()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Landroid/inputmethodservice/KeyboardView;IIIJ)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "eventTime"    # J

    .prologue
    invoke-direct/range {p0 .. p5}, Landroid/inputmethodservice/KeyboardView;->detectAndSendKey(IIIJ)V

    return-void
.end method

.method static synthetic -wrap3(Landroid/inputmethodservice/KeyboardView;)V
    .locals 0

    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->dismissPopupKeyboard()V

    return-void
.end method

.method static synthetic -wrap4(Landroid/inputmethodservice/KeyboardView;I)V
    .locals 0
    .param p1, "keyIndex"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/inputmethodservice/KeyboardView;->showKey(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 133
    new-array v0, v3, [I

    const/4 v1, -0x5

    aput v1, v0, v2

    sput-object v0, Landroid/inputmethodservice/KeyboardView;->KEY_DELETE:[I

    .line 134
    new-array v0, v3, [I

    const v1, 0x101023c

    aput v1, v0, v2

    sput-object v0, Landroid/inputmethodservice/KeyboardView;->LONG_PRESSABLE_STATE_SET:[I

    .line 226
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    sput v0, Landroid/inputmethodservice/KeyboardView;->LONGPRESS_TIMEOUT:I

    .line 228
    const/16 v0, 0xc

    sput v0, Landroid/inputmethodservice/KeyboardView;->MAX_NEARBY_KEYS:I

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 259
    const v0, 0x1160085

    invoke-direct {p0, p1, p2, v0}, Landroid/inputmethodservice/KeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 258
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 263
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/inputmethodservice/KeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 262
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 267
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 137
    const/4 v6, -0x1

    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyIndex:I

    .line 151
    const/4 v6, 0x2

    new-array v6, v6, [I

    iput-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mCoordinates:[I

    .line 178
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewCentered:Z

    .line 179
    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/inputmethodservice/KeyboardView;->mShowPreview:Z

    .line 180
    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/inputmethodservice/KeyboardView;->mShowTouchPoints:Z

    .line 199
    const/4 v6, -0x1

    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    .line 200
    const/4 v6, -0x1

    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mDownKey:I

    .line 203
    const/16 v6, 0xc

    new-array v6, v6, [I

    iput-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mKeyIndices:[I

    .line 207
    const/4 v6, -0x1

    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mRepeatKeyIndex:I

    .line 211
    new-instance v6, Landroid/graphics/Rect;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mClipRegion:Landroid/graphics/Rect;

    .line 213
    new-instance v6, Landroid/inputmethodservice/KeyboardView$SwipeTracker;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Landroid/inputmethodservice/KeyboardView$SwipeTracker;-><init>(Landroid/inputmethodservice/KeyboardView$SwipeTracker;)V

    iput-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mSwipeTracker:Landroid/inputmethodservice/KeyboardView$SwipeTracker;

    .line 218
    const/4 v6, 0x1

    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mOldPointerCount:I

    .line 229
    sget v6, Landroid/inputmethodservice/KeyboardView;->MAX_NEARBY_KEYS:I

    new-array v6, v6, [I

    iput-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mDistances:[I

    .line 237
    new-instance v6, Ljava/lang/StringBuilder;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewLabel:Ljava/lang/StringBuilder;

    .line 242
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    .line 270
    sget-object v6, Landroid/R$styleable;->KeyboardView:[I

    .line 269
    invoke-virtual {p1, p2, v6, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 274
    .local v0, "a":Landroid/content/res/TypedArray;
    const-string/jumbo v6, "layout_inflater"

    .line 273
    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 276
    .local v3, "inflate":Landroid/view/LayoutInflater;
    const/4 v5, 0x0

    .line 279
    .local v5, "previewLayout":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v4

    .line 281
    .local v4, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 282
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .line 284
    .local v1, "attr":I
    packed-switch v1, :pswitch_data_0

    .line 281
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 286
    :pswitch_0
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 289
    :pswitch_1
    const/4 v6, 0x0

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mVerticalCorrection:I

    goto :goto_1

    .line 292
    :pswitch_2
    const/4 v6, 0x0

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    goto :goto_1

    .line 295
    :pswitch_3
    const/4 v6, 0x0

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewOffset:I

    goto :goto_1

    .line 298
    :pswitch_4
    const/16 v6, 0x50

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewHeight:I

    goto :goto_1

    .line 301
    :pswitch_5
    const/16 v6, 0x12

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mKeyTextSize:I

    goto :goto_1

    .line 304
    :pswitch_6
    const/high16 v6, -0x1000000

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mKeyTextColor:I

    goto :goto_1

    .line 307
    :pswitch_7
    const/16 v6, 0xe

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mLabelTextSize:I

    goto :goto_1

    .line 310
    :pswitch_8
    const/4 v6, 0x0

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mPopupLayout:I

    goto :goto_1

    .line 313
    :pswitch_9
    const/4 v6, 0x0

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mShadowColor:I

    goto :goto_1

    .line 316
    :pswitch_a
    const/4 v6, 0x0

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mShadowRadius:F

    goto :goto_1

    .line 321
    .end local v1    # "attr":I
    :cond_0
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mContext:Landroid/content/Context;

    .line 322
    sget-object v7, Lcom/android/internal/R$styleable;->Theme:[I

    .line 321
    invoke-virtual {v6, v7}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 323
    const/4 v6, 0x2

    const/high16 v7, 0x3f000000    # 0.5f

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mBackgroundDimAmount:F

    .line 325
    new-instance v6, Landroid/widget/PopupWindow;

    invoke-direct {v6, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    .line 326
    if-eqz v5, :cond_1

    .line 327
    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    .line 328
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getTextSize()F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewTextSizeLarge:I

    .line 329
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    iget-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 330
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 335
    :goto_2
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 337
    new-instance v6, Landroid/widget/PopupWindow;

    invoke-direct {v6, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    .line 338
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 341
    iput-object p0, p0, Landroid/inputmethodservice/KeyboardView;->mPopupParent:Landroid/view/View;

    .line 344
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    iput-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPaint:Landroid/graphics/Paint;

    .line 345
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPaint:Landroid/graphics/Paint;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 346
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPaint:Landroid/graphics/Paint;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 347
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 348
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPaint:Landroid/graphics/Paint;

    const/16 v7, 0xff

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 350
    new-instance v6, Landroid/graphics/Rect;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPadding:Landroid/graphics/Rect;

    .line 351
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardCache:Ljava/util/Map;

    .line 352
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    iget-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 354
    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    const/high16 v7, 0x43fa0000    # 500.0f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mSwipeThreshold:I

    .line 355
    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 356
    const v7, 0x112004e

    .line 355
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    iput-boolean v6, p0, Landroid/inputmethodservice/KeyboardView;->mDisambiguateSwipe:Z

    .line 358
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v6

    iput-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 359
    const-string/jumbo v6, "audio"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/AudioManager;

    iput-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mAudioManager:Landroid/media/AudioManager;

    .line 361
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->resetMultiTap()V

    .line 266
    return-void

    .line 332
    :cond_1
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/inputmethodservice/KeyboardView;->mShowPreview:Z

    goto/16 :goto_2

    .line 284
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_5
        :pswitch_7
        :pswitch_6
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_8
    .end packed-switch
.end method

.method private adjustCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 590
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v0}, Landroid/inputmethodservice/Keyboard;->isShifted()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 591
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v0

    .line 590
    if-eqz v0, :cond_0

    .line 592
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 594
    :cond_0
    return-object p1
.end method

.method private checkMultiTap(JI)V
    .locals 9
    .param p1, "eventTime"    # J
    .param p3, "keyIndex"    # I

    .prologue
    const-wide/16 v6, 0x320

    const/4 v2, 0x1

    const/4 v4, -0x1

    .line 1450
    if-ne p3, v4, :cond_0

    return-void

    .line 1451
    :cond_0
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    aget-object v0, v1, p3

    .line 1452
    .local v0, "key":Landroid/inputmethodservice/Keyboard$Key;
    iget-object v1, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    array-length v1, v1

    if-le v1, v2, :cond_2

    .line 1453
    iput-boolean v2, p0, Landroid/inputmethodservice/KeyboardView;->mInMultiTap:Z

    .line 1454
    iget-wide v2, p0, Landroid/inputmethodservice/KeyboardView;->mLastTapTime:J

    add-long/2addr v2, v6

    cmp-long v1, p1, v2

    if-gez v1, :cond_1

    .line 1455
    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mLastSentIndex:I

    if-ne p3, v1, :cond_1

    .line 1456
    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mTapCount:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    array-length v2, v2

    rem-int/2addr v1, v2

    iput v1, p0, Landroid/inputmethodservice/KeyboardView;->mTapCount:I

    .line 1457
    return-void

    .line 1459
    :cond_1
    iput v4, p0, Landroid/inputmethodservice/KeyboardView;->mTapCount:I

    .line 1460
    return-void

    .line 1463
    :cond_2
    iget-wide v2, p0, Landroid/inputmethodservice/KeyboardView;->mLastTapTime:J

    add-long/2addr v2, v6

    cmp-long v1, p1, v2

    if-gtz v1, :cond_3

    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mLastSentIndex:I

    if-eq p3, v1, :cond_4

    .line 1464
    :cond_3
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->resetMultiTap()V

    .line 1449
    :cond_4
    return-void
.end method

.method private computeProximityThreshold(Landroid/inputmethodservice/Keyboard;)V
    .locals 7
    .param p1, "keyboard"    # Landroid/inputmethodservice/Keyboard;

    .prologue
    .line 618
    if-nez p1, :cond_0

    return-void

    .line 619
    :cond_0
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    .line 620
    .local v3, "keys":[Landroid/inputmethodservice/Keyboard$Key;
    if-nez v3, :cond_1

    return-void

    .line 621
    :cond_1
    array-length v4, v3

    .line 622
    .local v4, "length":I
    const/4 v0, 0x0

    .line 623
    .local v0, "dimensionSum":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_2

    .line 624
    aget-object v2, v3, v1

    .line 625
    .local v2, "key":Landroid/inputmethodservice/Keyboard$Key;
    iget v5, v2, Landroid/inputmethodservice/Keyboard$Key;->width:I

    iget v6, v2, Landroid/inputmethodservice/Keyboard$Key;->height:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget v6, v2, Landroid/inputmethodservice/Keyboard$Key;->gap:I

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    .line 623
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 627
    .end local v2    # "key":Landroid/inputmethodservice/Keyboard$Key;
    :cond_2
    if-ltz v0, :cond_3

    if-nez v4, :cond_4

    :cond_3
    return-void

    .line 628
    :cond_4
    int-to-float v5, v0

    const v6, 0x3fb33333    # 1.4f

    mul-float/2addr v5, v6

    int-to-float v6, v4

    div-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Landroid/inputmethodservice/KeyboardView;->mProximityThreshold:I

    .line 629
    iget v5, p0, Landroid/inputmethodservice/KeyboardView;->mProximityThreshold:I

    iget v6, p0, Landroid/inputmethodservice/KeyboardView;->mProximityThreshold:I

    mul-int/2addr v5, v6

    iput v5, p0, Landroid/inputmethodservice/KeyboardView;->mProximityThreshold:I

    .line 617
    return-void
.end method

.method private detectAndSendKey(IIIJ)V
    .locals 6
    .param p1, "index"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "eventTime"    # J

    .prologue
    const/4 v4, 0x0

    const/4 v5, -0x1

    .line 817
    if-eq p1, v5, :cond_0

    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    array-length v3, v3

    if-ge p1, v3, :cond_0

    .line 818
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    aget-object v2, v3, p1

    .line 819
    .local v2, "key":Landroid/inputmethodservice/Keyboard$Key;
    iget-object v3, v2, Landroid/inputmethodservice/Keyboard$Key;->text:Ljava/lang/CharSequence;

    if-eqz v3, :cond_1

    .line 820
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    iget-object v4, v2, Landroid/inputmethodservice/Keyboard$Key;->text:Ljava/lang/CharSequence;

    invoke-interface {v3, v4}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->onText(Ljava/lang/CharSequence;)V

    .line 821
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    invoke-interface {v3, v5}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->onRelease(I)V

    .line 840
    :goto_0
    iput p1, p0, Landroid/inputmethodservice/KeyboardView;->mLastSentIndex:I

    .line 841
    iput-wide p4, p0, Landroid/inputmethodservice/KeyboardView;->mLastTapTime:J

    .line 816
    .end local v2    # "key":Landroid/inputmethodservice/Keyboard$Key;
    :cond_0
    return-void

    .line 823
    .restart local v2    # "key":Landroid/inputmethodservice/Keyboard$Key;
    :cond_1
    iget-object v3, v2, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v0, v3, v4

    .line 825
    .local v0, "code":I
    sget v3, Landroid/inputmethodservice/KeyboardView;->MAX_NEARBY_KEYS:I

    new-array v1, v3, [I

    .line 826
    .local v1, "codes":[I
    invoke-static {v1, v5}, Ljava/util/Arrays;->fill([II)V

    .line 827
    invoke-direct {p0, p2, p3, v1}, Landroid/inputmethodservice/KeyboardView;->getKeyIndices(II[I)I

    .line 829
    iget-boolean v3, p0, Landroid/inputmethodservice/KeyboardView;->mInMultiTap:Z

    if-eqz v3, :cond_2

    .line 830
    iget v3, p0, Landroid/inputmethodservice/KeyboardView;->mTapCount:I

    if-eq v3, v5, :cond_3

    .line 831
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    sget-object v4, Landroid/inputmethodservice/KeyboardView;->KEY_DELETE:[I

    const/4 v5, -0x5

    invoke-interface {v3, v5, v4}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->onKey(I[I)V

    .line 835
    :goto_1
    iget-object v3, v2, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    iget v4, p0, Landroid/inputmethodservice/KeyboardView;->mTapCount:I

    aget v0, v3, v4

    .line 837
    :cond_2
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    invoke-interface {v3, v0, v1}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->onKey(I[I)V

    .line 838
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    invoke-interface {v3, v0}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->onRelease(I)V

    goto :goto_0

    .line 833
    :cond_3
    iput v4, p0, Landroid/inputmethodservice/KeyboardView;->mTapCount:I

    goto :goto_1
.end method

.method private dismissPopupKeyboard()V
    .locals 1

    .prologue
    .line 1427
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1428
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1429
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardOnScreen:Z

    .line 1430
    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->invalidateAllKeys()V

    .line 1426
    :cond_0
    return-void
.end method

.method private getKeyIndices(II[I)I
    .locals 21
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "allKeys"    # [I

    .prologue
    .line 766
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    .line 767
    .local v13, "keys":[Landroid/inputmethodservice/Keyboard$Key;
    const/16 v16, -0x1

    .line 768
    .local v16, "primaryIndex":I
    const/4 v5, -0x1

    .line 769
    .local v5, "closestKey":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/inputmethodservice/KeyboardView;->mProximityThreshold:I

    move/from16 v17, v0

    add-int/lit8 v6, v17, 0x1

    .line 770
    .local v6, "closestKeyDist":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/inputmethodservice/KeyboardView;->mDistances:[I

    move-object/from16 v17, v0

    const v18, 0x7fffffff

    invoke-static/range {v17 .. v18}, Ljava/util/Arrays;->fill([II)V

    .line 771
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/inputmethodservice/Keyboard;->getNearestKeys(II)[I

    move-result-object v15

    .line 772
    .local v15, "nearestKeyIndices":[I
    array-length v12, v15

    .line 773
    .local v12, "keyCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v12, :cond_6

    .line 774
    aget v17, v15, v8

    aget-object v11, v13, v17

    .line 775
    .local v11, "key":Landroid/inputmethodservice/Keyboard$Key;
    const/4 v7, 0x0

    .line 776
    .local v7, "dist":I
    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v11, v0, v1}, Landroid/inputmethodservice/Keyboard$Key;->isInside(II)Z

    move-result v9

    .line 777
    .local v9, "isInside":Z
    if-eqz v9, :cond_0

    .line 778
    aget v16, v15, v8

    .line 781
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/inputmethodservice/KeyboardView;->mProximityCorrectOn:Z

    move/from16 v17, v0

    if-eqz v17, :cond_3

    .line 782
    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v11, v0, v1}, Landroid/inputmethodservice/Keyboard$Key;->squaredDistanceFrom(II)I

    move-result v7

    move-object/from16 v0, p0

    iget v0, v0, Landroid/inputmethodservice/KeyboardView;->mProximityThreshold:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v7, v0, :cond_3

    .line 784
    :goto_1
    iget-object v0, v11, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget v17, v17, v18

    const/16 v18, 0x20

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_2

    .line 786
    iget-object v0, v11, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v14, v0

    .line 787
    .local v14, "nCodes":I
    if-ge v7, v6, :cond_1

    .line 788
    move v6, v7

    .line 789
    aget v5, v15, v8

    .line 792
    :cond_1
    if-nez p3, :cond_4

    .line 773
    .end local v14    # "nCodes":I
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 781
    :cond_3
    if-eqz v9, :cond_2

    goto :goto_1

    .line 794
    .restart local v14    # "nCodes":I
    :cond_4
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/inputmethodservice/KeyboardView;->mDistances:[I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v10, v0, :cond_2

    .line 795
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/inputmethodservice/KeyboardView;->mDistances:[I

    move-object/from16 v17, v0

    aget v17, v17, v10

    move/from16 v0, v17

    if-le v0, v7, :cond_5

    .line 797
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/inputmethodservice/KeyboardView;->mDistances:[I

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/inputmethodservice/KeyboardView;->mDistances:[I

    move-object/from16 v18, v0

    add-int v19, v10, v14

    .line 798
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/inputmethodservice/KeyboardView;->mDistances:[I

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    sub-int v20, v20, v10

    sub-int v20, v20, v14

    .line 797
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-static {v0, v10, v1, v2, v3}, Ljava/lang/System;->arraycopy([II[III)V

    .line 799
    add-int v17, v10, v14

    .line 800
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v18, v0

    sub-int v18, v18, v10

    sub-int v18, v18, v14

    .line 799
    move-object/from16 v0, p3

    move-object/from16 v1, p3

    move/from16 v2, v17

    move/from16 v3, v18

    invoke-static {v0, v10, v1, v2, v3}, Ljava/lang/System;->arraycopy([II[III)V

    .line 801
    const/4 v4, 0x0

    .local v4, "c":I
    :goto_3
    if-ge v4, v14, :cond_2

    .line 802
    add-int v17, v10, v4

    iget-object v0, v11, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    move-object/from16 v18, v0

    aget v18, v18, v4

    aput v18, p3, v17

    .line 803
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/inputmethodservice/KeyboardView;->mDistances:[I

    move-object/from16 v17, v0

    add-int v18, v10, v4

    aput v7, v17, v18

    .line 801
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 794
    .end local v4    # "c":I
    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 810
    .end local v7    # "dist":I
    .end local v9    # "isInside":Z
    .end local v10    # "j":I
    .end local v11    # "key":Landroid/inputmethodservice/Keyboard$Key;
    .end local v14    # "nCodes":I
    :cond_6
    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_7

    .line 811
    move/from16 v16, v5

    .line 813
    :cond_7
    return v16
.end method

.method private getPreviewText(Landroid/inputmethodservice/Keyboard$Key;)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "key"    # Landroid/inputmethodservice/Keyboard$Key;

    .prologue
    const/4 v0, 0x0

    .line 849
    iget-boolean v1, p0, Landroid/inputmethodservice/KeyboardView;->mInMultiTap:Z

    if-eqz v1, :cond_1

    .line 851
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewLabel:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 852
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewLabel:Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    iget v3, p0, Landroid/inputmethodservice/KeyboardView;->mTapCount:I

    if-gez v3, :cond_0

    :goto_0
    aget v0, v2, v0

    int-to-char v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 853
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewLabel:Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Landroid/inputmethodservice/KeyboardView;->adjustCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 852
    :cond_0
    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mTapCount:I

    goto :goto_0

    .line 855
    :cond_1
    iget-object v0, p1, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Landroid/inputmethodservice/KeyboardView;->adjustCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private initGestureDetector()V
    .locals 3

    .prologue
    .line 395
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mGestureDetector:Landroid/view/GestureDetector;

    if-nez v0, :cond_0

    .line 396
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/inputmethodservice/KeyboardView$2;

    invoke-direct {v2, p0}, Landroid/inputmethodservice/KeyboardView$2;-><init>(Landroid/inputmethodservice/KeyboardView;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 448
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mGestureDetector:Landroid/view/GestureDetector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 394
    :cond_0
    return-void
.end method

.method private onBufferDraw()V
    .locals 26

    .prologue
    .line 652
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/inputmethodservice/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/inputmethodservice/KeyboardView;->mKeyboardChanged:Z

    if-eqz v2, :cond_3

    .line 653
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/inputmethodservice/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/inputmethodservice/KeyboardView;->mKeyboardChanged:Z

    if-eqz v2, :cond_2

    .line 654
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/inputmethodservice/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/inputmethodservice/KeyboardView;->getWidth()I

    move-result v3

    if-ne v2, v3, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/inputmethodservice/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/inputmethodservice/KeyboardView;->getHeight()I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 656
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/inputmethodservice/KeyboardView;->getWidth()I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v24

    .line 657
    .local v24, "width":I
    invoke-virtual/range {p0 .. p0}, Landroid/inputmethodservice/KeyboardView;->getHeight()I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 658
    .local v13, "height":I
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v24

    invoke-static {v0, v13, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/inputmethodservice/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    .line 659
    new-instance v2, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/inputmethodservice/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/inputmethodservice/KeyboardView;->mCanvas:Landroid/graphics/Canvas;

    .line 661
    .end local v13    # "height":I
    .end local v24    # "width":I
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/inputmethodservice/KeyboardView;->invalidateAllKeys()V

    .line 662
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/inputmethodservice/KeyboardView;->mKeyboardChanged:Z

    .line 664
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/inputmethodservice/KeyboardView;->mCanvas:Landroid/graphics/Canvas;

    .line 665
    .local v1, "canvas":Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/inputmethodservice/KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    sget-object v3, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 667
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    if-nez v2, :cond_4

    return-void

    .line 669
    :cond_4
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/inputmethodservice/KeyboardView;->mPaint:Landroid/graphics/Paint;

    .line 670
    .local v6, "paint":Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/inputmethodservice/KeyboardView;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    .line 671
    .local v19, "keyBackground":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/inputmethodservice/KeyboardView;->mClipRegion:Landroid/graphics/Rect;

    .line 672
    .local v8, "clipRegion":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/inputmethodservice/KeyboardView;->mPadding:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    .line 673
    .local v23, "padding":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/inputmethodservice/KeyboardView;->mPaddingLeft:I

    move/from16 v16, v0

    .line 674
    .local v16, "kbdPaddingLeft":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/inputmethodservice/KeyboardView;->mPaddingTop:I

    move/from16 v17, v0

    .line 675
    .local v17, "kbdPaddingTop":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    move-object/from16 v21, v0

    .line 676
    .local v21, "keys":[Landroid/inputmethodservice/Keyboard$Key;
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/inputmethodservice/KeyboardView;->mInvalidatedKey:Landroid/inputmethodservice/Keyboard$Key;

    .line 678
    .local v15, "invalidKey":Landroid/inputmethodservice/Keyboard$Key;
    move-object/from16 v0, p0

    iget v2, v0, Landroid/inputmethodservice/KeyboardView;->mKeyTextColor:I

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 679
    const/4 v9, 0x0

    .line 680
    .local v9, "drawSingleKey":Z
    if-eqz v15, :cond_5

    invoke-virtual {v1, v8}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 682
    iget v2, v15, Landroid/inputmethodservice/Keyboard$Key;->x:I

    add-int v2, v2, v16

    add-int/lit8 v2, v2, -0x1

    iget v3, v8, Landroid/graphics/Rect;->left:I

    if-gt v2, v3, :cond_5

    .line 683
    iget v2, v15, Landroid/inputmethodservice/Keyboard$Key;->y:I

    add-int v2, v2, v17

    add-int/lit8 v2, v2, -0x1

    iget v3, v8, Landroid/graphics/Rect;->top:I

    if-gt v2, v3, :cond_5

    .line 684
    iget v2, v15, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v3, v15, Landroid/inputmethodservice/Keyboard$Key;->width:I

    add-int/2addr v2, v3

    add-int v2, v2, v16

    add-int/lit8 v2, v2, 0x1

    iget v3, v8, Landroid/graphics/Rect;->right:I

    if-lt v2, v3, :cond_5

    .line 685
    iget v2, v15, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget v3, v15, Landroid/inputmethodservice/Keyboard$Key;->height:I

    add-int/2addr v2, v3

    add-int v2, v2, v17

    add-int/lit8 v2, v2, 0x1

    iget v3, v8, Landroid/graphics/Rect;->bottom:I

    if-lt v2, v3, :cond_5

    .line 686
    const/4 v9, 0x1

    .line 689
    :cond_5
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 690
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v20, v0

    .line 691
    .local v20, "keyCount":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    move/from16 v0, v20

    if-ge v14, v0, :cond_d

    .line 692
    aget-object v18, v21, v14

    .line 693
    .local v18, "key":Landroid/inputmethodservice/Keyboard$Key;
    if-eqz v9, :cond_6

    move-object/from16 v0, v18

    if-eq v15, v0, :cond_6

    .line 691
    :goto_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 696
    :cond_6
    invoke-virtual/range {v18 .. v18}, Landroid/inputmethodservice/Keyboard$Key;->getCurrentDrawableState()[I

    move-result-object v10

    .line 697
    .local v10, "drawableState":[I
    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 700
    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    if-nez v2, :cond_a

    const/16 v22, 0x0

    .line 702
    :goto_2
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    .line 703
    .local v7, "bounds":Landroid/graphics/Rect;
    move-object/from16 v0, v18

    iget v2, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    iget v3, v7, Landroid/graphics/Rect;->right:I

    if-ne v2, v3, :cond_7

    .line 704
    move-object/from16 v0, v18

    iget v2, v0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    iget v3, v7, Landroid/graphics/Rect;->bottom:I

    if-eq v2, v3, :cond_8

    .line 705
    :cond_7
    move-object/from16 v0, v18

    iget v2, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    move-object/from16 v0, v18

    iget v3, v0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 707
    :cond_8
    move-object/from16 v0, v18

    iget v2, v0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    add-int v2, v2, v16

    int-to-float v2, v2

    move-object/from16 v0, v18

    iget v3, v0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    add-int v3, v3, v17

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 708
    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 710
    if-eqz v22, :cond_c

    .line 712
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_b

    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    array-length v2, v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_b

    .line 713
    move-object/from16 v0, p0

    iget v2, v0, Landroid/inputmethodservice/KeyboardView;->mLabelTextSize:I

    int-to-float v2, v2

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 714
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 720
    :goto_3
    move-object/from16 v0, p0

    iget v2, v0, Landroid/inputmethodservice/KeyboardView;->mShadowRadius:F

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Landroid/inputmethodservice/KeyboardView;->mShadowColor:I

    invoke-virtual {v6, v2, v3, v4, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 723
    move-object/from16 v0, v18

    iget v2, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    move-object/from16 v0, v23

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    move-object/from16 v0, v23

    iget v3, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    .line 724
    move-object/from16 v0, v23

    iget v3, v0, Landroid/graphics/Rect;->left:I

    .line 723
    add-int/2addr v2, v3

    int-to-float v2, v2

    .line 725
    move-object/from16 v0, v18

    iget v3, v0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    move-object/from16 v0, v23

    iget v4, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    move-object/from16 v0, v23

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    .line 726
    invoke-virtual {v6}, Landroid/graphics/Paint;->getTextSize()F

    move-result v4

    invoke-virtual {v6}, Landroid/graphics/Paint;->descent()F

    move-result v5

    sub-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    .line 725
    add-float/2addr v3, v4

    .line 726
    move-object/from16 v0, v23

    iget v4, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    .line 725
    add-float/2addr v3, v4

    .line 722
    move-object/from16 v0, v22

    invoke-virtual {v1, v0, v2, v3, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 729
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v6, v2, v3, v4, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 741
    :cond_9
    :goto_4
    move-object/from16 v0, v18

    iget v2, v0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    neg-int v2, v2

    sub-int v2, v2, v16

    int-to-float v2, v2

    move-object/from16 v0, v18

    iget v3, v0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    neg-int v3, v3

    sub-int v3, v3, v17

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    goto/16 :goto_1

    .line 700
    .end local v7    # "bounds":Landroid/graphics/Rect;
    :cond_a
    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/inputmethodservice/KeyboardView;->adjustCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v22

    .local v22, "label":Ljava/lang/String;
    goto/16 :goto_2

    .line 716
    .end local v22    # "label":Ljava/lang/String;
    .restart local v7    # "bounds":Landroid/graphics/Rect;
    :cond_b
    move-object/from16 v0, p0

    iget v2, v0, Landroid/inputmethodservice/KeyboardView;->mKeyTextSize:I

    int-to-float v2, v2

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 717
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto/16 :goto_3

    .line 730
    :cond_c
    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_9

    .line 731
    move-object/from16 v0, v18

    iget v2, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    move-object/from16 v0, v23

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    move-object/from16 v0, v23

    iget v3, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    .line 732
    move-object/from16 v0, v18

    iget-object v3, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 731
    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    .line 732
    move-object/from16 v0, v23

    iget v3, v0, Landroid/graphics/Rect;->left:I

    .line 731
    add-int v11, v2, v3

    .line 733
    .local v11, "drawableX":I
    move-object/from16 v0, v18

    iget v2, v0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    move-object/from16 v0, v23

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    move-object/from16 v0, v23

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    .line 734
    move-object/from16 v0, v18

    iget-object v3, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 733
    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    .line 734
    move-object/from16 v0, v23

    iget v3, v0, Landroid/graphics/Rect;->top:I

    .line 733
    add-int v12, v2, v3

    .line 735
    .local v12, "drawableY":I
    int-to-float v2, v11

    int-to-float v3, v12

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 736
    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 737
    move-object/from16 v0, v18

    iget-object v3, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 736
    const/4 v5, 0x0

    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v2, v5, v0, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 738
    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 739
    neg-int v2, v11

    int-to-float v2, v2

    neg-int v3, v12

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    goto/16 :goto_4

    .line 743
    .end local v7    # "bounds":Landroid/graphics/Rect;
    .end local v10    # "drawableState":[I
    .end local v11    # "drawableX":I
    .end local v12    # "drawableY":I
    .end local v18    # "key":Landroid/inputmethodservice/Keyboard$Key;
    :cond_d
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/inputmethodservice/KeyboardView;->mInvalidatedKey:Landroid/inputmethodservice/Keyboard$Key;

    .line 745
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardOnScreen:Z

    if-eqz v2, :cond_e

    .line 746
    move-object/from16 v0, p0

    iget v2, v0, Landroid/inputmethodservice/KeyboardView;->mBackgroundDimAmount:F

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    shl-int/lit8 v2, v2, 0x18

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 747
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/inputmethodservice/KeyboardView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual/range {p0 .. p0}, Landroid/inputmethodservice/KeyboardView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 761
    :cond_e
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/inputmethodservice/KeyboardView;->mDrawPending:Z

    .line 762
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/inputmethodservice/KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 651
    return-void
.end method

.method private onModifiedTouchEvent(Landroid/view/MotionEvent;Z)Z
    .locals 12
    .param p1, "me"    # Landroid/view/MotionEvent;
    .param p2, "possiblePoly"    # Z

    .prologue
    .line 1237
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingLeft:I

    sub-int v2, v0, v1

    .line 1238
    .local v2, "touchX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingTop:I

    sub-int v3, v0, v1

    .line 1239
    .local v3, "touchY":I
    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mVerticalCorrection:I

    neg-int v0, v0

    if-lt v3, v0, :cond_0

    .line 1240
    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mVerticalCorrection:I

    add-int/2addr v3, v0

    .line 1241
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    .line 1242
    .local v6, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    .line 1243
    .local v4, "eventTime":J
    const/4 v0, 0x0

    invoke-direct {p0, v2, v3, v0}, Landroid/inputmethodservice/KeyboardView;->getKeyIndices(II[I)I

    move-result v8

    .line 1244
    .local v8, "keyIndex":I
    iput-boolean p2, p0, Landroid/inputmethodservice/KeyboardView;->mPossiblePoly:Z

    .line 1247
    if-nez v6, :cond_1

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mSwipeTracker:Landroid/inputmethodservice/KeyboardView$SwipeTracker;

    invoke-virtual {v0}, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->clear()V

    .line 1248
    :cond_1
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mSwipeTracker:Landroid/inputmethodservice/KeyboardView$SwipeTracker;

    invoke-virtual {v0, p1}, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1251
    iget-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mAbortKey:Z

    if-eqz v0, :cond_2

    .line 1252
    if-eqz v6, :cond_2

    const/4 v0, 0x3

    if-eq v6, v0, :cond_2

    .line 1253
    const/4 v0, 0x1

    return v0

    .line 1256
    :cond_2
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1257
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Landroid/inputmethodservice/KeyboardView;->showPreview(I)V

    .line 1258
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1259
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1260
    const/4 v0, 0x1

    return v0

    .line 1265
    :cond_3
    iget-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardOnScreen:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    if-eq v6, v0, :cond_4

    .line 1266
    const/4 v0, 0x1

    return v0

    .line 1269
    :cond_4
    packed-switch v6, :pswitch_data_0

    .line 1373
    :goto_0
    iput v2, p0, Landroid/inputmethodservice/KeyboardView;->mLastX:I

    .line 1374
    iput v3, p0, Landroid/inputmethodservice/KeyboardView;->mLastY:I

    .line 1375
    const/4 v0, 0x1

    return v0

    .line 1271
    :pswitch_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mAbortKey:Z

    .line 1272
    iput v2, p0, Landroid/inputmethodservice/KeyboardView;->mStartX:I

    .line 1273
    iput v3, p0, Landroid/inputmethodservice/KeyboardView;->mStartY:I

    .line 1274
    iput v2, p0, Landroid/inputmethodservice/KeyboardView;->mLastCodeX:I

    .line 1275
    iput v3, p0, Landroid/inputmethodservice/KeyboardView;->mLastCodeY:I

    .line 1276
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/inputmethodservice/KeyboardView;->mLastKeyTime:J

    .line 1277
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    .line 1278
    const/4 v0, -0x1

    iput v0, p0, Landroid/inputmethodservice/KeyboardView;->mLastKey:I

    .line 1279
    iput v8, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    .line 1280
    iput v8, p0, Landroid/inputmethodservice/KeyboardView;->mDownKey:I

    .line 1281
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/inputmethodservice/KeyboardView;->mDownTime:J

    .line 1282
    iget-wide v0, p0, Landroid/inputmethodservice/KeyboardView;->mDownTime:J

    iput-wide v0, p0, Landroid/inputmethodservice/KeyboardView;->mLastMoveTime:J

    .line 1283
    invoke-direct {p0, v4, v5, v8}, Landroid/inputmethodservice/KeyboardView;->checkMultiTap(JI)V

    .line 1284
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    const/4 v0, -0x1

    if-eq v8, v0, :cond_5

    .line 1285
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    aget-object v0, v0, v8

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v10, 0x0

    aget v0, v0, v10

    .line 1284
    :goto_1
    invoke-interface {v1, v0}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->onPress(I)V

    .line 1286
    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    if-ltz v0, :cond_6

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    aget-object v0, v0, v1

    iget-boolean v0, v0, Landroid/inputmethodservice/Keyboard$Key;->repeatable:Z

    if-eqz v0, :cond_6

    .line 1287
    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    iput v0, p0, Landroid/inputmethodservice/KeyboardView;->mRepeatKeyIndex:I

    .line 1288
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 1289
    .local v9, "msg":Landroid/os/Message;
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    const-wide/16 v10, 0x190

    invoke-virtual {v0, v9, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1290
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->repeatKey()Z

    .line 1292
    iget-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mAbortKey:Z

    if-eqz v0, :cond_6

    .line 1293
    const/4 v0, -0x1

    iput v0, p0, Landroid/inputmethodservice/KeyboardView;->mRepeatKeyIndex:I

    goto :goto_0

    .line 1285
    .end local v9    # "msg":Landroid/os/Message;
    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    .line 1297
    :cond_6
    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    .line 1298
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 1299
    .restart local v9    # "msg":Landroid/os/Message;
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    sget v1, Landroid/inputmethodservice/KeyboardView;->LONGPRESS_TIMEOUT:I

    int-to-long v10, v1

    invoke-virtual {v0, v9, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1301
    .end local v9    # "msg":Landroid/os/Message;
    :cond_7
    invoke-direct {p0, v8}, Landroid/inputmethodservice/KeyboardView;->showPreview(I)V

    goto/16 :goto_0

    .line 1305
    :pswitch_1
    const/4 v7, 0x0

    .line 1306
    .local v7, "continueLongPress":Z
    const/4 v0, -0x1

    if-eq v8, v0, :cond_8

    .line 1307
    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    .line 1308
    iput v8, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    .line 1309
    iget-wide v0, p0, Landroid/inputmethodservice/KeyboardView;->mDownTime:J

    sub-long v0, v4, v0

    iput-wide v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    .line 1326
    :cond_8
    :goto_2
    if-nez v7, :cond_9

    .line 1328
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1330
    const/4 v0, -0x1

    if-eq v8, v0, :cond_9

    .line 1331
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 1332
    .restart local v9    # "msg":Landroid/os/Message;
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    sget v1, Landroid/inputmethodservice/KeyboardView;->LONGPRESS_TIMEOUT:I

    int-to-long v10, v1

    invoke-virtual {v0, v9, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1335
    .end local v9    # "msg":Landroid/os/Message;
    :cond_9
    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    invoke-direct {p0, v0}, Landroid/inputmethodservice/KeyboardView;->showPreview(I)V

    .line 1336
    iput-wide v4, p0, Landroid/inputmethodservice/KeyboardView;->mLastMoveTime:J

    goto/16 :goto_0

    .line 1311
    :cond_a
    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    if-ne v8, v0, :cond_b

    .line 1312
    iget-wide v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    iget-wide v10, p0, Landroid/inputmethodservice/KeyboardView;->mLastMoveTime:J

    sub-long v10, v4, v10

    add-long/2addr v0, v10

    iput-wide v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    .line 1313
    const/4 v7, 0x1

    goto :goto_2

    .line 1314
    :cond_b
    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mRepeatKeyIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    .line 1315
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->resetMultiTap()V

    .line 1316
    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    iput v0, p0, Landroid/inputmethodservice/KeyboardView;->mLastKey:I

    .line 1317
    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mLastX:I

    iput v0, p0, Landroid/inputmethodservice/KeyboardView;->mLastCodeX:I

    .line 1318
    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mLastY:I

    iput v0, p0, Landroid/inputmethodservice/KeyboardView;->mLastCodeY:I

    .line 1320
    iget-wide v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    add-long/2addr v0, v4

    iget-wide v10, p0, Landroid/inputmethodservice/KeyboardView;->mLastMoveTime:J

    sub-long/2addr v0, v10

    .line 1319
    iput-wide v0, p0, Landroid/inputmethodservice/KeyboardView;->mLastKeyTime:J

    .line 1321
    iput v8, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    .line 1322
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    goto :goto_2

    .line 1340
    .end local v7    # "continueLongPress":Z
    :pswitch_2
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->removeMessages()V

    .line 1341
    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    if-ne v8, v0, :cond_e

    .line 1342
    iget-wide v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    iget-wide v10, p0, Landroid/inputmethodservice/KeyboardView;->mLastMoveTime:J

    sub-long v10, v4, v10

    add-long/2addr v0, v10

    iput-wide v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    .line 1350
    :goto_3
    iget-wide v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    iget-wide v10, p0, Landroid/inputmethodservice/KeyboardView;->mLastKeyTime:J

    cmp-long v0, v0, v10

    if-gez v0, :cond_c

    iget-wide v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    const-wide/16 v10, 0x46

    cmp-long v0, v0, v10

    if-gez v0, :cond_c

    .line 1351
    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mLastKey:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    .line 1352
    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mLastKey:I

    iput v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    .line 1353
    iget v2, p0, Landroid/inputmethodservice/KeyboardView;->mLastCodeX:I

    .line 1354
    iget v3, p0, Landroid/inputmethodservice/KeyboardView;->mLastCodeY:I

    .line 1356
    :cond_c
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Landroid/inputmethodservice/KeyboardView;->showPreview(I)V

    .line 1357
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyIndices:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 1359
    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mRepeatKeyIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    iget-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardOnScreen:Z

    if-eqz v0, :cond_f

    .line 1362
    :cond_d
    :goto_4
    invoke-virtual {p0, v8}, Landroid/inputmethodservice/KeyboardView;->invalidateKey(I)V

    .line 1363
    const/4 v0, -0x1

    iput v0, p0, Landroid/inputmethodservice/KeyboardView;->mRepeatKeyIndex:I

    goto/16 :goto_0

    .line 1344
    :cond_e
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->resetMultiTap()V

    .line 1345
    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    iput v0, p0, Landroid/inputmethodservice/KeyboardView;->mLastKey:I

    .line 1346
    iget-wide v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    add-long/2addr v0, v4

    iget-wide v10, p0, Landroid/inputmethodservice/KeyboardView;->mLastMoveTime:J

    sub-long/2addr v0, v10

    iput-wide v0, p0, Landroid/inputmethodservice/KeyboardView;->mLastKeyTime:J

    .line 1347
    iput v8, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    .line 1348
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    goto :goto_3

    .line 1359
    :cond_f
    iget-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mAbortKey:Z

    if-nez v0, :cond_d

    .line 1360
    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/inputmethodservice/KeyboardView;->detectAndSendKey(IIIJ)V

    goto :goto_4

    .line 1366
    :pswitch_3
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->removeMessages()V

    .line 1367
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->dismissPopupKeyboard()V

    .line 1368
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mAbortKey:Z

    .line 1369
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Landroid/inputmethodservice/KeyboardView;->showPreview(I)V

    .line 1370
    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/KeyboardView;->invalidateKey(I)V

    goto/16 :goto_0

    .line 1269
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private openPopupIfRequired(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    .line 1075
    iget v2, p0, Landroid/inputmethodservice/KeyboardView;->mPopupLayout:I

    if-nez v2, :cond_0

    .line 1076
    return v4

    .line 1078
    :cond_0
    iget v2, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    if-ltz v2, :cond_1

    iget v2, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    array-length v3, v3

    if-lt v2, v3, :cond_2

    .line 1079
    :cond_1
    return v4

    .line 1082
    :cond_2
    iget-object v2, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    iget v3, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    aget-object v0, v2, v3

    .line 1083
    .local v0, "popupKey":Landroid/inputmethodservice/Keyboard$Key;
    invoke-virtual {p0, v0}, Landroid/inputmethodservice/KeyboardView;->onLongPress(Landroid/inputmethodservice/Keyboard$Key;)Z

    move-result v1

    .line 1084
    .local v1, "result":Z
    if-eqz v1, :cond_3

    .line 1085
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/inputmethodservice/KeyboardView;->mAbortKey:Z

    .line 1086
    const/4 v2, -0x1

    invoke-direct {p0, v2}, Landroid/inputmethodservice/KeyboardView;->showPreview(I)V

    .line 1088
    :cond_3
    return v1
.end method

.method private removeMessages()V
    .locals 2

    .prologue
    .line 1413
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1414
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1415
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1416
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1412
    :cond_0
    return-void
.end method

.method private repeatKey()Z
    .locals 7

    .prologue
    .line 1379
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mRepeatKeyIndex:I

    aget-object v6, v0, v1

    .line 1380
    .local v6, "key":Landroid/inputmethodservice/Keyboard$Key;
    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    iget v2, v6, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v3, v6, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget-wide v4, p0, Landroid/inputmethodservice/KeyboardView;->mLastTapTime:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/inputmethodservice/KeyboardView;->detectAndSendKey(IIIJ)V

    .line 1381
    const/4 v0, 0x1

    return v0
.end method

.method private resetMultiTap()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1443
    const/4 v0, -0x1

    iput v0, p0, Landroid/inputmethodservice/KeyboardView;->mLastSentIndex:I

    .line 1444
    iput v2, p0, Landroid/inputmethodservice/KeyboardView;->mTapCount:I

    .line 1445
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/inputmethodservice/KeyboardView;->mLastTapTime:J

    .line 1446
    iput-boolean v2, p0, Landroid/inputmethodservice/KeyboardView;->mInMultiTap:Z

    .line 1442
    return-void
.end method

.method private sendAccessibilityEventForUnicodeCharacter(II)V
    .locals 7
    .param p1, "eventType"    # I
    .param p2, "code"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 988
    iget-object v4, p0, Landroid/inputmethodservice/KeyboardView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 989
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 990
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0, v0}, Landroid/inputmethodservice/KeyboardView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 991
    const/4 v2, 0x0

    .line 994
    .local v2, "text":Ljava/lang/String;
    iget-object v4, p0, Landroid/inputmethodservice/KeyboardView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "speak_password"

    .line 995
    const/4 v6, -0x3

    .line 993
    invoke-static {v4, v5, v1, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-eqz v4, :cond_0

    move v1, v3

    .line 998
    .local v1, "speakPassword":Z
    :cond_0
    if-nez v1, :cond_1

    iget-object v4, p0, Landroid/inputmethodservice/KeyboardView;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v4

    if-nez v4, :cond_1

    .line 999
    iget-object v4, p0, Landroid/inputmethodservice/KeyboardView;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v4

    .line 998
    if-eqz v4, :cond_3

    .line 1000
    :cond_1
    sparse-switch p2, :sswitch_data_0

    .line 1023
    int-to-char v3, p2

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    .line 1035
    .local v2, "text":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1036
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v3, v0}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 987
    .end local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    .end local v1    # "speakPassword":Z
    .end local v2    # "text":Ljava/lang/String;
    :cond_2
    return-void

    .line 1002
    .restart local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    .restart local v1    # "speakPassword":Z
    .local v2, "text":Ljava/lang/String;
    :sswitch_0
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mContext:Landroid/content/Context;

    const v4, 0x10404bd

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .local v2, "text":Ljava/lang/String;
    goto :goto_0

    .line 1005
    .local v2, "text":Ljava/lang/String;
    :sswitch_1
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mContext:Landroid/content/Context;

    const v4, 0x10404be

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .local v2, "text":Ljava/lang/String;
    goto :goto_0

    .line 1008
    .local v2, "text":Ljava/lang/String;
    :sswitch_2
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mContext:Landroid/content/Context;

    const v4, 0x10404bf

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .local v2, "text":Ljava/lang/String;
    goto :goto_0

    .line 1011
    .local v2, "text":Ljava/lang/String;
    :sswitch_3
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mContext:Landroid/content/Context;

    const v4, 0x10404c0

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .local v2, "text":Ljava/lang/String;
    goto :goto_0

    .line 1014
    .local v2, "text":Ljava/lang/String;
    :sswitch_4
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mContext:Landroid/content/Context;

    const v4, 0x10404c1

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .local v2, "text":Ljava/lang/String;
    goto :goto_0

    .line 1017
    .local v2, "text":Ljava/lang/String;
    :sswitch_5
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mContext:Landroid/content/Context;

    const v4, 0x10404c2

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .local v2, "text":Ljava/lang/String;
    goto :goto_0

    .line 1020
    .local v2, "text":Ljava/lang/String;
    :sswitch_6
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mContext:Landroid/content/Context;

    const v4, 0x10404c3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .local v2, "text":Ljava/lang/String;
    goto :goto_0

    .line 1025
    .local v2, "text":Ljava/lang/String;
    :cond_3
    iget-boolean v4, p0, Landroid/inputmethodservice/KeyboardView;->mHeadsetRequiredToHearPasswordsAnnounced:Z

    if-nez v4, :cond_5

    .line 1028
    const/16 v4, 0x100

    if-ne p1, v4, :cond_4

    .line 1029
    iput-boolean v3, p0, Landroid/inputmethodservice/KeyboardView;->mHeadsetRequiredToHearPasswordsAnnounced:Z

    .line 1031
    :cond_4
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mContext:Landroid/content/Context;

    const v4, 0x10404ca

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .local v2, "text":Ljava/lang/String;
    goto :goto_0

    .line 1033
    .local v2, "text":Ljava/lang/String;
    :cond_5
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mContext:Landroid/content/Context;

    const v4, 0x10404cb

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .local v2, "text":Ljava/lang/String;
    goto :goto_0

    .line 1000
    :sswitch_data_0
    .sparse-switch
        -0x6 -> :sswitch_0
        -0x5 -> :sswitch_2
        -0x4 -> :sswitch_3
        -0x3 -> :sswitch_1
        -0x2 -> :sswitch_4
        -0x1 -> :sswitch_5
        0xa -> :sswitch_6
    .end sparse-switch
.end method

.method private showKey(I)V
    .locals 14
    .param p1, "keyIndex"    # I

    .prologue
    const/4 v11, 0x2

    const-wide/high16 v12, 0x4004000000000000L    # 2.5

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v10, 0x0

    .line 914
    iget-object v5, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    .line 915
    .local v5, "previewPopup":Landroid/widget/PopupWindow;
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    .line 916
    .local v1, "keys":[Landroid/inputmethodservice/Keyboard$Key;
    if-ltz p1, :cond_0

    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    array-length v6, v6

    if-lt p1, v6, :cond_1

    :cond_0
    return-void

    .line 917
    :cond_1
    aget-object v0, v1, p1

    .line 918
    .local v0, "key":Landroid/inputmethodservice/Keyboard$Key;
    iget-object v6, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_5

    .line 919
    iget-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    .line 920
    iget-object v6, v0, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_4

    iget-object v6, v0, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 919
    :goto_0
    invoke-virtual {v7, v8, v8, v8, v6}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 921
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 933
    :goto_1
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-static {v10, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 934
    invoke-static {v10, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 933
    invoke-virtual {v6, v7, v8}, Landroid/widget/TextView;->measure(II)V

    .line 935
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v6

    iget v7, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    .line 936
    iget-object v8, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v8

    .line 935
    add-int/2addr v7, v8

    .line 936
    iget-object v8, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v8

    .line 935
    add-int/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 937
    .local v4, "popupWidth":I
    iget v3, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewHeight:I

    .line 938
    .local v3, "popupHeight":I
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 939
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v2, :cond_2

    .line 940
    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 941
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 943
    :cond_2
    iget-boolean v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewCentered:Z

    if-nez v6, :cond_7

    .line 944
    iget v6, v0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v7

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingLeft:I

    add-int/2addr v6, v7

    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewX:I

    .line 945
    iget v6, v0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    sub-int/2addr v6, v3

    iget v7, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewOffset:I

    add-int/2addr v6, v7

    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewY:I

    .line 951
    :goto_2
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 952
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mCoordinates:[I

    invoke-virtual {p0, v6}, Landroid/inputmethodservice/KeyboardView;->getLocationInWindow([I)V

    .line 953
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mCoordinates:[I

    aget v7, v6, v10

    iget v8, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardOffsetX:I

    add-int/2addr v7, v8

    aput v7, v6, v10

    .line 954
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mCoordinates:[I

    aget v7, v6, v9

    iget v8, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardOffsetY:I

    add-int/2addr v7, v8

    aput v7, v6, v9

    .line 957
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 958
    iget v6, v0, Landroid/inputmethodservice/Keyboard$Key;->popupResId:I

    if-eqz v6, :cond_8

    sget-object v6, Landroid/inputmethodservice/KeyboardView;->LONG_PRESSABLE_STATE_SET:[I

    .line 957
    :goto_3
    invoke-virtual {v7, v6}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 959
    iget v6, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewX:I

    iget-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mCoordinates:[I

    aget v7, v7, v10

    add-int/2addr v6, v7

    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewX:I

    .line 960
    iget v6, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewY:I

    iget-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mCoordinates:[I

    aget v7, v7, v9

    add-int/2addr v6, v7

    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewY:I

    .line 963
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mCoordinates:[I

    invoke-virtual {p0, v6}, Landroid/inputmethodservice/KeyboardView;->getLocationOnScreen([I)V

    .line 964
    iget v6, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewY:I

    iget-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mCoordinates:[I

    aget v7, v7, v9

    add-int/2addr v6, v7

    if-gez v6, :cond_3

    .line 967
    iget v6, v0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v7, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    add-int/2addr v6, v7

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    if-gt v6, v7, :cond_9

    .line 968
    iget v6, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewX:I

    iget v7, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    int-to-double v8, v7

    mul-double/2addr v8, v12

    double-to-int v7, v8

    add-int/2addr v6, v7

    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewX:I

    .line 972
    :goto_4
    iget v6, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewY:I

    add-int/2addr v6, v3

    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewY:I

    .line 975
    :cond_3
    invoke-virtual {v5}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 976
    iget v6, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewX:I

    iget v7, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewY:I

    invoke-virtual {v5, v6, v7, v4, v3}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 984
    :goto_5
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 913
    return-void

    .line 920
    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v3    # "popupHeight":I
    .end local v4    # "popupWidth":I
    :cond_4
    iget-object v6, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    .line 923
    :cond_5
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v6, v8, v8, v8, v8}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 924
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Landroid/inputmethodservice/KeyboardView;->getPreviewText(Landroid/inputmethodservice/Keyboard$Key;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 925
    iget-object v6, v0, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-le v6, v9, :cond_6

    iget-object v6, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    array-length v6, v6

    if-ge v6, v11, :cond_6

    .line 926
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    iget v7, p0, Landroid/inputmethodservice/KeyboardView;->mKeyTextSize:I

    int-to-float v7, v7

    invoke-virtual {v6, v10, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 927
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    sget-object v7, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto/16 :goto_1

    .line 929
    :cond_6
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    iget v7, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewTextSizeLarge:I

    int-to-float v7, v7

    invoke-virtual {v6, v10, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 930
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    sget-object v7, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto/16 :goto_1

    .line 948
    .restart local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v3    # "popupHeight":I
    .restart local v4    # "popupWidth":I
    :cond_7
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    rsub-int v6, v6, 0xa0

    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewX:I

    .line 949
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    neg-int v6, v6

    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewY:I

    goto/16 :goto_2

    .line 958
    :cond_8
    sget-object v6, Landroid/inputmethodservice/KeyboardView;->EMPTY_STATE_SET:[I

    goto/16 :goto_3

    .line 970
    :cond_9
    iget v6, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewX:I

    iget v7, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    int-to-double v8, v7

    mul-double/2addr v8, v12

    double-to-int v7, v8

    sub-int/2addr v6, v7

    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewX:I

    goto :goto_4

    .line 979
    :cond_a
    invoke-virtual {v5, v4}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 980
    invoke-virtual {v5, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 981
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPopupParent:Landroid/view/View;

    .line 982
    iget v7, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewX:I

    iget v8, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewY:I

    .line 981
    invoke-virtual {v5, v6, v10, v7, v8}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_5
.end method

.method private showPreview(I)V
    .locals 13
    .param p1, "keyIndex"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v12, -0x1

    .line 860
    iget v4, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyIndex:I

    .line 861
    .local v4, "oldKeyIndex":I
    iget-object v5, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    .line 863
    .local v5, "previewPopup":Landroid/widget/PopupWindow;
    iput p1, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyIndex:I

    .line 865
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    .line 866
    .local v1, "keys":[Landroid/inputmethodservice/Keyboard$Key;
    iget v6, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyIndex:I

    if-eq v4, v6, :cond_1

    .line 867
    if-eq v4, v12, :cond_0

    array-length v6, v1

    if-le v6, v4, :cond_0

    .line 868
    aget-object v3, v1, v4

    .line 869
    .local v3, "oldKey":Landroid/inputmethodservice/Keyboard$Key;
    iget v6, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyIndex:I

    if-ne v6, v12, :cond_4

    move v6, v7

    :goto_0
    invoke-virtual {v3, v6}, Landroid/inputmethodservice/Keyboard$Key;->onReleased(Z)V

    .line 870
    invoke-virtual {p0, v4}, Landroid/inputmethodservice/KeyboardView;->invalidateKey(I)V

    .line 871
    iget-object v6, v3, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v0, v6, v8

    .line 872
    .local v0, "keyCode":I
    const/16 v6, 0x100

    invoke-direct {p0, v6, v0}, Landroid/inputmethodservice/KeyboardView;->sendAccessibilityEventForUnicodeCharacter(II)V

    .line 876
    const/high16 v6, 0x10000

    .line 875
    invoke-direct {p0, v6, v0}, Landroid/inputmethodservice/KeyboardView;->sendAccessibilityEventForUnicodeCharacter(II)V

    .line 878
    .end local v0    # "keyCode":I
    .end local v3    # "oldKey":Landroid/inputmethodservice/Keyboard$Key;
    :cond_0
    iget v6, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyIndex:I

    if-eq v6, v12, :cond_1

    array-length v6, v1

    iget v9, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyIndex:I

    if-le v6, v9, :cond_1

    .line 879
    iget v6, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyIndex:I

    aget-object v2, v1, v6

    .line 880
    .local v2, "newKey":Landroid/inputmethodservice/Keyboard$Key;
    invoke-virtual {v2}, Landroid/inputmethodservice/Keyboard$Key;->onPressed()V

    .line 881
    iget v6, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyIndex:I

    invoke-virtual {p0, v6}, Landroid/inputmethodservice/KeyboardView;->invalidateKey(I)V

    .line 882
    iget-object v6, v2, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v0, v6, v8

    .line 883
    .restart local v0    # "keyCode":I
    const/16 v6, 0x80

    invoke-direct {p0, v6, v0}, Landroid/inputmethodservice/KeyboardView;->sendAccessibilityEventForUnicodeCharacter(II)V

    .line 887
    const v6, 0x8000

    .line 886
    invoke-direct {p0, v6, v0}, Landroid/inputmethodservice/KeyboardView;->sendAccessibilityEventForUnicodeCharacter(II)V

    .line 891
    .end local v0    # "keyCode":I
    .end local v2    # "newKey":Landroid/inputmethodservice/Keyboard$Key;
    :cond_1
    iget v6, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyIndex:I

    if-eq v4, v6, :cond_3

    iget-boolean v6, p0, Landroid/inputmethodservice/KeyboardView;->mShowPreview:Z

    if-eqz v6, :cond_3

    .line 892
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 893
    invoke-virtual {v5}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 894
    if-ne p1, v12, :cond_2

    .line 895
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    iget-object v9, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    .line 896
    const/4 v10, 0x2

    .line 895
    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 897
    const-wide/16 v10, 0x46

    .line 895
    invoke-virtual {v6, v9, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 900
    :cond_2
    if-eq p1, v12, :cond_3

    .line 901
    invoke-virtual {v5}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_5

    .line 903
    invoke-direct {p0, p1}, Landroid/inputmethodservice/KeyboardView;->showKey(I)V

    .line 859
    :cond_3
    :goto_1
    return-void

    .restart local v3    # "oldKey":Landroid/inputmethodservice/Keyboard$Key;
    :cond_4
    move v6, v8

    .line 869
    goto :goto_0

    .line 905
    .end local v3    # "oldKey":Landroid/inputmethodservice/Keyboard$Key;
    :cond_5
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    .line 906
    iget-object v9, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9, v7, p1, v8}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    .line 907
    const-wide/16 v8, 0x0

    .line 905
    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1
.end method


# virtual methods
.method public closing()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1401
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1402
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1404
    :cond_0
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->removeMessages()V

    .line 1406
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->dismissPopupKeyboard()V

    .line 1407
    iput-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    .line 1408
    iput-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mCanvas:Landroid/graphics/Canvas;

    .line 1409
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1400
    return-void
.end method

.method public getKeyboard()Landroid/inputmethodservice/Keyboard;
    .locals 1

    .prologue
    .line 497
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    return-object v0
.end method

.method protected getOnKeyboardActionListener()Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    return-object v0
.end method

.method public handleBack()Z
    .locals 1

    .prologue
    .line 1435
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1436
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->dismissPopupKeyboard()V

    .line 1437
    const/4 v0, 0x1

    return v0

    .line 1439
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public invalidateAllKeys()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1047
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->union(IIII)V

    .line 1048
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mDrawPending:Z

    .line 1049
    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->invalidate()V

    .line 1046
    return-void
.end method

.method public invalidateKey(I)V
    .locals 7
    .param p1, "keyIndex"    # I

    .prologue
    .line 1060
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    if-nez v1, :cond_0

    return-void

    .line 1061
    :cond_0
    if-ltz p1, :cond_1

    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    array-length v1, v1

    if-lt p1, v1, :cond_2

    .line 1062
    :cond_1
    return-void

    .line 1064
    :cond_2
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    aget-object v0, v1, p1

    .line 1065
    .local v0, "key":Landroid/inputmethodservice/Keyboard$Key;
    iput-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mInvalidatedKey:Landroid/inputmethodservice/Keyboard$Key;

    .line 1066
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v3, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingLeft:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget v4, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingTop:I

    add-int/2addr v3, v4

    .line 1067
    iget v4, v0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v5, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    add-int/2addr v4, v5

    iget v5, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingLeft:I

    add-int/2addr v4, v5

    iget v5, v0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget v6, v0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    add-int/2addr v5, v6

    iget v6, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingTop:I

    add-int/2addr v5, v6

    .line 1066
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->union(IIII)V

    .line 1068
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->onBufferDraw()V

    .line 1069
    iget v1, v0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v2, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingLeft:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget v3, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingTop:I

    add-int/2addr v2, v3

    .line 1070
    iget v3, v0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v4, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    add-int/2addr v3, v4

    iget v4, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingLeft:I

    add-int/2addr v3, v4

    iget v4, v0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget v5, v0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    add-int/2addr v4, v5

    iget v5, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingTop:I

    add-int/2addr v4, v5

    .line 1069
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/inputmethodservice/KeyboardView;->invalidate(IIII)V

    .line 1059
    return-void
.end method

.method public isPreviewEnabled()Z
    .locals 1

    .prologue
    .line 546
    iget-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mShowPreview:Z

    return v0
.end method

.method public isProximityCorrectionEnabled()Z
    .locals 1

    .prologue
    .line 578
    iget-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mProximityCorrectOn:Z

    return v0
.end method

.method public isShifted()Z
    .locals 1

    .prologue
    .line 524
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    if-eqz v0, :cond_0

    .line 525
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v0}, Landroid/inputmethodservice/Keyboard;->isShifted()Z

    move-result v0

    return v0

    .line 527
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 366
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 367
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->initGestureDetector()V

    .line 368
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 369
    new-instance v0, Landroid/inputmethodservice/KeyboardView$1;

    invoke-direct {v0, p0}, Landroid/inputmethodservice/KeyboardView$1;-><init>(Landroid/inputmethodservice/KeyboardView;)V

    iput-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    .line 365
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 586
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->dismissPopupKeyboard()V

    .line 585
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 1422
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 1423
    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->closing()V

    .line 1421
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 644
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 645
    iget-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mDrawPending:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    .line 646
    :cond_0
    :goto_0
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->onBufferDraw()V

    .line 648
    :cond_1
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 643
    return-void

    .line 645
    :cond_2
    iget-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardChanged:Z

    if-eqz v0, :cond_1

    goto :goto_0
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 1176
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 1177
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1178
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 1189
    :goto_0
    :pswitch_0
    invoke-virtual {p0, p1}, Landroid/inputmethodservice/KeyboardView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 1180
    :pswitch_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 1183
    :pswitch_2
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 1186
    :pswitch_3
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 1191
    .end local v0    # "action":I
    :cond_0
    return v2

    .line 1178
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected onLongPress(Landroid/inputmethodservice/Keyboard$Key;)Z
    .locals 13
    .param p1, "popupKey"    # Landroid/inputmethodservice/Keyboard$Key;

    .prologue
    const v5, 0x1020026

    const/high16 v12, -0x80000000

    const/4 v11, 0x1

    const/4 v4, 0x0

    const/4 v10, 0x0

    .line 1099
    iget v2, p1, Landroid/inputmethodservice/Keyboard$Key;->popupResId:I

    .line 1101
    .local v2, "popupKeyboardId":I
    if-eqz v2, :cond_4

    .line 1102
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardCache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iput-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    .line 1103
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    if-nez v1, :cond_2

    .line 1104
    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1105
    const-string/jumbo v3, "layout_inflater"

    .line 1104
    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    .line 1106
    .local v7, "inflater":Landroid/view/LayoutInflater;
    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupLayout:I

    invoke-virtual {v7, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    .line 1107
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/inputmethodservice/KeyboardView;

    iput-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboard:Landroid/inputmethodservice/KeyboardView;

    .line 1109
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    .line 1110
    const v3, 0x1020027

    .line 1109
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 1111
    .local v6, "closeButton":Landroid/view/View;
    if-eqz v6, :cond_0

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1112
    :cond_0
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboard:Landroid/inputmethodservice/KeyboardView;

    new-instance v3, Landroid/inputmethodservice/KeyboardView$3;

    invoke-direct {v3, p0}, Landroid/inputmethodservice/KeyboardView$3;-><init>(Landroid/inputmethodservice/KeyboardView;)V

    invoke-virtual {v1, v3}, Landroid/inputmethodservice/KeyboardView;->setOnKeyboardActionListener(Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;)V

    .line 1136
    iget-object v1, p1, Landroid/inputmethodservice/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 1137
    new-instance v0, Landroid/inputmethodservice/Keyboard;

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1138
    iget-object v3, p1, Landroid/inputmethodservice/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getPaddingRight()I

    move-result v5

    add-int/2addr v5, v4

    const/4 v4, -0x1

    .line 1137
    invoke-direct/range {v0 .. v5}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;II)V

    .line 1142
    .local v0, "keyboard":Landroid/inputmethodservice/Keyboard;
    :goto_0
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboard:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v1, v0}, Landroid/inputmethodservice/KeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    .line 1143
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboard:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v1, p0}, Landroid/inputmethodservice/KeyboardView;->setPopupParent(Landroid/view/View;)V

    .line 1144
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    .line 1145
    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getWidth()I

    move-result v3

    invoke-static {v3, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 1146
    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getHeight()I

    move-result v4

    invoke-static {v4, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 1144
    invoke-virtual {v1, v3, v4}, Landroid/view/View;->measure(II)V

    .line 1148
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardCache:Ljava/util/Map;

    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-interface {v1, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1153
    .end local v0    # "keyboard":Landroid/inputmethodservice/Keyboard;
    .end local v6    # "closeButton":Landroid/view/View;
    .end local v7    # "inflater":Landroid/view/LayoutInflater;
    :goto_1
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mCoordinates:[I

    invoke-virtual {p0, v1}, Landroid/inputmethodservice/KeyboardView;->getLocationInWindow([I)V

    .line 1154
    iget v1, p1, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v3, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingLeft:I

    add-int/2addr v1, v3

    iput v1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupX:I

    .line 1155
    iget v1, p1, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget v3, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingTop:I

    add-int/2addr v1, v3

    iput v1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupY:I

    .line 1156
    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupX:I

    iget v3, p1, Landroid/inputmethodservice/Keyboard$Key;->width:I

    add-int/2addr v1, v3

    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v1, v3

    iput v1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupX:I

    .line 1157
    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupY:I

    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v1, v3

    iput v1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupY:I

    .line 1158
    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupX:I

    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    add-int/2addr v1, v3

    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mCoordinates:[I

    aget v3, v3, v10

    add-int v8, v1, v3

    .line 1159
    .local v8, "x":I
    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupY:I

    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    add-int/2addr v1, v3

    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mCoordinates:[I

    aget v3, v3, v11

    add-int v9, v1, v3

    .line 1160
    .local v9, "y":I
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboard:Landroid/inputmethodservice/KeyboardView;

    if-gez v8, :cond_3

    move v1, v10

    :goto_2
    invoke-virtual {v3, v1, v9}, Landroid/inputmethodservice/KeyboardView;->setPopupOffset(II)V

    .line 1161
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboard:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->isShifted()Z

    move-result v3

    invoke-virtual {v1, v3}, Landroid/inputmethodservice/KeyboardView;->setShifted(Z)Z

    .line 1162
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 1163
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1164
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1165
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v1, p0, v10, v8, v9}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 1166
    iput-boolean v11, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardOnScreen:Z

    .line 1168
    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->invalidateAllKeys()V

    .line 1169
    return v11

    .line 1140
    .end local v8    # "x":I
    .end local v9    # "y":I
    .restart local v6    # "closeButton":Landroid/view/View;
    .restart local v7    # "inflater":Landroid/view/LayoutInflater;
    :cond_1
    new-instance v0, Landroid/inputmethodservice/Keyboard;

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;I)V

    .restart local v0    # "keyboard":Landroid/inputmethodservice/Keyboard;
    goto/16 :goto_0

    .line 1150
    .end local v0    # "keyboard":Landroid/inputmethodservice/Keyboard;
    .end local v6    # "closeButton":Landroid/view/View;
    .end local v7    # "inflater":Landroid/view/LayoutInflater;
    :cond_2
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/inputmethodservice/KeyboardView;

    iput-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboard:Landroid/inputmethodservice/KeyboardView;

    goto/16 :goto_1

    .restart local v8    # "x":I
    .restart local v9    # "y":I
    :cond_3
    move v1, v8

    .line 1160
    goto :goto_2

    .line 1171
    .end local v8    # "x":I
    .end local v9    # "y":I
    :cond_4
    return v10
.end method

.method public onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 600
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    if-nez v1, :cond_0

    .line 601
    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingLeft:I

    iget v2, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingRight:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingTop:I

    iget v3, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingBottom:I

    add-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/inputmethodservice/KeyboardView;->setMeasuredDimension(II)V

    .line 598
    :goto_0
    return-void

    .line 603
    :cond_0
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v1}, Landroid/inputmethodservice/Keyboard;->getMinWidth()I

    move-result v1

    iget v2, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingLeft:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingRight:I

    add-int v0, v1, v2

    .line 604
    .local v0, "width":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    add-int/lit8 v2, v0, 0xa

    if-ge v1, v2, :cond_1

    .line 605
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 607
    :cond_1
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v1}, Landroid/inputmethodservice/Keyboard;->getHeight()I

    move-result v1

    iget v2, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingTop:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingBottom:I

    add-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/inputmethodservice/KeyboardView;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/4 v1, 0x0

    .line 634
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 635
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    if-eqz v0, :cond_0

    .line 636
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v0, p1, p2}, Landroid/inputmethodservice/Keyboard;->resize(II)V

    .line 639
    :cond_0
    iput-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    .line 633
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v13, 0x1

    .line 1198
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v10

    .line 1199
    .local v10, "pointerCount":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    .line 1200
    .local v8, "action":I
    const/4 v11, 0x0

    .line 1201
    .local v11, "result":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    .line 1203
    .local v0, "now":J
    iget v2, p0, Landroid/inputmethodservice/KeyboardView;->mOldPointerCount:I

    if-eq v10, v2, :cond_2

    .line 1204
    if-ne v10, v13, :cond_1

    .line 1207
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v7

    move-wide v2, v0

    .line 1206
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v9

    .line 1208
    .local v9, "down":Landroid/view/MotionEvent;
    invoke-direct {p0, v9, v4}, Landroid/inputmethodservice/KeyboardView;->onModifiedTouchEvent(Landroid/view/MotionEvent;Z)Z

    move-result v11

    .line 1209
    .local v11, "result":Z
    invoke-virtual {v9}, Landroid/view/MotionEvent;->recycle()V

    .line 1211
    if-ne v8, v13, :cond_0

    .line 1212
    invoke-direct {p0, p1, v13}, Landroid/inputmethodservice/KeyboardView;->onModifiedTouchEvent(Landroid/view/MotionEvent;Z)Z

    move-result v11

    .line 1231
    .end local v9    # "down":Landroid/view/MotionEvent;
    .end local v11    # "result":Z
    :cond_0
    :goto_0
    iput v10, p0, Landroid/inputmethodservice/KeyboardView;->mOldPointerCount:I

    .line 1233
    return v11

    .line 1217
    .local v11, "result":Z
    :cond_1
    iget v5, p0, Landroid/inputmethodservice/KeyboardView;->mOldPointerX:F

    iget v6, p0, Landroid/inputmethodservice/KeyboardView;->mOldPointerY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v7

    move-wide v2, v0

    move v4, v13

    .line 1216
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v12

    .line 1218
    .local v12, "up":Landroid/view/MotionEvent;
    invoke-direct {p0, v12, v13}, Landroid/inputmethodservice/KeyboardView;->onModifiedTouchEvent(Landroid/view/MotionEvent;Z)Z

    move-result v11

    .line 1219
    .local v11, "result":Z
    invoke-virtual {v12}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_0

    .line 1222
    .end local v12    # "up":Landroid/view/MotionEvent;
    .local v11, "result":Z
    :cond_2
    if-ne v10, v13, :cond_3

    .line 1223
    invoke-direct {p0, p1, v4}, Landroid/inputmethodservice/KeyboardView;->onModifiedTouchEvent(Landroid/view/MotionEvent;Z)Z

    move-result v11

    .line 1224
    .local v11, "result":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Landroid/inputmethodservice/KeyboardView;->mOldPointerX:F

    .line 1225
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Landroid/inputmethodservice/KeyboardView;->mOldPointerY:F

    goto :goto_0

    .line 1228
    .local v11, "result":Z
    :cond_3
    const/4 v11, 0x1

    goto :goto_0
.end method

.method public setKeyboard(Landroid/inputmethodservice/Keyboard;)V
    .locals 3
    .param p1, "keyboard"    # Landroid/inputmethodservice/Keyboard;

    .prologue
    const/4 v2, 0x1

    .line 472
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    if-eqz v1, :cond_0

    .line 473
    const/4 v1, -0x1

    invoke-direct {p0, v1}, Landroid/inputmethodservice/KeyboardView;->showPreview(I)V

    .line 476
    :cond_0
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->removeMessages()V

    .line 477
    iput-object p1, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    .line 478
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v1}, Landroid/inputmethodservice/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v0

    .line 479
    .local v0, "keys":Ljava/util/List;, "Ljava/util/List<Landroid/inputmethodservice/Keyboard$Key;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/inputmethodservice/Keyboard$Key;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/inputmethodservice/Keyboard$Key;

    iput-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    .line 480
    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->requestLayout()V

    .line 482
    iput-boolean v2, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardChanged:Z

    .line 483
    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->invalidateAllKeys()V

    .line 484
    invoke-direct {p0, p1}, Landroid/inputmethodservice/KeyboardView;->computeProximityThreshold(Landroid/inputmethodservice/Keyboard;)V

    .line 485
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardCache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 488
    iput-boolean v2, p0, Landroid/inputmethodservice/KeyboardView;->mAbortKey:Z

    .line 471
    return-void
.end method

.method public setOnKeyboardActionListener(Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    .prologue
    .line 453
    iput-object p1, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    .line 452
    return-void
.end method

.method public setPopupOffset(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 557
    iput p1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardOffsetX:I

    .line 558
    iput p2, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardOffsetY:I

    .line 559
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 560
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 556
    :cond_0
    return-void
.end method

.method public setPopupParent(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 553
    iput-object p1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupParent:Landroid/view/View;

    .line 552
    return-void
.end method

.method public setPreviewEnabled(Z)V
    .locals 0
    .param p1, "previewEnabled"    # Z

    .prologue
    .line 537
    iput-boolean p1, p0, Landroid/inputmethodservice/KeyboardView;->mShowPreview:Z

    .line 536
    return-void
.end method

.method public setProximityCorrectionEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 571
    iput-boolean p1, p0, Landroid/inputmethodservice/KeyboardView;->mProximityCorrectOn:Z

    .line 570
    return-void
.end method

.method public setShifted(Z)Z
    .locals 1
    .param p1, "shifted"    # Z

    .prologue
    .line 507
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    if-eqz v0, :cond_0

    .line 508
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v0, p1}, Landroid/inputmethodservice/Keyboard;->setShifted(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 510
    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->invalidateAllKeys()V

    .line 511
    const/4 v0, 0x1

    return v0

    .line 514
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setVerticalCorrection(I)V
    .locals 0
    .param p1, "verticalOffset"    # I

    .prologue
    .line 549
    return-void
.end method

.method protected swipeDown()V
    .locals 1

    .prologue
    .line 1397
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    invoke-interface {v0}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->swipeDown()V

    .line 1396
    return-void
.end method

.method protected swipeLeft()V
    .locals 1

    .prologue
    .line 1389
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    invoke-interface {v0}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->swipeLeft()V

    .line 1388
    return-void
.end method

.method protected swipeRight()V
    .locals 1

    .prologue
    .line 1385
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    invoke-interface {v0}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->swipeRight()V

    .line 1384
    return-void
.end method

.method protected swipeUp()V
    .locals 1

    .prologue
    .line 1393
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    invoke-interface {v0}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->swipeUp()V

    .line 1392
    return-void
.end method
