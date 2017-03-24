.class Landroid/support/v17/leanback/widget/StreamingTextView;
.super Landroid/widget/EditText;
.source "StreamingTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/StreamingTextView$1;,
        Landroid/support/v17/leanback/widget/StreamingTextView$DottySpan;
    }
.end annotation


# static fields
.field private static final SPLIT_PATTERN:Ljava/util/regex/Pattern;

.field private static final STREAM_POSITION_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/support/v17/leanback/widget/StreamingTextView;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mOneDot:Landroid/graphics/Bitmap;

.field private final mRandom:Ljava/util/Random;

.field private mStreamPosition:I

.field private mStreamingAnimation:Landroid/animation/ObjectAnimator;

.field private mTwoDot:Landroid/graphics/Bitmap;


# direct methods
.method static synthetic -get0(Landroid/support/v17/leanback/widget/StreamingTextView;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/StreamingTextView;->mOneDot:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic -get1(Landroid/support/v17/leanback/widget/StreamingTextView;)Ljava/util/Random;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/StreamingTextView;->mRandom:Ljava/util/Random;

    return-object v0
.end method

.method static synthetic -get2(Landroid/support/v17/leanback/widget/StreamingTextView;)I
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/StreamingTextView;->mStreamPosition:I

    return v0
.end method

.method static synthetic -get3(Landroid/support/v17/leanback/widget/StreamingTextView;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/StreamingTextView;->mTwoDot:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/support/v17/leanback/widget/StreamingTextView;)I
    .locals 1

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/StreamingTextView;->getStreamPosition()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Landroid/support/v17/leanback/widget/StreamingTextView;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/StreamingTextView;->setStreamPosition(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const-string/jumbo v0, "\\S+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/support/v17/leanback/widget/StreamingTextView;->SPLIT_PATTERN:Ljava/util/regex/Pattern;

    new-instance v0, Landroid/support/v17/leanback/widget/StreamingTextView$1;

    const-class v1, Ljava/lang/Integer;

    const-string/jumbo v2, "streamPosition"

    invoke-direct {v0, v1, v2}, Landroid/support/v17/leanback/widget/StreamingTextView$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/support/v17/leanback/widget/StreamingTextView;->STREAM_POSITION_PROPERTY:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/StreamingTextView;->mRandom:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/StreamingTextView;->mRandom:Ljava/util/Random;

    return-void
.end method

.method private addDottySpans(Landroid/text/SpannableStringBuilder;Ljava/lang/String;I)V
    .locals 5

    sget-object v4, Landroid/support/v17/leanback/widget/StreamingTextView;->SPLIT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    add-int v3, p3, v4

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v4

    add-int v2, p3, v4

    new-instance v1, Landroid/support/v17/leanback/widget/StreamingTextView$DottySpan;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-direct {v1, p0, v4, v3}, Landroid/support/v17/leanback/widget/StreamingTextView$DottySpan;-><init>(Landroid/support/v17/leanback/widget/StreamingTextView;II)V

    const/16 v4, 0x21

    invoke-virtual {p1, v1, v3, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private cancelStreamAnimation()V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/StreamingTextView;->mStreamingAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/StreamingTextView;->mStreamingAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method private getScaledBitmap(IF)Landroid/graphics/Bitmap;
    .locals 4

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/StreamingTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    float-to-int v1, v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    float-to-int v2, v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method private getStreamPosition()I
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/StreamingTextView;->mStreamPosition:I

    return v0
.end method

.method public static isLayoutRtl(Landroid/view/View;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v2

    if-ne v0, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private setStreamPosition(I)V
    .locals 0

    iput p1, p0, Landroid/support/v17/leanback/widget/StreamingTextView;->mStreamPosition:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/StreamingTextView;->invalidate()V

    return-void
.end method

.method private startStreamAnimation()V
    .locals 8

    const/4 v5, 0x0

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/StreamingTextView;->cancelStreamAnimation()V

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/StreamingTextView;->getStreamPosition()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/StreamingTextView;->length()I

    move-result v2

    sub-int v0, v2, v1

    if-lez v0, :cond_1

    iget-object v3, p0, Landroid/support/v17/leanback/widget/StreamingTextView;->mStreamingAnimation:Landroid/animation/ObjectAnimator;

    if-nez v3, :cond_0

    new-instance v3, Landroid/animation/ObjectAnimator;

    invoke-direct {v3}, Landroid/animation/ObjectAnimator;-><init>()V

    iput-object v3, p0, Landroid/support/v17/leanback/widget/StreamingTextView;->mStreamingAnimation:Landroid/animation/ObjectAnimator;

    iget-object v3, p0, Landroid/support/v17/leanback/widget/StreamingTextView;->mStreamingAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3, p0}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    iget-object v3, p0, Landroid/support/v17/leanback/widget/StreamingTextView;->mStreamingAnimation:Landroid/animation/ObjectAnimator;

    sget-object v4, Landroid/support/v17/leanback/widget/StreamingTextView;->STREAM_POSITION_PROPERTY:Landroid/util/Property;

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setProperty(Landroid/util/Property;)V

    :cond_0
    iget-object v3, p0, Landroid/support/v17/leanback/widget/StreamingTextView;->mStreamingAnimation:Landroid/animation/ObjectAnimator;

    const/4 v4, 0x2

    new-array v4, v4, [I

    aput v1, v4, v5

    const/4 v5, 0x1

    aput v2, v4, v5

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setIntValues([I)V

    iget-object v3, p0, Landroid/support/v17/leanback/widget/StreamingTextView;->mStreamingAnimation:Landroid/animation/ObjectAnimator;

    int-to-long v4, v0

    const-wide/16 v6, 0x32

    mul-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v3, p0, Landroid/support/v17/leanback/widget/StreamingTextView;->mStreamingAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->start()V

    :cond_1
    return-void
.end method

.method private updateText(Ljava/lang/CharSequence;)V
    .locals 1

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/StreamingTextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/StreamingTextView;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/StreamingTextView;->bringPointIntoView(I)Z

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    const v1, 0x3fa66666    # 1.3f

    invoke-super {p0}, Landroid/widget/EditText;->onFinishInflate()V

    sget v0, Landroid/support/v17/leanback/R$drawable;->lb_text_dot_one:I

    invoke-direct {p0, v0, v1}, Landroid/support/v17/leanback/widget/StreamingTextView;->getScaledBitmap(IF)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/StreamingTextView;->mOneDot:Landroid/graphics/Bitmap;

    sget v0, Landroid/support/v17/leanback/R$drawable;->lb_text_dot_two:I

    invoke-direct {p0, v0, v1}, Landroid/support/v17/leanback/widget/StreamingTextView;->getScaledBitmap(IF)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/StreamingTextView;->mTwoDot:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/StreamingTextView;->reset()V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/EditText;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v0, Landroid/support/v17/leanback/widget/StreamingTextView;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v17/leanback/widget/StreamingTextView;->mStreamPosition:I

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/StreamingTextView;->cancelStreamAnimation()V

    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/StreamingTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updateRecognizedText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    if-nez p1, :cond_0

    const-string/jumbo p1, ""

    :cond_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_1

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    invoke-virtual {v0, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-direct {p0, v0, p2, v1}, Landroid/support/v17/leanback/widget/StreamingTextView;->addDottySpans(Landroid/text/SpannableStringBuilder;Ljava/lang/String;I)V

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    iget v3, p0, Landroid/support/v17/leanback/widget/StreamingTextView;->mStreamPosition:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Landroid/support/v17/leanback/widget/StreamingTextView;->mStreamPosition:I

    new-instance v2, Landroid/text/SpannedString;

    invoke-direct {v2, v0}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v2}, Landroid/support/v17/leanback/widget/StreamingTextView;->updateText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/StreamingTextView;->startStreamAnimation()V

    return-void
.end method
