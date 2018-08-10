.class public Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;
.super Landroid/widget/RelativeLayout;
.source "ZenScheduleRepeatButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$DrawRepeatCircleView;,
        Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$InterpolatorStyle;,
        Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$RepeatListener;
    }
.end annotation


# static fields
.field private static final synthetic -com-samsung-android-settings-notification-ZenScheduleRepeatButton$InterpolatorStyleSwitchesValues:[I

.field public static final REPEAT_DAYS:[I

.field public static final VALUES_DAYS:[I

.field private static sRepeatSelectItems:Landroid/util/SparseBooleanArray;


# instance fields
.field private final BUTTON_CNT:I

.field private final LEFT_DRAG:I

.field private final RIGHT_DRAG:I

.field public mAlarmRepeatString:Ljava/lang/String;

.field private final mCheckedRepeatItems:[Z

.field private final mColorSet:[I

.field private mColorValues:[I

.field private mContext:Landroid/content/Context;

.field private mDragState:I

.field private mEndValue:F

.field public mIsDateSelected:Z

.field public mIsDragging:Z

.field private mRepeatAnimatingView:[Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$DrawRepeatCircleView;

.field private mRepeatBtn:[Landroid/widget/ToggleButton;

.field private mRepeatClickListener:Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$RepeatListener;

.field private mRepeatTextView:Landroid/view/View;

.field private mStartValue:F

.field private mTouchIndex:I

.field private mView:Landroid/view/View;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mEndValue:F

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;)[Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$DrawRepeatCircleView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mRepeatAnimatingView:[Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$DrawRepeatCircleView;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;)[Landroid/widget/ToggleButton;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mRepeatBtn:[Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mRepeatTextView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mStartValue:F

    return v0
.end method

.method private static synthetic -getcom-samsung-android-settings-notification-ZenScheduleRepeatButton$InterpolatorStyleSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->-com-samsung-android-settings-notification-ZenScheduleRepeatButton$InterpolatorStyleSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->-com-samsung-android-settings-notification-ZenScheduleRepeatButton$InterpolatorStyleSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$InterpolatorStyle;->values()[Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$InterpolatorStyle;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$InterpolatorStyle;->SineIn33:Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$InterpolatorStyle;

    invoke-virtual {v1}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$InterpolatorStyle;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_11

    :goto_0
    :try_start_1
    sget-object v1, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$InterpolatorStyle;->SineIn50:Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$InterpolatorStyle;

    invoke-virtual {v1}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$InterpolatorStyle;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_10

    :goto_1
    :try_start_2
    sget-object v1, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$InterpolatorStyle;->SineIn60:Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$InterpolatorStyle;

    invoke-virtual {v1}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$InterpolatorStyle;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_f

    :goto_2
    :try_start_3
    sget-object v1, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$InterpolatorStyle;->SineIn70:Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$InterpolatorStyle;

    invoke-virtual {v1}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$InterpolatorStyle;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_e

    :goto_3
    :try_start_4
    sget-object v1, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$InterpolatorStyle;->SineIn80:Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$InterpolatorStyle;

    invoke-virtual {v1}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$InterpolatorStyle;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_d

    :goto_4
    :try_start_5
    sget-object v1, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$InterpolatorStyle;->SineIn90:Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$InterpolatorStyle;

    invoke-virtual {v1}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$InterpolatorStyle;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_c

    :goto_5
    :try_start_6
    sget-object v1, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$InterpolatorStyle;->SineInOut33:Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$InterpolatorStyle;

    invoke-virtual {v1}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$InterpolatorStyle;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_b

    :goto_6
    :try_start_7
    sget-object v1, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$InterpolatorStyle;->SineInOut50:Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$InterpolatorStyle;

    invoke-virtual {v1}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$InterpolatorStyle;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_a

    :goto_7
    :try_start_8
    sget-object v1, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$InterpolatorStyle;->SineInOut60:Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$InterpolatorStyle;

    invoke-virtual {v1}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$InterpolatorStyle;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_9

    :goto_8
    :try_start_9
    sget-object v1, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$InterpolatorStyle;->SineInOut70:Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$InterpolatorStyle;

    invoke-virtual {v1}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$InterpolatorStyle;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_8

    :goto_9
    :try_start_a
    sget-object v1, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$InterpolatorStyle;->SineInOut80:Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$InterpolatorStyle;

    invoke-virtual {v1}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$InterpolatorStyle;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_7

    :goto_a
    :try_start_b
    sget-object v1, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$InterpolatorStyle;->SineInOut90:Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$InterpolatorStyle;

    invoke-virtual {v1}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$InterpolatorStyle;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_6

    :goto_b
    :try_start_c
    sget-object v1, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$InterpolatorStyle;->SineOut33:Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$InterpolatorStyle;

    invoke-virtual {v1}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$InterpolatorStyle;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_5

    :goto_c
    :try_start_d
    sget-object v1, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$InterpolatorStyle;->SineOut50:Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$InterpolatorStyle;

    invoke-virtual {v1}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$InterpolatorStyle;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_4

    :goto_d
    :try_start_e
    sget-object v1, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$InterpolatorStyle;->SineOut60:Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$InterpolatorStyle;

    invoke-virtual {v1}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$InterpolatorStyle;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_3

    :goto_e
    :try_start_f
    sget-object v1, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$InterpolatorStyle;->SineOut70:Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$InterpolatorStyle;

    invoke-virtual {v1}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$InterpolatorStyle;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_2

    :goto_f
    :try_start_10
    sget-object v1, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$InterpolatorStyle;->SineOut80:Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$InterpolatorStyle;

    invoke-virtual {v1}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$InterpolatorStyle;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_1

    :goto_10
    :try_start_11
    sget-object v1, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$InterpolatorStyle;->SineOut90:Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$InterpolatorStyle;

    invoke-virtual {v1}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$InterpolatorStyle;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_0

    :goto_11
    sput-object v0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->-com-samsung-android-settings-notification-ZenScheduleRepeatButton$InterpolatorStyleSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_11

    :catch_1
    move-exception v1

    goto :goto_10

    :catch_2
    move-exception v1

    goto :goto_f

    :catch_3
    move-exception v1

    goto :goto_e

    :catch_4
    move-exception v1

    goto :goto_d

    :catch_5
    move-exception v1

    goto :goto_c

    :catch_6
    move-exception v1

    goto :goto_b

    :catch_7
    move-exception v1

    goto :goto_a

    :catch_8
    move-exception v1

    goto :goto_9

    :catch_9
    move-exception v1

    goto :goto_8

    :catch_a
    move-exception v1

    goto :goto_7

    :catch_b
    move-exception v1

    goto/16 :goto_6

    :catch_c
    move-exception v1

    goto/16 :goto_5

    :catch_d
    move-exception v1

    goto/16 :goto_4

    :catch_e
    move-exception v1

    goto/16 :goto_3

    :catch_f
    move-exception v1

    goto/16 :goto_2

    :catch_10
    move-exception v1

    goto/16 :goto_1

    :catch_11
    move-exception v1

    goto/16 :goto_0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->clickRepeatButton()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x7

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->VALUES_DAYS:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->REPEAT_DAYS:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
    .end array-data

    :array_1
    .array-data 4
        0x1000000
        0x100000
        0x10000
        0x1000
        0x100
        0x10
        0x1
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x7

    const/4 v3, -0x1

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput v4, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->BUTTON_CNT:I

    new-array v0, v4, [Z

    iput-object v0, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mCheckedRepeatItems:[Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mIsDateSelected:Z

    iput v3, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mTouchIndex:I

    const v0, 0x7f0602c9

    const v1, 0x7f0602c7

    const v2, 0x7f0602c8

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mColorSet:[I

    new-array v0, v4, [I

    iput-object v0, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mColorValues:[I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mStartValue:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mEndValue:F

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->RIGHT_DRAG:I

    iput v3, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->LEFT_DRAG:I

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070968

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-direct {v0, v3, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const/4 v4, -0x1

    const/4 v3, 0x7

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v3, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->BUTTON_CNT:I

    new-array v0, v3, [Z

    iput-object v0, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mCheckedRepeatItems:[Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mIsDateSelected:Z

    iput v4, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mTouchIndex:I

    const v0, 0x7f0602c9

    const v1, 0x7f0602c7

    const v2, 0x7f0602c8

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mColorSet:[I

    new-array v0, v3, [I

    iput-object v0, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mColorValues:[I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mStartValue:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mEndValue:F

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->RIGHT_DRAG:I

    iput v4, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->LEFT_DRAG:I

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    const/4 v4, -0x1

    const/4 v3, 0x7

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v3, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->BUTTON_CNT:I

    new-array v0, v3, [Z

    iput-object v0, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mCheckedRepeatItems:[Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mIsDateSelected:Z

    iput v4, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mTouchIndex:I

    const v0, 0x7f0602c9

    const v1, 0x7f0602c7

    const v2, 0x7f0602c8

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mColorSet:[I

    new-array v0, v3, [I

    iput-object v0, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mColorValues:[I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mStartValue:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mEndValue:F

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->RIGHT_DRAG:I

    iput v4, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->LEFT_DRAG:I

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->init(Landroid/content/Context;)V

    return-void
.end method

.method private clickRepeatButton()V
    .locals 3

    iget-boolean v1, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mIsDateSelected:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mIsDateSelected:Z

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->getCheckDay()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->setCheckDayWithAnimation(IZ)V

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mRepeatClickListener:Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$RepeatListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mRepeatClickListener:Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$RepeatListener;

    invoke-interface {v1, v0}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$RepeatListener;->setRepeatClick(I)V

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "ZenScheduleRepeatButton"

    const-string/jumbo v2, "mRepeatClickListener is null. not able to click Repeat button."

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getColor(C[I)I
    .locals 1

    const/16 v0, 0x52

    if-ne p0, v0, :cond_0

    const/4 v0, 0x2

    aget v0, p1, v0

    return v0

    :cond_0
    const/16 v0, 0x42

    if-ne p0, v0, :cond_1

    const/4 v0, 0x1

    aget v0, p1, v0

    return v0

    :cond_1
    const/4 v0, 0x0

    aget v0, p1, v0

    return v0
.end method

.method public static getColors([II)[I
    .locals 11

    const/4 v10, 0x3

    const/4 v9, 0x7

    const/4 v0, 0x7

    const-string/jumbo v1, "XXXXXXR"

    :try_start_0
    const-string/jumbo v7, "CscFeature_Calendar_SetColorOfDays"

    invoke-static {v7}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->getCscString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    :goto_0
    if-eqz v6, :cond_0

    const-string/jumbo v7, ""

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-eq v7, v9, :cond_1

    :cond_0
    const-string/jumbo v6, "XXXXXXR"

    :cond_1
    if-eqz p0, :cond_2

    array-length v7, p0

    if-eq v7, v10, :cond_3

    :cond_2
    new-array p0, v10, [I

    const/high16 v7, -0x1000000

    const/4 v8, 0x0

    aput v7, p0, v8

    const v7, -0xffff01

    const/4 v8, 0x1

    aput v7, p0, v8

    const/high16 v7, -0x10000

    const/4 v8, 0x2

    aput v7, p0, v8

    :cond_3
    new-array v2, v9, [I

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v9, :cond_4

    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7, p0}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->getColor(C[I)I

    move-result v7

    aput v7, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :catch_0
    move-exception v3

    const/4 v6, 0x0

    const-string/jumbo v7, "ZenScheduleRepeatButton"

    const-string/jumbo v8, "NullPointerException - getCscString"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    invoke-static {p1}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->getRotateOffset(I)I

    move-result v5

    invoke-static {v2, v5}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->rotate([II)[I

    move-result-object v7

    return-object v7
.end method

.method private static getCscEnableStatus(Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "ZenScheduleRepeatButton"

    const-string/jumbo v2, "NullPointerException occurs"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1
.end method

.method private static getCscString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDayOfWeekString(Landroid/content/Context;II)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-eq p2, v1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    packed-switch p1, :pswitch_data_0

    const-string/jumbo v1, "ZenScheduleRepeatButton"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "1. day value is invalid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-object v0

    :pswitch_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f121ad1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f12119b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f121c06

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f121e40

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f121ba5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120c4f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1216b5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    if-ne p2, v1, :cond_1

    packed-switch p1, :pswitch_data_1

    const-string/jumbo v1, "ZenScheduleRepeatButton"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "1. day value is invalid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_7
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f121ad2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_8
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f12119c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_9
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f121c07

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_a
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f121e41

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_b
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f121ba6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_c
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120c50

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_d
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1216bc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public static getInterpolatorStyle(Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$InterpolatorStyle;)Landroid/view/animation/Interpolator;
    .locals 8

    const v7, 0x3e99999a    # 0.3f

    const v6, 0x3e2e147b    # 0.17f

    const/high16 v5, 0x3f800000    # 1.0f

    const v4, 0x3ea8f5c3    # 0.33f

    const/4 v3, 0x0

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->-getcom-samsung-android-settings-notification-ZenScheduleRepeatButton$InterpolatorStyleSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$InterpolatorStyle;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    const v1, 0x3f547ae1    # 0.83f

    const v2, 0x3f547ae1    # 0.83f

    invoke-static {v4, v3, v1, v2}, Landroid/support/v4/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    const v1, 0x3f2b851f    # 0.67f

    invoke-static {v4, v3, v1, v5}, Landroid/support/v4/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    const v1, 0x3ecccccd    # 0.4f

    invoke-static {v4, v3, v1, v5}, Landroid/support/v4/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    invoke-static {v6, v6, v7, v5}, Landroid/support/v4/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    invoke-static {v4, v3, v7, v5}, Landroid/support/v4/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    const v1, 0x3e4ccccd    # 0.2f

    invoke-static {v4, v3, v1, v5}, Landroid/support/v4/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_3
    .end packed-switch
.end method

.method private static getRotateOffset(I)I
    .locals 1

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    return v0

    :pswitch_0
    return v0

    :pswitch_1
    const/4 v0, 0x1

    return v0

    :pswitch_2
    const/4 v0, 0x2

    return v0

    :pswitch_3
    const/4 v0, 0x3

    return v0

    :pswitch_4
    const/4 v0, 0x4

    return v0

    :pswitch_5
    const/4 v0, 0x5

    return v0

    :pswitch_6
    const/4 v0, 0x6

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public static getStartDayOfWeek()I
    .locals 1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    return v0
.end method

.method private inflateRepeatBtn()V
    .locals 17

    const/4 v13, 0x7

    new-array v13, v13, [Landroid/widget/ToggleButton;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mRepeatBtn:[Landroid/widget/ToggleButton;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$DrawRepeatCircleView;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mRepeatAnimatingView:[Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$DrawRepeatCircleView;

    const v10, 0x7f0a06f0

    const/4 v4, 0x0

    :goto_0
    const/4 v13, 0x7

    if-ge v4, v13, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mRepeatBtn:[Landroid/widget/ToggleButton;

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ToggleButton;

    aput-object v13, v14, v4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mRepeatAnimatingView:[Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$DrawRepeatCircleView;

    new-instance v14, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$DrawRepeatCircleView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v15}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$DrawRepeatCircleView;-><init>(Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;Landroid/content/Context;)V

    aput-object v14, v13, v4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mRepeatAnimatingView:[Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$DrawRepeatCircleView;

    aget-object v13, v13, v4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mRepeatBtn:[Landroid/widget/ToggleButton;

    aget-object v14, v14, v4

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$DrawRepeatCircleView;->setRepeatToggleButton(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mRepeatAnimatingView:[Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$DrawRepeatCircleView;

    aget-object v13, v13, v4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mView:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v14

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$DrawRepeatCircleView;->setMinimumWidth(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mRepeatAnimatingView:[Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$DrawRepeatCircleView;

    aget-object v13, v13, v4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mView:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v14

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$DrawRepeatCircleView;->setMinimumHeight(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mRepeatAnimatingView:[Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$DrawRepeatCircleView;

    aget-object v13, v13, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mRepeatBtn:[Landroid/widget/ToggleButton;

    aget-object v13, v13, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/ToggleButton;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mRepeatBtn:[Landroid/widget/ToggleButton;

    aget-object v13, v13, v4

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/ToggleButton;->setChecked(Z)V

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mCheckedRepeatItems:[Z

    const/4 v14, 0x0

    aput-boolean v14, v13, v4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mRepeatAnimatingView:[Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$DrawRepeatCircleView;

    aget-object v13, v13, v4

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$DrawRepeatCircleView;->setVisibility(I)V

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->getStartDayOfWeek()I

    move-result v13

    add-int/lit8 v9, v13, -0x1

    invoke-static {}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->isMirroringEnabled()Z

    move-result v6

    const/4 v13, 0x7

    new-array v12, v13, [I

    fill-array-data v12, :array_0

    const/4 v13, 0x7

    new-array v11, v13, [I

    fill-array-data v11, :array_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mColorSet:[I

    invoke-static {v13, v9}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->getColors([II)[I

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mColorValues:[I

    const/4 v7, 0x0

    :goto_1
    const/4 v13, 0x7

    if-ge v7, v13, :cond_2

    if-eqz v6, :cond_1

    const-string/jumbo v13, "ZenScheduleRepeatButton"

    const-string/jumbo v14, "isMirroringEnabled : true"

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v13, v9, 0x6

    sub-int/2addr v13, v7

    rem-int/lit8 v2, v13, 0x7

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    aget v14, v12, v2

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    :try_start_0
    new-instance v8, Landroid/text/SpannableString;

    invoke-direct {v8, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mRepeatBtn:[Landroid/widget/ToggleButton;

    aget-object v13, v13, v7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mColorValues:[I

    aget v15, v15, v7

    invoke-virtual {v14, v15}, Landroid/content/Context;->getColor(I)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/widget/ToggleButton;->setTextColor(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mRepeatBtn:[Landroid/widget/ToggleButton;

    aget-object v13, v13, v7

    invoke-virtual {v13, v8}, Landroid/widget/ToggleButton;->setTextOn(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mRepeatBtn:[Landroid/widget/ToggleButton;

    aget-object v13, v13, v7

    invoke-virtual {v13, v8}, Landroid/widget/ToggleButton;->setTextOff(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mRepeatBtn:[Landroid/widget/ToggleButton;

    aget-object v13, v13, v7

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    aget v15, v11, v2

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/ToggleButton;->setContentDescription(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mRepeatBtn:[Landroid/widget/ToggleButton;

    aget-object v14, v14, v7

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f07096d

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    int-to-float v15, v15

    const v16, 0x3f99999a    # 1.2f

    invoke-static/range {v13 .. v16}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->setTextSize(Landroid/content/Context;Landroid/widget/TextView;FF)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    add-int v13, v9, v7

    rem-int/lit8 v2, v13, 0x7

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    :goto_4
    const/4 v13, 0x7

    if-ge v7, v13, :cond_3

    move v1, v7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mRepeatBtn:[Landroid/widget/ToggleButton;

    aget-object v13, v13, v7

    new-instance v14, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v1}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$1;-><init>(Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;I)V

    invoke-virtual {v13, v14}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_3
    return-void

    :catch_0
    move-exception v5

    goto :goto_3

    nop

    :array_0
    .array-data 4
        0x7f121ad1
        0x7f12119b
        0x7f121c06
        0x7f121e40
        0x7f121ba5
        0x7f120c4f
        0x7f1216b5
    .end array-data

    :array_1
    .array-data 4
        0x7f121ad2
        0x7f12119c
        0x7f121c07
        0x7f121e41
        0x7f121ba6
        0x7f120c50
        0x7f1216bc
    .end array-data
.end method

.method private init(Landroid/content/Context;)V
    .locals 5

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->setWillNotDraw(Z)V

    iput-object p1, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0d03d3

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->inflateRepeatBtn()V

    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    sput-object v1, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->sRepeatSelectItems:Landroid/util/SparseBooleanArray;

    const v1, 0x7f0a06f9

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mRepeatTextView:Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mRepeatTextView:Landroid/view/View;

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07096b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3f99999a    # 1.2f

    invoke-static {v2, v1, v3, v4}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->setTextSize(Landroid/content/Context;Landroid/widget/TextView;FF)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->invalidate()V

    return-void
.end method

.method public static isMirroringEnabled()Z
    .locals 3

    const/4 v1, 0x0

    const-string/jumbo v2, "CscFeature_Common_EnableUiDisplayMirroring"

    invoke-static {v2}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->getCscEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "ar"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "iw"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "he"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static isRtl()Z
    .locals 2

    const/4 v1, 0x1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static rotate([II)[I
    .locals 5

    array-length v1, p0

    new-array v2, v1, [I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    add-int v3, v0, p1

    rem-int/2addr v3, v1

    aget v4, p0, v0

    aput v4, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method private setCheckDayWithAnimation(IZ)V
    .locals 11

    const/4 v10, 0x7

    const/4 v6, 0x1

    const/4 v7, 0x0

    sget-object v3, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->REPEAT_DAYS:[I

    invoke-static {}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->getStartDayOfWeek()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v10, :cond_1

    add-int v5, v4, v2

    rem-int/lit8 v0, v5, 0x7

    iget-object v8, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mCheckedRepeatItems:[Z

    aget v5, v3, v0

    and-int/2addr v5, p1

    aget v9, v3, v0

    if-ne v5, v9, :cond_0

    move v5, v6

    :goto_1
    aput-boolean v5, v8, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v5, v7

    goto :goto_1

    :cond_1
    sget-object v5, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->sRepeatSelectItems:Landroid/util/SparseBooleanArray;

    if-eqz v5, :cond_6

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v10, :cond_5

    iget-object v5, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mCheckedRepeatItems:[Z

    aget-boolean v5, v5, v1

    if-eqz v5, :cond_3

    sget-object v5, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->sRepeatSelectItems:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v1, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object v5, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mRepeatBtn:[Landroid/widget/ToggleButton;

    aget-object v5, v5, v1

    invoke-virtual {v5, v6}, Landroid/widget/ToggleButton;->setChecked(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mRepeatAnimatingView:[Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$DrawRepeatCircleView;

    aget-object v5, v5, v1

    invoke-virtual {v5, v7}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$DrawRepeatCircleView;->setVisibility(I)V

    iget-object v5, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mRepeatBtn:[Landroid/widget/ToggleButton;

    aget-object v5, v5, v1

    iget-object v8, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mContext:Landroid/content/Context;

    const v9, 0x7f0602ca

    invoke-virtual {v8, v9}, Landroid/content/Context;->getColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/ToggleButton;->setTextColor(I)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v8, "ko"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mRepeatBtn:[Landroid/widget/ToggleButton;

    aget-object v5, v5, v1

    const-string/jumbo v8, "sans-serif"

    invoke-static {v8, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/ToggleButton;->setTypeface(Landroid/graphics/Typeface;)V

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    iget-object v5, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mRepeatBtn:[Landroid/widget/ToggleButton;

    aget-object v5, v5, v1

    const-string/jumbo v8, "sans-serif-medium"

    invoke-static {v8, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/ToggleButton;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_3

    :cond_3
    sget-object v5, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->sRepeatSelectItems:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v1, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object v5, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mRepeatBtn:[Landroid/widget/ToggleButton;

    aget-object v5, v5, v1

    invoke-virtual {v5, v7}, Landroid/widget/ToggleButton;->setChecked(Z)V

    if-nez p2, :cond_4

    iget-object v5, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mRepeatAnimatingView:[Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$DrawRepeatCircleView;

    aget-object v5, v5, v1

    const/16 v8, 0x8

    invoke-virtual {v5, v8}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$DrawRepeatCircleView;->setVisibility(I)V

    :cond_4
    iget-object v5, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mRepeatBtn:[Landroid/widget/ToggleButton;

    aget-object v5, v5, v1

    iget-object v8, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mColorValues:[I

    aget v9, v9, v1

    invoke-virtual {v8, v9}, Landroid/content/Context;->getColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/ToggleButton;->setTextColor(I)V

    iget-object v5, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mRepeatBtn:[Landroid/widget/ToggleButton;

    aget-object v5, v5, v1

    const-string/jumbo v8, "sans-serif"

    invoke-static {v8, v7}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/ToggleButton;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_3

    :cond_5
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->setRepeatText()V

    :cond_6
    return-void
.end method

.method private setRepeatText()V
    .locals 11

    const/4 v10, 0x7

    sget-object v7, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->sRepeatSelectItems:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7}, Landroid/util/SparseBooleanArray;->size()I

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v7, ""

    iput-object v7, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mAlarmRepeatString:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->getStartDayOfWeek()I

    move-result v7

    add-int/lit8 v6, v7, -0x1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v10, :cond_6

    sget-object v7, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->sRepeatSelectItems:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v7

    if-eqz v7, :cond_3

    if-lez v0, :cond_1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "ar"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string/jumbo v7, "\u060c "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_2
    add-int v7, v6, v3

    rem-int/lit8 v1, v7, 0x7

    iget-object v7, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mContext:Landroid/content/Context;

    add-int/lit8 v8, v1, 0x1

    const/4 v9, 0x2

    invoke-static {v7, v8, v9}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->getDayOfWeekString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v0, v0, 0x1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-virtual {v8}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string/jumbo v7, "\u3001"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    const-string/jumbo v7, ", "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_6
    const-string/jumbo v7, "ZenScheduleRepeatButton"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setRepeatSubText() - size = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", checkCnt = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_7

    const-string/jumbo v7, ""

    iput-object v7, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mAlarmRepeatString:Ljava/lang/String;

    goto/16 :goto_0

    :cond_7
    if-ne v0, v10, :cond_8

    iget-object v7, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f120a73

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mAlarmRepeatString:Ljava/lang/String;

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mAlarmRepeatString:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method private static setTextSize(Landroid/content/Context;Landroid/widget/TextView;FF)V
    .locals 5

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v1, v2, Landroid/content/res/Configuration;->fontScale:F

    div-float v0, p2, v1

    const-string/jumbo v2, "ZenScheduleRepeatButton"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setLargeTextSize fontScale : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    cmpl-float v2, v1, p3

    if-lez v2, :cond_0

    move v1, p3

    :cond_0
    mul-float v2, v0, v1

    invoke-static {p1, v2}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->setTextSize(Landroid/widget/TextView;F)V

    :cond_1
    return-void
.end method

.method public static setTextSize(Landroid/widget/TextView;F)V
    .locals 4

    if-eqz p0, :cond_0

    float-to-double v2, p1

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-float v1, v2

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "ZenScheduleRepeatButton"

    const-string/jumbo v2, "Exception "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    const/4 v10, -0x1

    const/4 v9, 0x0

    const/4 v8, 0x1

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->isEnabled()Z

    move-result v6

    if-nez v6, :cond_0

    return v8

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v5, v6

    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070965

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->getWidth()I

    move-result v6

    mul-int/lit8 v7, v3, 0x2

    sub-int v4, v6, v7

    sub-int v6, v5, v3

    div-int/lit8 v7, v4, 0x7

    div-int v2, v6, v7

    invoke-static {}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->isRtl()Z

    move-result v6

    if-eqz v6, :cond_1

    rsub-int/lit8 v2, v2, 0x6

    if-gtz v2, :cond_1

    const/4 v2, 0x0

    :cond_1
    const/4 v6, 0x7

    if-lt v2, v6, :cond_4

    const/4 v2, 0x6

    :cond_2
    :goto_0
    packed-switch v0, :pswitch_data_0

    :cond_3
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    return v6

    :cond_4
    if-gez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :pswitch_0
    iput-boolean v9, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mIsDragging:Z

    iput v2, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mTouchIndex:I

    goto :goto_1

    :pswitch_1
    iget v6, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mTouchIndex:I

    if-eq v6, v2, :cond_3

    iget v6, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mTouchIndex:I

    if-ge v6, v2, :cond_8

    iget v6, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mDragState:I

    if-ne v6, v10, :cond_5

    iput-boolean v9, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mIsDragging:Z

    :cond_5
    iput v8, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mDragState:I

    :cond_6
    :goto_2
    iget-boolean v6, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mIsDragging:Z

    if-nez v6, :cond_7

    iget-object v6, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mRepeatBtn:[Landroid/widget/ToggleButton;

    iget v7, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mTouchIndex:I

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/widget/ToggleButton;->performClick()Z

    :cond_7
    iget v6, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mTouchIndex:I

    sub-int/2addr v6, v2

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-le v6, v8, :cond_b

    iget v6, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mDragState:I

    if-ne v6, v8, :cond_a

    iget v6, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mTouchIndex:I

    add-int/lit8 v1, v6, 0x1

    :goto_3
    if-ge v1, v2, :cond_b

    iget-object v6, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mRepeatBtn:[Landroid/widget/ToggleButton;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Landroid/widget/ToggleButton;->performClick()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_8
    iget v6, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mTouchIndex:I

    if-le v6, v2, :cond_6

    iget v6, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mDragState:I

    if-ne v6, v8, :cond_9

    iput-boolean v9, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mIsDragging:Z

    :cond_9
    iput v10, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mDragState:I

    goto :goto_2

    :cond_a
    iget v6, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mDragState:I

    if-ne v6, v10, :cond_b

    iget v6, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mTouchIndex:I

    add-int/lit8 v1, v6, -0x1

    :goto_4
    if-le v1, v2, :cond_b

    iget-object v6, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mRepeatBtn:[Landroid/widget/ToggleButton;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Landroid/widget/ToggleButton;->performClick()Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    :cond_b
    iget-object v6, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mRepeatBtn:[Landroid/widget/ToggleButton;

    aget-object v6, v6, v2

    invoke-virtual {v6}, Landroid/widget/ToggleButton;->performClick()Z

    iput v2, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mTouchIndex:I

    iput-boolean v8, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mIsDragging:Z

    goto :goto_1

    :pswitch_2
    iget v6, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mTouchIndex:I

    sub-int/2addr v6, v2

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-le v6, v8, :cond_d

    iget v6, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mDragState:I

    if-ne v6, v8, :cond_c

    iget v6, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mTouchIndex:I

    add-int/lit8 v1, v6, 0x1

    :goto_5
    if-gt v1, v2, :cond_d

    iget-object v6, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mRepeatBtn:[Landroid/widget/ToggleButton;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Landroid/widget/ToggleButton;->performClick()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_c
    iget v6, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mDragState:I

    if-ne v6, v10, :cond_d

    iget v6, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mTouchIndex:I

    add-int/lit8 v1, v6, -0x1

    :goto_6
    if-lt v1, v2, :cond_d

    iget-object v6, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mRepeatBtn:[Landroid/widget/ToggleButton;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Landroid/widget/ToggleButton;->performClick()Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    :cond_d
    iput-boolean v9, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mIsDragging:Z

    iput v9, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mDragState:I

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getCheckDay()I
    .locals 7

    const/4 v4, 0x0

    sget-object v3, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->REPEAT_DAYS:[I

    invoke-static {}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->getStartDayOfWeek()I

    move-result v6

    add-int/lit8 v5, v6, -0x1

    invoke-static {}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->isMirroringEnabled()Z

    move-result v1

    const/4 v2, 0x0

    :goto_0
    const/4 v6, 0x7

    if-ge v2, v6, :cond_2

    iget-object v6, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mRepeatBtn:[Landroid/widget/ToggleButton;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mRepeatBtn:[Landroid/widget/ToggleButton;

    aget-object v6, v6, v2

    invoke-virtual {v6}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_0

    if-eqz v1, :cond_1

    add-int/lit8 v6, v5, 0x6

    sub-int/2addr v6, v2

    rem-int/lit8 v0, v6, 0x7

    :goto_1
    aget v6, v3, v0

    or-int/2addr v4, v6

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    add-int v6, v5, v2

    rem-int/lit8 v0, v6, 0x7

    goto :goto_1

    :cond_2
    return v4
.end method

.method public initRepeatBtn([I)V
    .locals 7

    const/4 v6, 0x1

    if-eqz p1, :cond_0

    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    sget-object v3, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->VALUES_DAYS:[I

    aget v4, p1, v1

    add-int/lit8 v4, v4, 0x7

    invoke-static {}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->getStartDayOfWeek()I

    move-result v5

    sub-int/2addr v4, v5

    rem-int/lit8 v4, v4, 0x7

    aget v0, v3, v4

    iget-object v3, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mRepeatBtn:[Landroid/widget/ToggleButton;

    aget-object v3, v3, v0

    invoke-virtual {v3, v6}, Landroid/widget/ToggleButton;->setChecked(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mRepeatAnimatingView:[Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$DrawRepeatCircleView;

    aget-object v3, v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$DrawRepeatCircleView;->setVisibility(I)V

    invoke-virtual {p0, v0, v6}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->setSelectionMarkAnimator(IZ)V

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->clickRepeatButton()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setEnabledBtn(Ljava/lang/Boolean;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->setEnabled(Z)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->setClickable(Z)V

    return-void
.end method

.method public setOnRepeatClickListener(Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$RepeatListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mRepeatClickListener:Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$RepeatListener;

    return-void
.end method

.method public setSelectionMarkAnimator(IZ)V
    .locals 12

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string/jumbo v4, "ZenScheduleRepeatButton"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setSelectionMarkAnimator = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " , isShowAnim = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x12c

    if-nez p2, :cond_0

    iput v11, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mStartValue:F

    iput v10, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mEndValue:F

    const/16 v0, 0xc8

    :goto_0
    new-array v4, v9, [F

    iget v5, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mStartValue:F

    aput v5, v4, v7

    iget v5, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mEndValue:F

    aput v5, v4, v8

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v4, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$InterpolatorStyle;->SineInOut60:Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$InterpolatorStyle;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->getInterpolatorStyle(Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$InterpolatorStyle;)Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v4, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$2;

    invoke-direct {v4, p0, p1, p2}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$2;-><init>(Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;IZ)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v4, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$3;

    invoke-direct {v4, p0, p1}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$3;-><init>(Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;I)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-array v4, v9, [F

    iget v5, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mStartValue:F

    aput v5, v4, v7

    iget v5, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mEndValue:F

    aput v5, v4, v8

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    int-to-long v4, v0

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v4, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$InterpolatorStyle;->SineInOut60:Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$InterpolatorStyle;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->getInterpolatorStyle(Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$InterpolatorStyle;)Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v4, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$4;

    invoke-direct {v4, p0, p1, p2}, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton$4;-><init>(Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;IZ)V

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v4, v9, [Landroid/animation/Animator;

    aput-object v3, v4, v7

    aput-object v2, v4, v8

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :cond_0
    iput v10, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mStartValue:F

    iput v11, p0, Lcom/samsung/android/settings/notification/ZenScheduleRepeatButton;->mEndValue:F

    goto :goto_0
.end method
