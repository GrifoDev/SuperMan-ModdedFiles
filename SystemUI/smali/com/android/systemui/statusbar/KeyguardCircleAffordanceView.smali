.class public Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;
.super Lcom/android/systemui/statusbar/KeyguardAffordanceView;
.source "KeyguardCircleAffordanceView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$10;,
        Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$11;,
        Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$12;,
        Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$13;,
        Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$14;,
        Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$1;,
        Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$2;,
        Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$30;,
        Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$3;,
        Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$4;,
        Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$5;,
        Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$6;,
        Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$7;,
        Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$8;,
        Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$9;,
        Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;,
        Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$SkipShortcutVITouchHandler;,
        Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$TouchHandlePolicy;
    }
.end annotation


# static fields
.field private static mIsLockscreenRotatable:Z


# instance fields
.field private mAlphaAnimator:Landroid/animation/ValueAnimator;

.field private mAlphaEndListener:Landroid/animation/AnimatorListenerAdapter;

.field private mArrowContainer:Lcom/android/systemui/statusbar/AffordanceArrowContainer;

.field private mBlinkAnimator:Landroid/animation/ValueAnimator;

.field private mBlinkListener:Landroid/animation/AnimatorListenerAdapter;

.field private mCArrowAlpha:I

.field private mCArrowAlphaAnimator:Landroid/animation/ValueAnimator;

.field private mCArrowAlphaEnd:I

.field private mCArrowAlphaEndListener:Landroid/animation/AnimatorListenerAdapter;

.field private mCArrowAlphaStart:I

.field private mCArrowBitmap:Landroid/graphics/Bitmap;

.field private mCArrowDiagSize:F

.field private final mCArrowPaint:Landroid/graphics/Paint;

.field private mCArrowRect:Landroid/graphics/RectF;

.field private mCArrowScale:F

.field private mCArrowScaleAnimator:Landroid/animation/ValueAnimator;

.field private mCArrowScaleEnd:F

.field private mCArrowScaleEndListener:Landroid/animation/AnimatorListenerAdapter;

.field private mCArrowScaleStart:F

.field private mCenterX:I

.field private mCenterXOnScreen:I

.field private mCenterY:I

.field private mCenterYOnScreen:I

.field private mCircleAnimator:Landroid/animation/ValueAnimator;

.field private mCircleColor:I

.field private mCircleEndListener:Landroid/animation/AnimatorListenerAdapter;

.field private final mCirclePaint:Landroid/graphics/Paint;

.field private mCircleRadius:F

.field private mCircleStartRadius:F

.field private mCircleStartValue:F

.field private mCircleWillBeHidden:Z

.field private mClipDistance:F

.field private mClipEndListener:Landroid/animation/AnimatorListenerAdapter;

.field private final mColorInterpolator:Landroid/animation/ArgbEvaluator;

.field private mCubicEaseIn:Lcom/samsung/android/graphics/spr/animation/interpolator/CubicEaseIn;

.field private mCubicEaseOut:Lcom/samsung/android/graphics/spr/animation/interpolator/CubicEaseOut;

.field private mDCircleAlpha:I

.field private mDCircleAlphaAnimator:Landroid/animation/ValueAnimator;

.field private mDCircleAnimator:Landroid/animation/ValueAnimator;

.field private mDCircleEndAlpha:I

.field private mDCircleEndListener:Landroid/animation/AnimatorListenerAdapter;

.field private mDCircleMaxRadius:F

.field private final mDCirclePaint:Landroid/graphics/Paint;

.field private mDCircleRadius:F

.field private mDCircleStartAlpha:I

.field private mDeviceInteractive:Z

.field private mDisplay:Landroid/view/Display;

.field private mFinishing:Z

.field private mFling:Z

.field private mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

.field protected mHelperCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

.field private mHintAnimation:Z

.field private mHwCenterX:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mHwCenterY:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mHwCirclePaint:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty",
            "<",
            "Landroid/graphics/Paint;",
            ">;"
        }
    .end annotation
.end field

.field private mHwCircleRadius:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mIconAlphaAnimator:Landroid/animation/ValueAnimator;

.field private mIconAlphaEndListener:Landroid/animation/AnimatorListenerAdapter;

.field private mImageScale:F

.field private mInitialTouchX:F

.field private mInitialTouchY:F

.field private final mInverseColor:I

.field private mIsPainterReady:Z

.field private mIsSecure:Z

.field private mIsShortcutForPhone:Z

.field private mJustClicked:Z

.field private mLaunchingAffordance:Z

.field private mMaxCircleSize:F

.field private mMaxRadius:F

.field private final mMinBackgroundRadius:I

.field private final mNormalColor:I

.field private mOldDistance:F

.field private mPaintColor:Landroid/graphics/Paint;

.field private mPaintPreview:Landroid/graphics/Paint;

.field private mPreviewAlphaShrinkEndListener:Landroid/animation/AnimatorListenerAdapter;

.field private mPreviewClipEndListener:Landroid/animation/AnimatorListenerAdapter;

.field private mPreviewClipRect:Landroid/graphics/RectF;

.field private mPreviewClipper:Landroid/animation/Animator;

.field private mPreviewColor:I

.field private mPreviewShrinkEndListener:Landroid/animation/AnimatorListenerAdapter;

.field private mPreviewShrinker:Landroid/animation/ValueAnimator;

.field private mPreviewShrinkerAlpha:Landroid/animation/ValueAnimator;

.field private mPreviewView:Landroid/view/View;

.field private mRadiusEnd:F

.field private mRadiusStart:F

.field private mRestingAlpha:F

.field private mReveal:Z

.field private mRight:Z

.field private mScaleAnimator:Landroid/animation/ValueAnimator;

.field private mScaleEndListener:Landroid/animation/AnimatorListenerAdapter;

.field private mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field private mShaderPreview:Z

.field private mShortcutCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field private mShortcutForCamera:Z

.field private mSineIn33:Landroid/view/animation/Interpolator;

.field private mSineOut33:Landroid/view/animation/Interpolator;

.field private mStoppingAndHiding:Z

.field private mSupportHardware:Z

.field private mTempPoint:[I

.field private mTouchCancelled:Z

.field private mTouchHandler:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$TouchHandlePolicy;

.field private mTrusted:Z

.field private mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

.field mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Lcom/android/systemui/statusbar/AffordanceArrowContainer;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mArrowContainer:Lcom/android/systemui/statusbar/AffordanceArrowContainer;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/animation/ValueAnimator;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mBlinkAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mFling:Z

    return v0
.end method

.method static synthetic -get11(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mHintAnimation:Z

    return v0
.end method

.method static synthetic -get12(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mInitialTouchX:F

    return v0
.end method

.method static synthetic -get13(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mInitialTouchY:F

    return v0
.end method

.method static synthetic -get14(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mJustClicked:Z

    return v0
.end method

.method static synthetic -get15(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPaintColor:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic -get16(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewClipRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic -get17(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/animation/ValueAnimator;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewShrinker:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic -get18(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/animation/ValueAnimator;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewShrinkerAlpha:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic -get19(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowAlpha:I

    return v0
.end method

.method static synthetic -get20(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mReveal:Z

    return v0
.end method

.method static synthetic -get21(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mRight:Z

    return v0
.end method

.method static synthetic -get22(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Lcom/android/systemui/util/SettingsHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    return-object v0
.end method

.method static synthetic -get23(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mShaderPreview:Z

    return v0
.end method

.method static synthetic -get24(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mShortcutForCamera:Z

    return v0
.end method

.method static synthetic -get25(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mTouchCancelled:Z

    return v0
.end method

.method static synthetic -get26(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Lcom/android/systemui/statusbar/phone/UnlockMethodCache;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/animation/ValueAnimator;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowAlphaAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/animation/ValueAnimator;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowScaleAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic -get6()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/animation/ValueAnimator;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleAlphaAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/animation/ValueAnimator;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCirclePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mBlinkAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic -set10(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleAlphaAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic -set11(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic -set12(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;F)F
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleRadius:F

    return p1
.end method

.method static synthetic -set13(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDeviceInteractive:Z

    return p1
.end method

.method static synthetic -set14(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mFinishing:Z

    return p1
.end method

.method static synthetic -set15(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mFling:Z

    return p1
.end method

.method static synthetic -set16(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mHintAnimation:Z

    return p1
.end method

.method static synthetic -set17(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mIconAlphaAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic -set18(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;F)F
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mImageScale:F

    return p1
.end method

.method static synthetic -set19(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;F)F
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mInitialTouchX:F

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowAlpha:I

    return p1
.end method

.method static synthetic -set20(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;F)F
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mInitialTouchY:F

    return p1
.end method

.method static synthetic -set21(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mIsSecure:Z

    return p1
.end method

.method static synthetic -set22(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mJustClicked:Z

    return p1
.end method

.method static synthetic -set23(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;F)F
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mOldDistance:F

    return p1
.end method

.method static synthetic -set24(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewClipper:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic -set25(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewShrinker:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic -set26(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewShrinkerAlpha:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic -set27(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mScaleAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic -set28(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mStoppingAndHiding:Z

    return p1
.end method

.method static synthetic -set29(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mTouchCancelled:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowAlphaAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic -set30(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mTrusted:Z

    return p1
.end method

.method static synthetic -set4(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;F)F
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowScale:F

    return p1
.end method

.method static synthetic -set5(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowScaleAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic -set6(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic -set7(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;F)F
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCircleRadius:F

    return p1
.end method

.method static synthetic -set8(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;F)F
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mClipDistance:F

    return p1
.end method

.method static synthetic -set9(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleAlpha:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->isSecure()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->cancelAllAnimators()V

    return-void
.end method

.method static synthetic -wrap10(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setDCircleAlphaAnimator(Z)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setDCircleAnimator(Z)V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setPreviewAlphaShrinker()V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setPreviewClipRect(F)V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setPreviewColor(F)V

    return-void
.end method

.method static synthetic -wrap15(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setPreviewShrinker(Z)V

    return-void
.end method

.method static synthetic -wrap16(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->showHideCArrow(F)V

    return-void
.end method

.method static synthetic -wrap17(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->trackMovement(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic -wrap18(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->updateIconColor()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Landroid/animation/Animator;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->cancelAnimator(Landroid/animation/Animator;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->dispatchCancelEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;FF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->endMotion(FF)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->initAnimatedValues()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->initVelocityTracker()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setArrowImageAlpha(I)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setCArrowAnimator(Z)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setCArrowBlinker()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mIsLockscreenRotatable:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 11

    const v7, 0x3e2e147b    # 0.17f

    const/4 v9, 0x0

    const/4 v4, 0x1

    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDeviceInteractive:Z

    iput-boolean v10, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mTouchCancelled:Z

    iput v9, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mOldDistance:F

    iput-boolean v10, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mIsPainterReady:Z

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewClipRect:Landroid/graphics/RectF;

    iput-object v8, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPaintPreview:Landroid/graphics/Paint;

    const/high16 v3, -0x40800000    # -1.0f

    iput v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mMaxRadius:F

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mImageScale:F

    iput-boolean v10, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mRight:Z

    iput-boolean v10, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mJustClicked:Z

    iput-boolean v10, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mHintAnimation:Z

    iput-boolean v10, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mShaderPreview:Z

    iput-boolean v10, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mIsShortcutForPhone:Z

    new-instance v3, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$1;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mShortcutCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    const/4 v3, 0x2

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mTempPoint:[I

    const/high16 v3, 0x3f000000    # 0.5f

    iput v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mRestingAlpha:F

    new-instance v3, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$2;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$2;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mClipEndListener:Landroid/animation/AnimatorListenerAdapter;

    new-instance v3, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$3;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$3;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCircleEndListener:Landroid/animation/AnimatorListenerAdapter;

    new-instance v3, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$4;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$4;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleEndListener:Landroid/animation/AnimatorListenerAdapter;

    new-instance v3, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$5;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$5;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mAlphaEndListener:Landroid/animation/AnimatorListenerAdapter;

    new-instance v3, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$6;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$6;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mIconAlphaEndListener:Landroid/animation/AnimatorListenerAdapter;

    new-instance v3, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$7;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$7;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowScaleEndListener:Landroid/animation/AnimatorListenerAdapter;

    new-instance v3, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$8;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$8;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowAlphaEndListener:Landroid/animation/AnimatorListenerAdapter;

    new-instance v3, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$9;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$9;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewShrinkEndListener:Landroid/animation/AnimatorListenerAdapter;

    new-instance v3, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$10;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$10;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewAlphaShrinkEndListener:Landroid/animation/AnimatorListenerAdapter;

    new-instance v3, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$11;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$11;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewClipEndListener:Landroid/animation/AnimatorListenerAdapter;

    new-instance v3, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$12;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$12;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mScaleEndListener:Landroid/animation/AnimatorListenerAdapter;

    new-instance v3, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$13;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$13;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mBlinkListener:Landroid/animation/AnimatorListenerAdapter;

    iput-boolean v10, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mStoppingAndHiding:Z

    new-instance v3, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$14;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$14;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    const-string/jumbo v3, "SEP"

    sget-object v5, Lcom/android/systemui/Rune;->KEYWI_VALUE_SHORTCUT_STYLE:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iput-object v8, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCirclePaint:Landroid/graphics/Paint;

    iput-object v8, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mColorInterpolator:Landroid/animation/ArgbEvaluator;

    iput v10, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mInverseColor:I

    iput v10, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mMinBackgroundRadius:I

    iput v10, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mNormalColor:I

    sput-object p1, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCirclePaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/util/SettingsHelper;->isWhiteKeyguardWallpaper()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0601d1

    invoke-virtual {v3, v5, v8}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowPaint:Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v0, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v5, 0x3f2b851f    # 0.67f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v3, v7, v7, v5, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mSineOut33:Landroid/view/animation/Interpolator;

    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v5, 0x3ea8f5c3    # 0.33f

    const v6, 0x3f547ae1    # 0.83f

    const v7, 0x3f547ae1    # 0.83f

    invoke-direct {v3, v5, v9, v6, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mSineIn33:Landroid/view/animation/Interpolator;

    new-instance v3, Lcom/samsung/android/graphics/spr/animation/interpolator/CubicEaseIn;

    invoke-direct {v3}, Lcom/samsung/android/graphics/spr/animation/interpolator/CubicEaseIn;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCubicEaseIn:Lcom/samsung/android/graphics/spr/animation/interpolator/CubicEaseIn;

    new-instance v3, Lcom/samsung/android/graphics/spr/animation/interpolator/CubicEaseOut;

    invoke-direct {v3}, Lcom/samsung/android/graphics/spr/animation/interpolator/CubicEaseOut;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCubicEaseOut:Lcom/samsung/android/graphics/spr/animation/interpolator/CubicEaseOut;

    sget-object v3, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f080413

    invoke-virtual {v3, v5, v8}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowBitmap:Landroid/graphics/Bitmap;

    sget-object v3, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0701cd

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    const v5, 0x3edeb852    # 0.435f

    mul-float/2addr v3, v5

    iget-object v5, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float v2, v3, v5

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-double v6, v3

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-double v8, v3

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    double-to-float v3, v6

    mul-float/2addr v3, v2

    iput v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowDiagSize:F

    sget-object v3, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0701f8

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleMaxRadius:F

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPaintPreview:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPaintColor:Landroid/graphics/Paint;

    new-instance v3, Lcom/android/systemui/statusbar/FlingAnimationUtils;

    sget-object v5, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mContext:Landroid/content/Context;

    const v6, 0x3ecccccd    # 0.4f

    invoke-direct {v3, v5, v6}, Lcom/android/systemui/statusbar/FlingAnimationUtils;-><init>(Landroid/content/Context;F)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    new-instance v5, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$15;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$15;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    invoke-virtual {v3, v5}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->addListener(Lcom/android/systemui/statusbar/phone/UnlockMethodCache$OnUnlockMethodChangedListener;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isMethodSecure()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mIsSecure:Z

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isTrusted()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mTrusted:Z

    sget-object v3, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "window"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDisplay:Landroid/view/Display;

    const-string/jumbo v3, "lockscreen.rot_override"

    invoke-static {v3, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f05000b

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    :goto_1
    sput-boolean v3, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mIsLockscreenRotatable:Z

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object v5, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mShortcutCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    new-array v4, v4, [Landroid/net/Uri;

    const-string/jumbo v6, "white_lockscreen_wallpaper"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    aput-object v6, v4, v10

    invoke-virtual {v3, v5, v4}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    :goto_2
    return-void

    :cond_0
    sget-object v3, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0601d0

    invoke-virtual {v3, v5, v8}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    goto/16 :goto_0

    :cond_1
    move v3, v4

    goto :goto_1

    :cond_2
    iput-object v8, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowPaint:Landroid/graphics/Paint;

    iput v9, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleMaxRadius:F

    iput-object v8, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCirclePaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCirclePaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v3, -0x1

    iput v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCircleColor:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCirclePaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCircleColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v3, -0x1

    iput v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mNormalColor:I

    const/high16 v3, -0x1000000

    iput v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mInverseColor:I

    sget-object v3, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0701cb

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mMinBackgroundRadius:I

    new-instance v3, Landroid/animation/ArgbEvaluator;

    invoke-direct {v3}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mColorInterpolator:Landroid/animation/ArgbEvaluator;

    new-instance v3, Lcom/android/systemui/statusbar/FlingAnimationUtils;

    sget-object v4, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mContext:Landroid/content/Context;

    const v5, 0x3e99999a    # 0.3f

    invoke-direct {v3, v4, v5}, Lcom/android/systemui/statusbar/FlingAnimationUtils;-><init>(Landroid/content/Context;F)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    goto :goto_2
.end method

.method private cancelAllAnimators()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleAnimator:Landroid/animation/ValueAnimator;

    const-string/jumbo v1, "mCircleAnimator"

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->cancelAnimator(Landroid/animation/Animator;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleAlphaAnimator:Landroid/animation/ValueAnimator;

    const-string/jumbo v1, "mAlphaAnimator"

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->cancelAnimator(Landroid/animation/Animator;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mIconAlphaAnimator:Landroid/animation/ValueAnimator;

    const-string/jumbo v1, "mIconAlphaAnimator"

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->cancelAnimator(Landroid/animation/Animator;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowScaleAnimator:Landroid/animation/ValueAnimator;

    const-string/jumbo v1, "mCArrowScaleAnimator"

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->cancelAnimator(Landroid/animation/Animator;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowAlphaAnimator:Landroid/animation/ValueAnimator;

    const-string/jumbo v1, "mCArrowAlphaAnimator"

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->cancelAnimator(Landroid/animation/Animator;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewShrinker:Landroid/animation/ValueAnimator;

    const-string/jumbo v1, "mPreviewShrinker"

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->cancelAnimator(Landroid/animation/Animator;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mBlinkAnimator:Landroid/animation/ValueAnimator;

    const-string/jumbo v1, "mBlinkAnimator"

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->cancelAnimator(Landroid/animation/Animator;Ljava/lang/String;)V

    return-void
.end method

.method private cancelAnimator(Landroid/animation/Animator;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    :cond_0
    return-void
.end method

.method private cancelAnimator(Landroid/animation/Animator;Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    const-string/jumbo v0, "mCircleAnimator"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "KeyguardCircleAffordanceView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mCircleAnimator:mCircleRadius="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleRadius:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "mAlphaAnimator"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "KeyguardCircleAffordanceView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mAlphaAnimator:mAlpha="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleAlpha:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "mTranslateAnimator"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "KeyguardCircleAffordanceView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mCArrowAnimator:mCArrowScale="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowScale:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "mPreviewShrinker"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "KeyguardCircleAffordanceView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mPreviewShrinker:mPreviewClipRect="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewClipRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "mBlinkAnimator"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "KeyguardCircleAffordanceView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mBlinkAnimator:alpha="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private checkIfShaderReady()V
    .locals 10

    const/4 v9, 0x1

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewView:Landroid/view/View;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    sget-boolean v1, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mIsLockscreenRotatable:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mShortcutForCamera:Z

    if-eqz v1, :cond_3

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v8

    const/4 v1, 0x2

    if-eq v8, v1, :cond_2

    const/4 v1, 0x3

    if-ne v8, v1, :cond_3

    :cond_2
    const/high16 v1, 0x43340000    # 180.0f

    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    :try_start_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPaintPreview:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/BitmapShader;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v2, v0, v3, v4}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPaintPreview:Landroid/graphics/Paint;

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iput-boolean v9, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mIsPainterReady:Z

    return-void

    :catch_0
    move-exception v7

    const-string/jumbo v1, "KeyguardCircleAffordanceView"

    const-string/jumbo v2, "OOM while creating camera preview bitmap"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private dispatchCancelEvent(Landroid/view/MotionEvent;)V
    .locals 2

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method private draw4CornerArrows(Landroid/graphics/Canvas;)V
    .locals 4

    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowScale:F

    const v1, 0x3dcccccd    # 0.1f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowScale:F

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowScale:F

    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterX:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterX:I

    int-to-float v3, v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawBackgroundCircle(Landroid/graphics/Canvas;)V
    .locals 5

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCircleRadius:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mFinishing:Z

    if-eqz v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mFinishing:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mSupportHardware:Z

    if-eqz v1, :cond_2

    move-object v0, p1

    check-cast v0, Landroid/view/DisplayListCanvas;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mHwCenterX:Landroid/graphics/CanvasProperty;

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mHwCenterY:Landroid/graphics/CanvasProperty;

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mHwCircleRadius:Landroid/graphics/CanvasProperty;

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mHwCirclePaint:Landroid/graphics/CanvasProperty;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/DisplayListCanvas;->drawCircle(Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->updateCircleColor()V

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterY:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCircleRadius:F

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private drawCircle(Landroid/graphics/Canvas;)V
    .locals 4

    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleRadius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCirclePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterY:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleRadius:F

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private drawPreviewCircle(Landroid/graphics/Canvas;)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mShaderPreview:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mIsPainterReady:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterXOnScreen:I

    neg-int v0, v0

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterX:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterYOnScreen:I

    neg-int v1, v1

    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterY:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewClipRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPaintPreview:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterXOnScreen:I

    neg-int v0, v0

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterX:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterYOnScreen:I

    neg-int v1, v1

    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterY:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewClipRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPaintColor:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method private endMotion(FF)V
    .locals 9

    const/4 v8, 0x0

    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mInitialTouchX:F

    sub-float v1, p1, v3

    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mInitialTouchY:F

    sub-float v2, p2, v3

    float-to-double v4, v1

    float-to-double v6, v2

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    double-to-float v0, v4

    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleMaxRadius:F

    cmpl-float v3, v0, v3

    if-lez v3, :cond_1

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDeviceInteractive:Z

    if-eqz v3, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->revealOrVeil(FF)V

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->recycle()V

    iput-object v8, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mHelperCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->onSwipingAborted()V

    goto :goto_0
.end method

.method private getAnimatorToRadius(F)Landroid/animation/ValueAnimator;
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string/jumbo v3, "SEP"

    sget-object v4, Lcom/android/systemui/Rune;->KEYWI_VALUE_SHORTCUT_STYLE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    const/4 v3, 0x2

    new-array v3, v3, [F

    iget v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCircleRadius:F

    aput v4, v3, v2

    aput p1, v3, v1

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCircleRadius:F

    iput v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCircleStartValue:F

    const/4 v3, 0x0

    cmpl-float v3, p1, v3

    if-nez v3, :cond_1

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCircleWillBeHidden:Z

    new-instance v1, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$33;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$33;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCircleEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method private getCurrentVelocity(FF)F
    .locals 10

    iget-object v6, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v6, :cond_0

    const/4 v6, 0x0

    return v6

    :cond_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v7, 0x3e8

    invoke-virtual {v6, v7}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    iget-object v6, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    iget-object v6, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v1

    iget v6, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mInitialTouchX:F

    sub-float v3, p1, v6

    iget v6, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mInitialTouchY:F

    sub-float v4, p2, v6

    float-to-double v6, v3

    float-to-double v8, v4

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    double-to-float v2, v6

    mul-float v6, v0, v3

    mul-float v7, v1, v4

    add-float/2addr v6, v7

    div-float v5, v6, v2

    return v5
.end method

.method private getEndListener(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$27;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$27;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Ljava/lang/Runnable;)V

    return-object v0
.end method

.method private getMaxCircleSize()F
    .locals 8

    const-string/jumbo v4, "SEP"

    sget-object v5, Lcom/android/systemui/Rune;->KEYWI_VALUE_SHORTCUT_STYLE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x2

    new-array v1, v4, [I

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mTempPoint:[I

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->getLocationInWindow([I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->getRootView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v2, v4

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mTempPoint:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    iget v5, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterX:I

    add-int/2addr v4, v5

    int-to-float v3, v4

    sub-float v4, v2, v3

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mTempPoint:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    iget v5, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterY:I

    add-int/2addr v4, v5

    int-to-float v0, v4

    float-to-double v4, v3

    float-to-double v6, v0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    double-to-float v4, v4

    return v4
.end method

.method private getRtAnimatorToRadius(F)Landroid/animation/Animator;
    .locals 2

    new-instance v0, Landroid/view/RenderNodeAnimator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mHwCircleRadius:Landroid/graphics/CanvasProperty;

    invoke-direct {v0, v1, p1}, Landroid/view/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;F)V

    invoke-virtual {v0, p0}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    return-object v0
.end method

.method private initAnimatedValues()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mHintAnimation:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mFling:Z

    iput v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowScale:F

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewClipRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPaintColor:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method private initHwProperties()V
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterX:I

    int-to-float v0, v0

    invoke-static {v0}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mHwCenterX:Landroid/graphics/CanvasProperty;

    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterY:I

    int-to-float v0, v0

    invoke-static {v0}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mHwCenterY:Landroid/graphics/CanvasProperty;

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCirclePaint:Landroid/graphics/Paint;

    invoke-static {v0}, Landroid/graphics/CanvasProperty;->createPaint(Landroid/graphics/Paint;)Landroid/graphics/CanvasProperty;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mHwCirclePaint:Landroid/graphics/CanvasProperty;

    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCircleRadius:F

    invoke-static {v0}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mHwCircleRadius:Landroid/graphics/CanvasProperty;

    return-void
.end method

.method private initVelocityTracker()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    :cond_0
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mVelocityTracker:Landroid/view/VelocityTracker;

    return-void
.end method

.method private isInCallForOnlyTablet()Z
    .locals 2

    sget-boolean v1, Lcom/android/systemui/Rune;->IS_TABLET_DEVICE:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mIsShortcutForPhone:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private isSecure()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mIsSecure:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mTrusted:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_ATT_LOCK_TIMEOUT:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSwipeLockBeforeTimeout()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private revealOrVeil(FF)V
    .locals 7

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->getCurrentVelocity(FF)F

    move-result v6

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mFling:Z

    const-string/jumbo v0, "KeyguardCircleAffordanceView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "revealOrVeil currentVelocity="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v0, -0x3a860000    # -4000.0f

    cmpl-float v0, v6, v0

    if-lez v0, :cond_1

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mReveal:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->isInCallForOnlyTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mReveal:Z

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mFling:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mHelperCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mRight:Z

    move v3, v2

    move v5, v4

    invoke-interface/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->onAnimationToSideStarted(ZFFZZ)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mHelperCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->onAnimationToSideEnded()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->revealWithCurrentVelocity(F)V

    goto :goto_0

    :cond_1
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mReveal:Z

    neg-float v0, v6

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->veilWithCurrentVelocity(F)V

    goto :goto_0
.end method

.method private revealWithCurrentVelocity(F)V
    .locals 8

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mShaderPreview:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mHelperCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mRight:Z

    move v3, p1

    move v5, v4

    invoke-interface/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->onAnimationToSideStarted(ZFFZZ)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewView:Landroid/view/View;

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterXOnScreen:I

    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterYOnScreen:I

    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mClipDistance:F

    iget v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mMaxRadius:F

    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewClipper:Landroid/animation/Animator;

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewClipper:Landroid/animation/Animator;

    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mClipDistance:F

    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mMaxRadius:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mMaxRadius:F

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->applyDismissing(Landroid/animation/Animator;FFFF)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewClipper:Landroid/animation/Animator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewClipEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewClipper:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mHelperCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->onAnimationToSideEnded()V

    :goto_0
    return-void

    :cond_1
    const-wide/16 v4, 0xc8

    const/4 v3, 0x1

    move-object v1, p0

    move-object v7, v6

    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setImageAlpha(FZJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mClipDistance:F

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mMaxRadius:F

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setPreviewColorRevealer(FF)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setDCircleAlphaAnimatorInSecured()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewClipper:Landroid/animation/Animator;

    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mClipDistance:F

    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mMaxRadius:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mMaxRadius:F

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->applyDismissing(Landroid/animation/Animator;FFFF)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewClipper:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mHelperCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->startPhoneLaunchAnimationInSecured()V

    goto :goto_0
.end method

.method private setArrowImageAlpha(I)V
    .locals 1

    sget-boolean v0, Lcom/android/systemui/Rune;->KEYWI_SUPPORT_SHORTCUT_CUE:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mArrowContainer:Lcom/android/systemui/statusbar/AffordanceArrowContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mArrowContainer:Lcom/android/systemui/statusbar/AffordanceArrowContainer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/AffordanceArrowContainer;->isAnimationPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mArrowContainer:Lcom/android/systemui/statusbar/AffordanceArrowContainer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/AffordanceArrowContainer;->setImageAlpha(I)V

    :cond_0
    return-void
.end method

.method private setCArrowAlphaAnimator(ZZ)V
    .locals 5

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowAlpha:I

    iput v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowAlphaStart:I

    const/16 v1, 0xff

    iput v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowAlphaEnd:I

    :goto_0
    const-string/jumbo v1, "KeyguardCircleAffordanceView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setCArrowAlphaAnimator:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowAlphaStart:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowAlphaEnd:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    new-array v1, v1, [I

    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowAlphaStart:I

    aput v2, v1, v4

    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowAlphaEnd:I

    const/4 v3, 0x1

    aput v2, v1, v3

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowAlphaAnimator:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_1

    const-wide/16 v2, 0x96

    :goto_1
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mSineOut33:Landroid/view/animation/Interpolator;

    :goto_2
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$19;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$19;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowAlphaEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowAlpha:I

    iput v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowAlphaStart:I

    iput v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowAlphaEnd:I

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x15e

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mSineIn33:Landroid/view/animation/Interpolator;

    goto :goto_2
.end method

.method private setCArrowAnimator(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setCArrowScaleAnimator(ZZ)V

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setCArrowAlphaAnimator(ZZ)V

    return-void
.end method

.method private setCArrowBlinker()V
    .locals 4

    const-string/jumbo v1, "KeyguardCircleAffordanceView"

    const-string/jumbo v2, "setArrowBlinker:"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0xff

    const/4 v2, 0x0

    filled-new-array {v1, v2}, [I

    move-result-object v1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mBlinkAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    new-instance v1, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$22;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$22;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mBlinkListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private setCArrowScaleAnimator(ZZ)V
    .locals 4

    if-eqz p1, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowScale:F

    iput v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowScaleStart:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowScaleEnd:F

    :goto_0
    const-string/jumbo v1, "KeyguardCircleAffordanceView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setCArrowScaleAnimator:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowScaleStart:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowScaleEnd:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    new-array v1, v1, [F

    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowScaleStart:F

    const/4 v3, 0x0

    aput v2, v1, v3

    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowScaleEnd:F

    const/4 v3, 0x1

    aput v2, v1, v3

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowScaleAnimator:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_1

    const-wide/16 v2, 0x96

    :goto_1
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCubicEaseOut:Lcom/samsung/android/graphics/spr/animation/interpolator/CubicEaseOut;

    :goto_2
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$18;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$18;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowScaleEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowScale:F

    iput v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowScaleStart:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowScaleEnd:F

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x15e

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCubicEaseIn:Lcom/samsung/android/graphics/spr/animation/interpolator/CubicEaseIn;

    goto :goto_2
.end method

.method private setCircleRadius(FZZ)V
    .locals 14

    const-string/jumbo v10, "GED"

    sget-object v11, Lcom/android/systemui/Rune;->KEYWI_VALUE_SHORTCUT_STYLE:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    if-eqz v10, :cond_0

    iget-boolean v10, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCircleWillBeHidden:Z

    if-nez v10, :cond_2

    :cond_0
    iget-object v10, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    if-nez v10, :cond_3

    iget v10, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCircleRadius:F

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-nez v10, :cond_3

    const/4 v7, 0x1

    :goto_0
    const/4 v10, 0x0

    cmpl-float v10, p1, v10

    if-nez v10, :cond_4

    const/4 v6, 0x1

    :goto_1
    if-eq v7, v6, :cond_5

    xor-int/lit8 v8, p3, 0x1

    :goto_2
    if-nez v8, :cond_7

    iget-object v10, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    if-nez v10, :cond_6

    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCircleRadius:F

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->updateIconColor()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->invalidate()V

    if-eqz v6, :cond_1

    iget-object v10, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewView:Landroid/view/View;

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewView:Landroid/view/View;

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_3
    return-void

    :cond_2
    const/4 v7, 0x1

    goto :goto_0

    :cond_3
    const/4 v7, 0x0

    goto :goto_0

    :cond_4
    const/4 v6, 0x0

    goto :goto_1

    :cond_5
    const/4 v8, 0x0

    goto :goto_2

    :cond_6
    iget-boolean v10, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCircleWillBeHidden:Z

    if-nez v10, :cond_1

    iget v10, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mMinBackgroundRadius:I

    int-to-float v10, v10

    sub-float v1, p1, v10

    iget-object v10, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v10}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v10, v9, v10

    const/4 v11, 0x2

    new-array v11, v11, [F

    iget v12, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCircleStartValue:F

    add-float/2addr v12, v1

    const/4 v13, 0x0

    aput v12, v11, v13

    const/4 v12, 0x1

    aput p1, v11, v12

    invoke-virtual {v10, v11}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    iget-object v10, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    iget-object v11, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v11}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    goto :goto_3

    :cond_7
    iget-object v10, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v10}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->cancelAnimator(Landroid/animation/Animator;)V

    iget-object v10, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewClipper:Landroid/animation/Animator;

    invoke-direct {p0, v10}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->cancelAnimator(Landroid/animation/Animator;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->getAnimatorToRadius(F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const/4 v10, 0x0

    cmpl-float v10, p1, v10

    if-nez v10, :cond_9

    sget-object v5, Lcom/android/systemui/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    :goto_4
    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0xfa

    if-nez p2, :cond_8

    iget v10, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCircleRadius:F

    sub-float/2addr v10, p1

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    iget v11, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mMinBackgroundRadius:I

    int-to-float v11, v11

    div-float v4, v10, v11

    const/high16 v10, 0x42a00000    # 80.0f

    mul-float/2addr v10, v4

    float-to-long v2, v10

    const-wide/16 v10, 0xc8

    invoke-static {v2, v3, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    :cond_8
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iget-object v10, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewView:Landroid/view/View;

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-nez v10, :cond_1

    iget-object v10, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewView:Landroid/view/View;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    iget-object v10, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->getLeft()I

    move-result v11

    iget v12, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterX:I

    add-int/2addr v11, v12

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->getTop()I

    move-result v12

    iget v13, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterY:I

    add-int/2addr v12, v13

    iget v13, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCircleRadius:F

    invoke-static {v10, v11, v12, v13, p1}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v10

    iput-object v10, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewClipper:Landroid/animation/Animator;

    iget-object v10, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewClipper:Landroid/animation/Animator;

    invoke-virtual {v10, v5}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v10, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewClipper:Landroid/animation/Animator;

    invoke-virtual {v10, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget-object v10, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewClipper:Landroid/animation/Animator;

    iget-object v11, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mClipEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v10, v11}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v10, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewClipper:Landroid/animation/Animator;

    new-instance v11, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$32;

    invoke-direct {v11, p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$32;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    invoke-virtual {v10, v11}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v10, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewClipper:Landroid/animation/Animator;

    invoke-virtual {v10}, Landroid/animation/Animator;->start()V

    goto/16 :goto_3

    :cond_9
    sget-object v5, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    goto :goto_4
.end method

.method private setDCircleAlphaAnimator(Z)V
    .locals 5

    const/4 v4, 0x0

    if-eqz p1, :cond_1

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleAlpha:I

    iput v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleStartAlpha:I

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isWhiteKeyguardWallpaper()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x29

    :goto_0
    iput v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleEndAlpha:I

    :goto_1
    const-string/jumbo v1, "KeyguardCircleAffordanceView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDCircleAlphaAnimator:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleStartAlpha:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleEndAlpha:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    new-array v1, v1, [I

    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleStartAlpha:I

    aput v2, v1, v4

    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleEndAlpha:I

    const/4 v3, 0x1

    aput v2, v1, v3

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleAlphaAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mSineOut33:Landroid/view/animation/Interpolator;

    :goto_2
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$17;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$17;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mAlphaEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :cond_0
    const/16 v1, 0x59

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleAlpha:I

    iput v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleStartAlpha:I

    iput v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleEndAlpha:I

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mSineIn33:Landroid/view/animation/Interpolator;

    goto :goto_2
.end method

.method private setDCircleAlphaAnimatorInSecured()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleAlphaAnimator:Landroid/animation/ValueAnimator;

    const-string/jumbo v1, "mDCircleAlphaAnimator"

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->cancelAnimator(Landroid/animation/Animator;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setDCircleAlphaAnimator(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleAlphaAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-void
.end method

.method private setDCircleAnimator(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setDCircleAnimator(ZZ)V

    return-void
.end method

.method private setDCircleAnimator(ZZ)V
    .locals 4

    if-eqz p1, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleRadius:F

    iput v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mRadiusStart:F

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleMaxRadius:F

    iput v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mRadiusEnd:F

    :goto_0
    const-string/jumbo v1, "KeyguardCircleAffordanceView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDCircleAnimator:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mRadiusStart:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mRadiusEnd:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    new-array v1, v1, [F

    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mRadiusStart:F

    const/4 v3, 0x0

    aput v2, v1, v3

    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mRadiusEnd:F

    const/4 v3, 0x1

    aput v2, v1, v3

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleAnimator:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_1

    const-wide/16 v2, 0x96

    :goto_1
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCubicEaseOut:Lcom/samsung/android/graphics/spr/animation/interpolator/CubicEaseOut;

    :goto_2
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$16;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$16;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleRadius:F

    iput v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mRadiusStart:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mRadiusEnd:F

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x15e

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCubicEaseIn:Lcom/samsung/android/graphics/spr/animation/interpolator/CubicEaseIn;

    goto :goto_2
.end method

.method private setPreviewAlphaShrinker()V
    .locals 4

    const/4 v3, 0x0

    const/4 v1, 0x2

    new-array v1, v1, [I

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPaintColor:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    aput v2, v1, v3

    const/4 v2, 0x1

    aput v3, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewShrinkerAlpha:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mSineIn33:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$21;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$21;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewAlphaShrinkEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private setPreviewClipRect(F)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewClipRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterXOnScreen:I

    int-to-float v1, v1

    sub-float/2addr v1, p1

    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterYOnScreen:I

    int-to-float v2, v2

    sub-float/2addr v2, p1

    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterXOnScreen:I

    int-to-float v3, v3

    add-float/2addr v3, p1

    iget v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterYOnScreen:I

    int-to-float v4, v4

    add-float/2addr v4, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method private setPreviewColor(F)V
    .locals 7

    const/high16 v6, 0x437f0000    # 255.0f

    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->isSecure()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleMaxRadius:F

    div-float/2addr v1, v5

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleMaxRadius:F

    div-float v0, p1, v1

    :goto_0
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPaintColor:Landroid/graphics/Paint;

    mul-float v2, v0, v6

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    :goto_1
    return-void

    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleMaxRadius:F

    cmpg-float v1, p1, v1

    if-gez v1, :cond_1

    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleMaxRadius:F

    sub-float v1, p1, v1

    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mMaxRadius:F

    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleMaxRadius:F

    sub-float/2addr v2, v3

    div-float/2addr v1, v2

    add-float/2addr v1, v4

    div-float v0, v1, v5

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isWhiteKeyguardWallpaper()Z

    move-result v1

    if-eqz v1, :cond_3

    const v0, 0x3dcccccd    # 0.1f

    :goto_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPaintColor:Landroid/graphics/Paint;

    mul-float v2, v0, v6

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_1

    :cond_3
    const v0, 0x3e4ccccd    # 0.2f

    goto :goto_2
.end method

.method private setPreviewColorRevealer(FF)V
    .locals 4

    const-string/jumbo v1, "KeyguardCircleAffordanceView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPreviewColorRevealer:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewClipper:Landroid/animation/Animator;

    new-instance v1, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$23;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$23;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewClipEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private setPreviewShrinker(Z)V
    .locals 4

    const-string/jumbo v1, "KeyguardCircleAffordanceView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPreviewShrinker:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [F

    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mClipDistance:F

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput v2, v1, v3

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewShrinker:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCubicEaseIn:Lcom/samsung/android/graphics/spr/animation/interpolator/CubicEaseIn;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$20;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$20;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewShrinkEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private showHideCArrow(F)V
    .locals 2

    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowDiagSize:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mOldDistance:F

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowDiagSize:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowAlphaAnimator:Landroid/animation/ValueAnimator;

    const-string/jumbo v1, "mCArrowAlphaAnimator"

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->cancelAnimator(Landroid/animation/Animator;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowScaleAnimator:Landroid/animation/ValueAnimator;

    const-string/jumbo v1, "mCArrowScaleAnimator"

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->cancelAnimator(Landroid/animation/Animator;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mBlinkAnimator:Landroid/animation/ValueAnimator;

    const-string/jumbo v1, "mBlinkAnimator"

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->cancelAnimator(Landroid/animation/Animator;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->invalidate()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowDiagSize:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mOldDistance:F

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowDiagSize:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowScale:F

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->invalidate()V

    goto :goto_0
.end method

.method private startRtAlphaFadeIn()V
    .locals 5

    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCircleRadius:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewView:Landroid/view/View;

    if-nez v2, :cond_0

    new-instance v1, Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCirclePaint:Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCircleColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-static {v1}, Landroid/graphics/CanvasProperty;->createPaint(Landroid/graphics/Paint;)Landroid/graphics/CanvasProperty;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mHwCirclePaint:Landroid/graphics/CanvasProperty;

    new-instance v0, Landroid/view/RenderNodeAnimator;

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mHwCirclePaint:Landroid/graphics/CanvasProperty;

    const/high16 v3, 0x437f0000    # 255.0f

    const/4 v4, 0x1

    invoke-direct {v0, v2, v4, v3}, Landroid/view/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;IF)V

    invoke-virtual {v0, p0}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    sget-object v2, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/view/RenderNodeAnimator;

    invoke-virtual {v0}, Landroid/view/RenderNodeAnimator;->start()V

    :cond_0
    return-void
.end method

.method private startRtCircleFadeOut(J)V
    .locals 5

    new-instance v0, Landroid/view/RenderNodeAnimator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mHwCirclePaint:Landroid/graphics/CanvasProperty;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Landroid/view/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;IF)V

    invoke-virtual {v0, p1, p2}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/view/RenderNodeAnimator;

    sget-object v1, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0, p0}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/view/RenderNodeAnimator;->start()V

    return-void
.end method

.method private trackMovement(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method private updateCircleColor()V
    .locals 8

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/high16 v5, 0x3f000000    # 0.5f

    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCircleRadius:F

    iget v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mMinBackgroundRadius:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mMinBackgroundRadius:I

    int-to-float v4, v4

    mul-float/2addr v4, v5

    div-float/2addr v3, v4

    invoke-static {v7, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v6, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    mul-float/2addr v3, v5

    add-float v2, v5, v3

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewView:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCircleRadius:F

    iget v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCircleStartRadius:F

    sub-float/2addr v3, v4

    invoke-static {v6, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iget v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mMaxCircleSize:F

    iget v5, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCircleStartRadius:F

    sub-float/2addr v4, v5

    div-float/2addr v3, v4

    sub-float v1, v7, v3

    mul-float/2addr v2, v1

    :cond_0
    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCircleColor:I

    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iget v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCircleColor:I

    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v4

    iget v5, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCircleColor:I

    invoke-static {v5}, Landroid/graphics/Color;->green(I)I

    move-result v5

    iget v6, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCircleColor:I

    invoke-static {v6}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    invoke-static {v3, v4, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private updateIconColor()V
    .locals 6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCircleRadius:F

    iget v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mMinBackgroundRadius:I

    int-to-float v4, v4

    div-float v0, v3, v4

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mColorInterpolator:Landroid/animation/ArgbEvaluator;

    iget v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mNormalColor:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mInverseColor:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v0, v4, v5}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v1, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method private veilWithCurrentVelocity(F)V
    .locals 10

    const-wide/16 v8, 0xc8

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isWhiteKeyguardWallpaper()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x29

    :goto_0
    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleAlpha:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->cancelAllAnimators()V

    invoke-direct {p0, v6, v6}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setCArrowScaleAnimator(ZZ)V

    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setPreviewShrinker(Z)V

    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setDCircleAnimator(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewShrinker:Landroid/animation/ValueAnimator;

    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mClipDistance:F

    move v4, p1

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->applyDismissing(Landroid/animation/Animator;FFFF)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewShrinker:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v0

    cmp-long v0, v0, v8

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewShrinker:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewShrinker:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mSineOut33:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewShrinker:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :cond_1
    const/16 v0, 0x59

    goto :goto_0
.end method


# virtual methods
.method public cancelDAAffordance()V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/Rune;->KEYWI_SUPPORT_SHORTCUT_CUE:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mArrowContainer:Lcom/android/systemui/statusbar/AffordanceArrowContainer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/AffordanceArrowContainer;->isAnimationPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mArrowContainer:Lcom/android/systemui/statusbar/AffordanceArrowContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/AffordanceArrowContainer;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mArrowContainer:Lcom/android/systemui/statusbar/AffordanceArrowContainer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/AffordanceArrowContainer;->cancelAnimation()V

    :cond_0
    return-void
.end method

.method public finishAnimation(FLjava/lang/Runnable;)V
    .locals 10

    const/4 v6, 0x1

    const-string/jumbo v0, "GED"

    sget-object v2, Lcom/android/systemui/Rune;->KEYWI_VALUE_SHORTCUT_STYLE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->cancelAnimator(Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewClipper:Landroid/animation/Animator;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->cancelAnimator(Landroid/animation/Animator;)V

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mFinishing:Z

    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCircleRadius:F

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCircleStartRadius:F

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->getMaxCircleSize()F

    move-result v3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mSupportHardware:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->initHwProperties()V

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->getRtAnimatorToRadius(F)Landroid/animation/Animator;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->startRtAlphaFadeIn()V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCircleRadius:F

    move v4, p1

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->applyDismissing(Landroid/animation/Animator;FFFF)V

    new-instance v0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$31;

    invoke-direct {v0, p0, p2, v3}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$31;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Ljava/lang/Runnable;F)V

    invoke-virtual {v1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v6}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setImageAlpha(FZ)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->getLeft()I

    move-result v2

    iget v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterX:I

    add-int/2addr v2, v4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->getTop()I

    move-result v4

    iget v5, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterY:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCircleRadius:F

    invoke-static {v0, v2, v4, v5, v3}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewClipper:Landroid/animation/Animator;

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    iget-object v5, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewClipper:Landroid/animation/Animator;

    iget v6, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCircleRadius:F

    move v7, v3

    move v8, p1

    move v9, v3

    invoke-virtual/range {v4 .. v9}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->applyDismissing(Landroid/animation/Animator;FFFF)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewClipper:Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mClipEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewClipper:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mSupportHardware:Z

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->startRtCircleFadeOut(J)V

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->getAnimatorToRadius(F)Landroid/animation/ValueAnimator;

    move-result-object v1

    goto :goto_0
.end method

.method public getCircleRadius()F
    .locals 2

    const-string/jumbo v0, "SEP"

    sget-object v1, Lcom/android/systemui/Rune;->KEYWI_VALUE_SHORTCUT_STYLE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCircleRadius:F

    goto :goto_0
.end method

.method public getRestingAlpha()F
    .locals 2

    const-string/jumbo v0, "SEP"

    sget-object v1, Lcom/android/systemui/Rune;->KEYWI_VALUE_SHORTCUT_STYLE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f000000    # 0.5f

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mRestingAlpha:F

    goto :goto_0
.end method

.method public init()V
    .locals 6

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    sget-object v1, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    sget-boolean v1, Lcom/android/systemui/Rune;->KEYWI_SUPPORT_SHORTCUT_CUE:Z

    if-eqz v1, :cond_1

    new-instance v1, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$SkipShortcutVITouchHandler;

    invoke-direct {v1, p0, v3}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$SkipShortcutVITouchHandler;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$SkipShortcutVITouchHandler;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mTouchHandler:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$TouchHandlePolicy;

    const v1, 0x7f0a0377

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/AffordanceArrowContainer;

    iput-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mArrowContainer:Lcom/android/systemui/statusbar/AffordanceArrowContainer;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mArrowContainer:Lcom/android/systemui/statusbar/AffordanceArrowContainer;

    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/AffordanceArrowContainer;->initContainer(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isWhiteKeyguardWallpaper()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mArrowContainer:Lcom/android/systemui/statusbar/AffordanceArrowContainer;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    const v4, -0xbbbbbc

    invoke-direct {v2, v4, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/AffordanceArrowContainer;->setColorFilter(Landroid/graphics/PorterDuffColorFilter;)V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mArrowContainer:Lcom/android/systemui/statusbar/AffordanceArrowContainer;

    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/AffordanceArrowContainer;->setVisibility(I)V

    :goto_0
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    return-void

    :cond_1
    new-instance v1, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;

    invoke-direct {v1, p0, v3}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mTouchHandler:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$TouchHandlePolicy;

    goto :goto_0
.end method

.method public instantFinishAnimation()V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewClipper:Landroid/animation/Animator;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->cancelAnimator(Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const-string/jumbo v0, "GED"

    sget-object v1, Lcom/android/systemui/Rune;->KEYWI_VALUE_SHORTCUT_STYLE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->getMaxCircleSize()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCircleRadius:F

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setImageAlpha(FZ)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->invalidate()V

    return-void
.end method

.method public isPlayingHintAnimation()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mHintAnimation:Z

    return v0
.end method

.method public isWaitingLaunchAppInSecure()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mReveal:Z

    return v0
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 9

    const v8, 0x7f0701c8

    const v7, 0x7f0701cd

    new-instance v1, Landroid/graphics/RectF;

    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterX:I

    sget-object v3, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterY:I

    sget-object v4, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterX:I

    sget-object v5, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterY:I

    sget-object v6, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowRect:Landroid/graphics/RectF;

    sget-object v1, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701f8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleMaxRadius:F

    sget-object v1, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    const v2, 0x3edeb852    # 0.435f

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v1, v2

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-double v2, v1

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-double v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v1, v2

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowDiagSize:F

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    const-string/jumbo v0, "SEP"

    sget-object v1, Lcom/android/systemui/Rune;->KEYWI_VALUE_SHORTCUT_STYLE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->drawCircle(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->draw4CornerArrows(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mShaderPreview:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->drawPreviewCircle(Landroid/graphics/Canvas;)V

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mImageScale:F

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mImageScale:F

    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterX:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterY:I

    int-to-float v3, v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mShaderPreview:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->drawPreviewCircle(Landroid/graphics/Canvas;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mSupportHardware:Z

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->drawBackgroundCircle(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mImageScale:F

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mImageScale:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 8

    const v6, 0x7f0701cd

    const v7, 0x7f0701c8

    invoke-super/range {p0 .. p5}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->onLayout(ZIIII)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterX:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterY:I

    const-string/jumbo v1, "SEP"

    sget-object v2, Lcom/android/systemui/Rune;->KEYWI_VALUE_SHORTCUT_STYLE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    new-array v0, v1, [I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->getLocationOnScreen([I)V

    const/4 v1, 0x0

    aget v1, v0, v1

    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterX:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterXOnScreen:I

    const/4 v1, 0x1

    aget v1, v0, v1

    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterY:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterYOnScreen:I

    new-instance v1, Landroid/graphics/RectF;

    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterX:I

    sget-object v3, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterY:I

    sget-object v4, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterX:I

    sget-object v5, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterY:I

    sget-object v6, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowRect:Landroid/graphics/RectF;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->getMaxCircleSize()F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mMaxRadius:F

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->getMaxCircleSize()F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mMaxCircleSize:F

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const-string/jumbo v0, "SEP"

    sget-object v1, Lcom/android/systemui/Rune;->KEYWI_VALUE_SHORTCUT_STYLE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mIsPainterReady:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->isInCallForOnlyTablet()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->checkIfShaderReady()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->getImageAlpha()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_2

    :cond_1
    return v3

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->isEnabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mTouchHandler:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$TouchHandlePolicy;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$TouchHandlePolicy;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_3
    return v3
.end method

.method public performClick()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->performClick()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public releaseShader()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mShaderPreview:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "KeyguardCircleAffordanceView"

    const-string/jumbo v1, "releaseShader"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mIsPainterReady:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPaintPreview:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPaintPreview:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->cancelAllAnimators()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->initAnimatedValues()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mReveal:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleRadius:F

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setAlpha(F)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setAlpha(F)V

    sget-boolean v0, Lcom/android/systemui/Rune;->KEYWI_SUPPORT_SHORTCUT_CUE:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setImageAlpha(FZ)V

    :cond_0
    return-void
.end method

.method public setCallback(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mHelperCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    return-void
.end method

.method public setCircleRadius(FZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setCircleRadius(FZZ)V

    return-void
.end method

.method public setCircleRadiusWithoutAnimation(F)V
    .locals 2

    const-string/jumbo v0, "GED"

    sget-object v1, Lcom/android/systemui/Rune;->KEYWI_VALUE_SHORTCUT_STYLE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->cancelAnimator(Landroid/animation/Animator;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setCircleRadius(FZZ)V

    :cond_0
    return-void
.end method

.method public setImageAlpha(FZ)V
    .locals 8

    const/4 v6, 0x0

    const-wide/16 v4, -0x1

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v7, v6

    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setImageAlpha(FZJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    return-void
.end method

.method public setImageAlpha(FZJJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
    .locals 11

    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v8, p1, v8

    if-nez v8, :cond_1

    const/4 v3, 0x1

    :goto_0
    iget-object v8, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mIconAlphaAnimator:Landroid/animation/ValueAnimator;

    const-string/jumbo v9, "mIconAlphaAnimator"

    invoke-direct {p0, v8, v9}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->cancelAnimator(Landroid/animation/Animator;Ljava/lang/String;)V

    const v8, 0x433f4000    # 191.25f

    mul-float/2addr v8, p1

    float-to-int v7, v8

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-nez p2, :cond_2

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_0
    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setImageAlpha(I)V

    invoke-direct {p0, v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setArrowImageAlpha(I)V

    :goto_1
    return-void

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->getImageAlpha()I

    move-result v5

    const/4 v8, 0x2

    new-array v8, v8, [I

    const/4 v9, 0x0

    aput v5, v8, v9

    const/4 v9, 0x1

    aput v7, v8, v9

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mIconAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v8, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$26;

    invoke-direct {v8, p0, v4}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$26;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v8, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mIconAlphaEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v2, v8}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-nez p7, :cond_3

    if-eqz v3, :cond_6

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mSineIn33:Landroid/view/animation/Interpolator;

    move-object/from16 p7, v0

    :cond_3
    :goto_2
    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v8, -0x1

    cmp-long v8, p3, v8

    if-nez v8, :cond_4

    sub-int v8, v5, v7

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x437f0000    # 255.0f

    div-float v6, v8, v9

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v8, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    const/high16 v8, 0x43480000    # 200.0f

    mul-float/2addr v8, v6

    float-to-long p3, v8

    :cond_4
    invoke-virtual {v2, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-wide/from16 v0, p5

    invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    if-eqz p8, :cond_5

    move-object/from16 v0, p8

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->getEndListener(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_5
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mSineOut33:Landroid/view/animation/Interpolator;

    move-object/from16 p7, v0

    goto :goto_2
.end method

.method public setImageAlpha(FZJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
    .locals 17

    const-string/jumbo v3, "SEP"

    sget-object v4, Lcom/android/systemui/Rune;->KEYWI_VALUE_SHORTCUT_STYLE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-wide/16 v8, 0x0

    move-object/from16 v3, p0

    move/from16 v4, p1

    move/from16 v5, p2

    move-wide/from16 v6, p3

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    invoke-virtual/range {v3 .. v11}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setImageAlpha(FZJJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->cancelAnimator(Landroid/animation/Animator;)V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mLaunchingAffordance:Z

    if-eqz v3, :cond_1

    const/16 p1, 0x0

    :cond_1
    const/high16 v3, 0x437f0000    # 255.0f

    mul-float v3, v3, p1

    float-to-int v15, v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    if-nez p2, :cond_3

    if-eqz v12, :cond_2

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3, v15}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setImageAlpha(I)V

    goto :goto_0

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->getImageAlpha()I

    move-result v13

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v13, v3, v4

    const/4 v4, 0x1

    aput v15, v3, v4

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$25;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v12}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$25;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mAlphaEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-nez p5, :cond_4

    const/4 v3, 0x0

    cmpl-float v3, p1, v3

    if-nez v3, :cond_7

    sget-object p5, Lcom/android/systemui/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    :cond_4
    :goto_1
    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v4, -0x1

    cmp-long v3, p3, v4

    if-nez v3, :cond_5

    sub-int v3, v13, v15

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x437f0000    # 255.0f

    div-float v14, v3, v4

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3, v14}, Ljava/lang/Math;->min(FF)F

    move-result v14

    const/high16 v3, 0x43480000    # 200.0f

    mul-float/2addr v3, v14

    float-to-long v0, v3

    move-wide/from16 p3, v0

    :cond_5
    move-wide/from16 v0, p3

    invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    if-eqz p6, :cond_6

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->getEndListener(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_6
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_0

    :cond_7
    sget-object p5, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    goto :goto_1
.end method

.method public setImageScale(FZ)V
    .locals 7

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setImageScale(FZJLandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public setImageScale(FZJLandroid/view/animation/Interpolator;)V
    .locals 5

    const-string/jumbo v2, "SEP"

    sget-object v3, Lcom/android/systemui/Rune;->KEYWI_VALUE_SHORTCUT_STYLE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mScaleAnimator:Landroid/animation/ValueAnimator;

    const-string/jumbo v3, "mScaleAnimator"

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->cancelAnimator(Landroid/animation/Animator;Ljava/lang/String;)V

    :goto_0
    if-nez p2, :cond_1

    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mImageScale:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->invalidate()V

    :goto_1
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->cancelAnimator(Landroid/animation/Animator;)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    new-array v2, v2, [F

    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mImageScale:F

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v3, 0x1

    aput p1, v2, v3

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mScaleAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$24;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$24;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mScaleEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-nez p5, :cond_2

    const-string/jumbo v2, "GED"

    sget-object v3, Lcom/android/systemui/Rune;->KEYWI_VALUE_SHORTCUT_STYLE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-nez v2, :cond_4

    sget-object p5, Lcom/android/systemui/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    :cond_2
    :goto_2
    invoke-virtual {v0, p5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, -0x1

    cmp-long v2, p3, v2

    if-nez v2, :cond_3

    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mImageScale:F

    sub-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3e4ccccc    # 0.19999999f

    div-float v1, v2, v3

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const/high16 v2, 0x43480000    # 200.0f

    mul-float/2addr v2, v1

    float-to-long p3, v2

    :cond_3
    invoke-virtual {v0, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    :cond_4
    sget-object p5, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    goto :goto_2
.end method

.method public setIsShortcutForCamera(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mShortcutForCamera:Z

    return-void
.end method

.method public setLaunchingAffordance(Z)V
    .locals 2

    const-string/jumbo v0, "GED"

    sget-object v1, Lcom/android/systemui/Rune;->KEYWI_VALUE_SHORTCUT_STYLE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mLaunchingAffordance:Z

    :cond_0
    return-void
.end method

.method public setPreviewView(I)V
    .locals 3

    const-string/jumbo v0, "KeyguardCircleAffordanceView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPreviewView: mRight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mRight:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",color="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mShaderPreview:Z

    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewColor:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPaintColor:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setPreviewView(Landroid/view/View;)V

    return-void
.end method

.method public setPreviewView(Landroid/view/View;)V
    .locals 8

    const/4 v1, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    const-string/jumbo v2, "SEP"

    sget-object v3, Lcom/android/systemui/Rune;->KEYWI_VALUE_SHORTCUT_STYLE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewView:Landroid/view/View;

    if-ne v2, p1, :cond_0

    return-void

    :cond_0
    const-string/jumbo v2, "KeyguardCircleAffordanceView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setPreviewView: mRight="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mRight:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",preview="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mIsPainterReady:Z

    if-eqz p1, :cond_2

    iput-boolean v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mShaderPreview:Z

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewView:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->checkIfShaderReady()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPaintPreview:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPaintPreview:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->reset()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewView:Landroid/view/View;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewView:Landroid/view/View;

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewView:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewView:Landroid/view/View;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mLaunchingAffordance:Z

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    :cond_4
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setRestingAlpha(F)V
    .locals 2

    const-string/jumbo v0, "GED"

    sget-object v1, Lcom/android/systemui/Rune;->KEYWI_VALUE_SHORTCUT_STYLE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mRestingAlpha:F

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setImageAlpha(FZ)V

    :cond_0
    return-void
.end method

.method public setRight(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mRight:Z

    return-void
.end method

.method public setShortcutForPhone(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mIsShortcutForPhone:Z

    return-void
.end method

.method public setVisibility(I)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setVisibility(I)V

    sget-boolean v0, Lcom/android/systemui/Rune;->KEYWI_SUPPORT_SHORTCUT_CUE:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mArrowContainer:Lcom/android/systemui/statusbar/AffordanceArrowContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mArrowContainer:Lcom/android/systemui/statusbar/AffordanceArrowContainer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/AffordanceArrowContainer;->setVisibility(I)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mArrowContainer:Lcom/android/systemui/statusbar/AffordanceArrowContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/AffordanceArrowContainer;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mArrowContainer:Lcom/android/systemui/statusbar/AffordanceArrowContainer;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/AffordanceArrowContainer;->setImageAlpha(I)V

    :cond_0
    return-void
.end method

.method public startHintAnimationPhase1(Ljava/lang/Runnable;)V
    .locals 3

    const-string/jumbo v0, "KeyguardCircleAffordanceView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startHintAnimationPhase1 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleMaxRadius:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",mCiradius="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleRadius:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mHintAnimation:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowScaleAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowScaleAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$28;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$28;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    return-void
.end method

.method public startHintAnimationPhase2(Ljava/lang/Runnable;)V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "KeyguardCircleAffordanceView"

    const-string/jumbo v1, "startHintAnimationPhase2"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleMaxRadius:F

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleRadius:F

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setCArrowAnimator(Z)V

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setDCircleAnimator(Z)V

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setDCircleAlphaAnimator(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$29;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$29;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
