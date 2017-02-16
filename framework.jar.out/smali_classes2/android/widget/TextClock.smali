.class public Landroid/widget/TextClock;
.super Landroid/widget/TextView;
.source "TextClock.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TextClock$1;,
        Landroid/widget/TextClock$2;,
        Landroid/widget/TextClock$FormatChangeObserver;
    }
.end annotation


# static fields
.field public static final DEFAULT_FORMAT_12_HOUR:Ljava/lang/CharSequence;

.field public static final DEFAULT_FORMAT_24_HOUR:Ljava/lang/CharSequence;


# instance fields
.field private mAttached:Z

.field private mDescFormat:Ljava/lang/CharSequence;

.field private mDescFormat12:Ljava/lang/CharSequence;

.field private mDescFormat24:Ljava/lang/CharSequence;

.field private mFormat:Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private mFormat12:Ljava/lang/CharSequence;

.field private mFormat24:Ljava/lang/CharSequence;

.field private mFormatChangeObserver:Landroid/database/ContentObserver;

.field private mHasSeconds:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mShowCurrentUserTime:Z

.field private final mTicker:Ljava/lang/Runnable;

.field private mTime:Ljava/util/Calendar;

.field private mTimeZone:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Landroid/widget/TextClock;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextClock;->mTicker:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get1(Landroid/widget/TextClock;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextClock;->mTimeZone:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/widget/TextClock;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/TextClock;->chooseFormat()V

    return-void
.end method

.method static synthetic -wrap1(Landroid/widget/TextClock;Ljava/lang/String;)V
    .locals 0
    .param p1, "timeZone"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/TextClock;->createTime(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap2(Landroid/widget/TextClock;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/TextClock;->onTimeChanged()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 111
    const-string/jumbo v0, "h:mm a"

    sput-object v0, Landroid/widget/TextClock;->DEFAULT_FORMAT_12_HOUR:Ljava/lang/CharSequence;

    .line 125
    const-string/jumbo v0, "H:mm"

    sput-object v0, Landroid/widget/TextClock;->DEFAULT_FORMAT_24_HOUR:Ljava/lang/CharSequence;

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 206
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 166
    new-instance v0, Landroid/widget/TextClock$1;

    invoke-direct {v0, p0}, Landroid/widget/TextClock$1;-><init>(Landroid/widget/TextClock;)V

    iput-object v0, p0, Landroid/widget/TextClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 187
    new-instance v0, Landroid/widget/TextClock$2;

    invoke-direct {v0, p0}, Landroid/widget/TextClock$2;-><init>(Landroid/widget/TextClock;)V

    iput-object v0, p0, Landroid/widget/TextClock;->mTicker:Ljava/lang/Runnable;

    .line 207
    invoke-direct {p0}, Landroid/widget/TextClock;->init()V

    .line 205
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 223
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/TextClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 222
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 238
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/TextClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 237
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 242
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 166
    new-instance v1, Landroid/widget/TextClock$1;

    invoke-direct {v1, p0}, Landroid/widget/TextClock$1;-><init>(Landroid/widget/TextClock;)V

    iput-object v1, p0, Landroid/widget/TextClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 187
    new-instance v1, Landroid/widget/TextClock$2;

    invoke-direct {v1, p0}, Landroid/widget/TextClock$2;-><init>(Landroid/widget/TextClock;)V

    iput-object v1, p0, Landroid/widget/TextClock;->mTicker:Ljava/lang/Runnable;

    .line 245
    sget-object v1, Lcom/android/internal/R$styleable;->TextClock:[I

    .line 244
    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 247
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/TextClock;->mFormat12:Ljava/lang/CharSequence;

    .line 248
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/TextClock;->mFormat24:Ljava/lang/CharSequence;

    .line 249
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/TextClock;->mTimeZone:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 254
    invoke-direct {p0}, Landroid/widget/TextClock;->init()V

    .line 241
    return-void

    .line 250
    :catchall_0
    move-exception v1

    .line 251
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 250
    throw v1
.end method

.method private static abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .param p0, "a"    # Ljava/lang/CharSequence;
    .param p1, "b"    # Ljava/lang/CharSequence;
    .param p2, "c"    # Ljava/lang/CharSequence;

    .prologue
    .line 530
    if-nez p0, :cond_1

    if-nez p1, :cond_0

    .end local p2    # "c":Ljava/lang/CharSequence;
    :goto_0
    return-object p2

    .restart local p2    # "c":Ljava/lang/CharSequence;
    :cond_0
    move-object p2, p1

    goto :goto_0

    :cond_1
    move-object p2, p0

    goto :goto_0
.end method

.method private calcPersiCalendar(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 26
    .param p1, "calendar"    # Ljava/util/Calendar;

    .prologue
    .line 647
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 648
    .local v5, "adjustPrimaryCalendarStart":Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 649
    .local v4, "adjustPrimaryCalendarEnd":Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 650
    .local v7, "adjustSecondaryCalendarStart":Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 652
    .local v6, "adjustSecondaryCalendarEnd":Ljava/util/Calendar;
    const/16 v21, 0x7ed

    const/16 v22, 0x2

    const/16 v23, 0x13

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v5, v0, v1, v2}, Ljava/util/Calendar;->set(III)V

    .line 653
    const/16 v21, 0x7ee

    const/16 v22, 0x2

    const/16 v23, 0x14

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v4, v0, v1, v2}, Ljava/util/Calendar;->set(III)V

    .line 654
    const/16 v21, 0x7f1

    const/16 v22, 0x2

    const/16 v23, 0x13

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v7, v0, v1, v2}, Ljava/util/Calendar;->set(III)V

    .line 655
    const/16 v21, 0x7f2

    const/16 v22, 0x2

    const/16 v23, 0x14

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v6, v0, v1, v2}, Ljava/util/Calendar;->set(III)V

    .line 657
    const/4 v11, 0x0

    .line 658
    .local v11, "isFakeCalendar":Z
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_1

    .line 659
    :cond_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v21

    .line 658
    if-eqz v21, :cond_2

    .line 660
    :cond_1
    const/16 v21, 0x5

    const/16 v22, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 661
    const/4 v11, 0x1

    .line 663
    :cond_2
    new-instance v16, Ljava/util/Date;

    invoke-virtual/range {p1 .. p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v22

    move-object/from16 v0, v16

    move-wide/from16 v1, v22

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 665
    .local v16, "today":Ljava/util/Date;
    invoke-virtual/range {v16 .. v16}, Ljava/util/Date;->getYear()I

    move-result v21

    move/from16 v0, v21

    add-int/lit16 v0, v0, 0x76c

    move/from16 v19, v0

    .line 666
    .local v19, "todayYear":I
    invoke-virtual/range {v16 .. v16}, Ljava/util/Date;->getMonth()I

    move-result v21

    add-int/lit8 v18, v21, 0x1

    .line 667
    .local v18, "todayMonth":I
    invoke-virtual/range {v16 .. v16}, Ljava/util/Date;->getDate()I

    move-result v17

    .line 669
    .local v17, "todayDate":I
    const/16 v21, 0xc

    move/from16 v0, v21

    new-array v8, v0, [I

    .line 670
    .local v8, "cal1":[I
    const/16 v21, 0xc

    move/from16 v0, v21

    new-array v9, v0, [I

    .line 672
    .local v9, "cal2":[I
    const/16 v21, 0x0

    const/16 v22, 0x0

    aput v21, v8, v22

    .line 673
    const/16 v21, 0x1f

    const/16 v22, 0x1

    aput v21, v8, v22

    .line 674
    const/16 v21, 0x3b

    const/16 v22, 0x2

    aput v21, v8, v22

    .line 675
    const/16 v21, 0x5a

    const/16 v22, 0x3

    aput v21, v8, v22

    .line 676
    const/16 v21, 0x78

    const/16 v22, 0x4

    aput v21, v8, v22

    .line 677
    const/16 v21, 0x97

    const/16 v22, 0x5

    aput v21, v8, v22

    .line 678
    const/16 v21, 0xb5

    const/16 v22, 0x6

    aput v21, v8, v22

    .line 679
    const/16 v21, 0xd4

    const/16 v22, 0x7

    aput v21, v8, v22

    .line 680
    const/16 v21, 0xf3

    const/16 v22, 0x8

    aput v21, v8, v22

    .line 681
    const/16 v21, 0x111

    const/16 v22, 0x9

    aput v21, v8, v22

    .line 682
    const/16 v21, 0x130

    const/16 v22, 0xa

    aput v21, v8, v22

    .line 683
    const/16 v21, 0x14e

    const/16 v22, 0xb

    aput v21, v8, v22

    .line 685
    const/16 v21, 0x0

    const/16 v22, 0x0

    aput v21, v9, v22

    .line 686
    const/16 v21, 0x1f

    const/16 v22, 0x1

    aput v21, v9, v22

    .line 687
    const/16 v21, 0x3c

    const/16 v22, 0x2

    aput v21, v9, v22

    .line 688
    const/16 v21, 0x5b

    const/16 v22, 0x3

    aput v21, v9, v22

    .line 689
    const/16 v21, 0x79

    const/16 v22, 0x4

    aput v21, v9, v22

    .line 690
    const/16 v21, 0x98

    const/16 v22, 0x5

    aput v21, v9, v22

    .line 691
    const/16 v21, 0xb6

    const/16 v22, 0x6

    aput v21, v9, v22

    .line 692
    const/16 v21, 0xd5

    const/16 v22, 0x7

    aput v21, v9, v22

    .line 693
    const/16 v21, 0xf4

    const/16 v22, 0x8

    aput v21, v9, v22

    .line 694
    const/16 v21, 0x112

    const/16 v22, 0x9

    aput v21, v9, v22

    .line 695
    const/16 v21, 0x131

    const/16 v22, 0xa

    aput v21, v9, v22

    .line 696
    const/16 v21, 0x14f

    const/16 v22, 0xb

    aput v21, v9, v22

    .line 698
    rem-int/lit8 v21, v19, 0x4

    if-eqz v21, :cond_9

    .line 699
    add-int/lit8 v21, v18, -0x1

    aget v21, v8, v21

    add-int v10, v21, v17

    .line 701
    .local v10, "date":I
    const/16 v21, 0x4f

    move/from16 v0, v21

    if-le v10, v0, :cond_7

    .line 702
    add-int/lit8 v10, v10, -0x4f

    .line 703
    const/16 v21, 0xba

    move/from16 v0, v21

    if-gt v10, v0, :cond_6

    .line 704
    rem-int/lit8 v21, v10, 0x1f

    packed-switch v21, :pswitch_data_0

    .line 710
    div-int/lit8 v21, v10, 0x1f

    add-int/lit8 v14, v21, 0x1

    .line 711
    .local v14, "month":I
    rem-int/lit8 v10, v10, 0x1f

    .line 714
    :goto_0
    move/from16 v0, v19

    add-int/lit16 v0, v0, -0x26d

    move/from16 v20, v0

    .line 808
    .local v20, "year":I
    :goto_1
    if-nez v11, :cond_4

    .line 809
    const/16 v21, 0x7ee

    move/from16 v0, v19

    move/from16 v1, v21

    if-eq v0, v1, :cond_3

    const/16 v21, 0x7f2

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    :cond_3
    const/16 v21, 0x3

    move/from16 v0, v18

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    const/16 v21, 0x14

    move/from16 v0, v17

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    .line 810
    add-int/lit8 v10, v10, 0x1

    .line 814
    :cond_4
    const-string/jumbo v15, ""

    .line 815
    .local v15, "monthStr":Ljava/lang/String;
    const/4 v12, 0x0

    .line 817
    .local v12, "isLanguageEnglish":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextClock;->mFormat:Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextClock;->mFormat:Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v21

    const-string/jumbo v22, "eng"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 818
    const/4 v12, 0x1

    .line 821
    :cond_5
    packed-switch v14, :pswitch_data_1

    .line 859
    :goto_2
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "("

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "%d"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    const/16 v25, 0x0

    aput-object v24, v23, v25

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, ")"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    return-object v21

    .line 706
    .end local v12    # "isLanguageEnglish":Z
    .end local v14    # "month":I
    .end local v15    # "monthStr":Ljava/lang/String;
    .end local v20    # "year":I
    :pswitch_0
    div-int/lit8 v14, v10, 0x1f

    .line 707
    .restart local v14    # "month":I
    const/16 v10, 0x1f

    .line 708
    goto/16 :goto_0

    .line 716
    .end local v14    # "month":I
    :cond_6
    add-int/lit16 v10, v10, -0xba

    .line 718
    rem-int/lit8 v21, v10, 0x1e

    packed-switch v21, :pswitch_data_2

    .line 724
    div-int/lit8 v21, v10, 0x1e

    add-int/lit8 v14, v21, 0x7

    .line 725
    .restart local v14    # "month":I
    rem-int/lit8 v10, v10, 0x1e

    .line 728
    :goto_3
    move/from16 v0, v19

    add-int/lit16 v0, v0, -0x26d

    move/from16 v20, v0

    .restart local v20    # "year":I
    goto/16 :goto_1

    .line 720
    .end local v14    # "month":I
    .end local v20    # "year":I
    :pswitch_1
    div-int/lit8 v21, v10, 0x1e

    add-int/lit8 v14, v21, 0x6

    .line 721
    .restart local v14    # "month":I
    const/16 v10, 0x1e

    .line 722
    goto :goto_3

    .line 731
    .end local v14    # "month":I
    :cond_7
    const/16 v21, 0x7cc

    move/from16 v0, v19

    move/from16 v1, v21

    if-le v0, v1, :cond_8

    rem-int/lit8 v21, v19, 0x4

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_8

    .line 732
    const/16 v13, 0xb

    .line 736
    .local v13, "ld":I
    :goto_4
    add-int/2addr v10, v13

    .line 738
    rem-int/lit8 v21, v10, 0x1e

    packed-switch v21, :pswitch_data_3

    .line 744
    div-int/lit8 v21, v10, 0x1e

    add-int/lit8 v14, v21, 0xa

    .line 745
    .restart local v14    # "month":I
    rem-int/lit8 v10, v10, 0x1e

    .line 748
    :goto_5
    move/from16 v0, v19

    add-int/lit16 v0, v0, -0x26e

    move/from16 v20, v0

    .restart local v20    # "year":I
    goto/16 :goto_1

    .line 734
    .end local v13    # "ld":I
    .end local v14    # "month":I
    .end local v20    # "year":I
    :cond_8
    const/16 v13, 0xa

    .restart local v13    # "ld":I
    goto :goto_4

    .line 740
    :pswitch_2
    div-int/lit8 v21, v10, 0x1e

    add-int/lit8 v14, v21, 0x9

    .line 741
    .restart local v14    # "month":I
    const/16 v10, 0x1e

    .line 742
    goto :goto_5

    .line 751
    .end local v10    # "date":I
    .end local v13    # "ld":I
    .end local v14    # "month":I
    :cond_9
    add-int/lit8 v21, v18, -0x1

    aget v21, v9, v21

    add-int v10, v21, v17

    .line 753
    .restart local v10    # "date":I
    const/16 v21, 0x7cc

    move/from16 v0, v19

    move/from16 v1, v21

    if-lt v0, v1, :cond_a

    .line 754
    const/16 v13, 0x4f

    .line 758
    .restart local v13    # "ld":I
    :goto_6
    if-le v10, v13, :cond_c

    .line 759
    sub-int/2addr v10, v13

    .line 761
    const/16 v21, 0xba

    move/from16 v0, v21

    if-gt v10, v0, :cond_b

    .line 762
    rem-int/lit8 v21, v10, 0x1f

    packed-switch v21, :pswitch_data_4

    .line 768
    div-int/lit8 v21, v10, 0x1f

    add-int/lit8 v14, v21, 0x1

    .line 769
    .restart local v14    # "month":I
    rem-int/lit8 v10, v10, 0x1f

    .line 772
    :goto_7
    move/from16 v0, v19

    add-int/lit16 v0, v0, -0x26d

    move/from16 v20, v0

    .restart local v20    # "year":I
    goto/16 :goto_1

    .line 756
    .end local v13    # "ld":I
    .end local v14    # "month":I
    .end local v20    # "year":I
    :cond_a
    const/16 v13, 0x50

    .restart local v13    # "ld":I
    goto :goto_6

    .line 764
    :pswitch_3
    div-int/lit8 v14, v10, 0x1f

    .line 765
    .restart local v14    # "month":I
    const/16 v10, 0x1f

    .line 766
    goto :goto_7

    .line 774
    .end local v14    # "month":I
    :cond_b
    add-int/lit16 v10, v10, -0xba

    .line 776
    rem-int/lit8 v21, v10, 0x1e

    packed-switch v21, :pswitch_data_5

    .line 782
    div-int/lit8 v21, v10, 0x1e

    add-int/lit8 v14, v21, 0x7

    .line 783
    .restart local v14    # "month":I
    rem-int/lit8 v10, v10, 0x1e

    .line 786
    :goto_8
    move/from16 v0, v19

    add-int/lit16 v0, v0, -0x26d

    move/from16 v20, v0

    .restart local v20    # "year":I
    goto/16 :goto_1

    .line 778
    .end local v14    # "month":I
    .end local v20    # "year":I
    :pswitch_4
    div-int/lit8 v21, v10, 0x1e

    add-int/lit8 v14, v21, 0x6

    .line 779
    .restart local v14    # "month":I
    const/16 v10, 0x1e

    .line 780
    goto :goto_8

    .line 791
    .end local v14    # "month":I
    :cond_c
    add-int/lit8 v10, v10, 0xa

    .line 793
    rem-int/lit8 v21, v10, 0x1e

    packed-switch v21, :pswitch_data_6

    .line 799
    div-int/lit8 v21, v10, 0x1e

    add-int/lit8 v14, v21, 0xa

    .line 800
    .restart local v14    # "month":I
    rem-int/lit8 v10, v10, 0x1e

    .line 803
    :goto_9
    move/from16 v0, v19

    add-int/lit16 v0, v0, -0x26e

    move/from16 v20, v0

    .restart local v20    # "year":I
    goto/16 :goto_1

    .line 795
    .end local v14    # "month":I
    .end local v20    # "year":I
    :pswitch_5
    div-int/lit8 v21, v10, 0x1e

    add-int/lit8 v14, v21, 0x9

    .line 796
    .restart local v14    # "month":I
    const/16 v10, 0x1e

    .line 797
    goto :goto_9

    .line 823
    .end local v13    # "ld":I
    .restart local v12    # "isLanguageEnglish":Z
    .restart local v15    # "monthStr":Ljava/lang/String;
    .restart local v20    # "year":I
    :pswitch_6
    if-eqz v12, :cond_d

    const-string/jumbo v15, "Farvardin"

    goto/16 :goto_2

    :cond_d
    const-string/jumbo v15, "\u0641\u0631\u0648\u0631\u062f\u064a\u0646"

    goto/16 :goto_2

    .line 826
    :pswitch_7
    if-eqz v12, :cond_e

    const-string/jumbo v15, "Ordibehesht"

    goto/16 :goto_2

    :cond_e
    const-string/jumbo v15, "\u0627\u0631\u062f\u064a\u0628\u0647\u0634\u062a"

    goto/16 :goto_2

    .line 829
    :pswitch_8
    if-eqz v12, :cond_f

    const-string/jumbo v15, "Khordad"

    goto/16 :goto_2

    :cond_f
    const-string/jumbo v15, "\u062e\u0631\u062f\u0627\u062f"

    goto/16 :goto_2

    .line 832
    :pswitch_9
    if-eqz v12, :cond_10

    const-string/jumbo v15, "Tir"

    goto/16 :goto_2

    :cond_10
    const-string/jumbo v15, "\u062a\u064a\u0631"

    goto/16 :goto_2

    .line 835
    :pswitch_a
    if-eqz v12, :cond_11

    const-string/jumbo v15, "Mordad"

    goto/16 :goto_2

    :cond_11
    const-string/jumbo v15, "\u0645\u0631\u062f\u0627\u062f"

    goto/16 :goto_2

    .line 838
    :pswitch_b
    if-eqz v12, :cond_12

    const-string/jumbo v15, "Shahrivar"

    goto/16 :goto_2

    :cond_12
    const-string/jumbo v15, "\u0634\u0647\u0631\u064a\u0648\u0631"

    goto/16 :goto_2

    .line 841
    :pswitch_c
    if-eqz v12, :cond_13

    const-string/jumbo v15, "Mehr"

    goto/16 :goto_2

    :cond_13
    const-string/jumbo v15, "\u0645\u0647\u0631"

    goto/16 :goto_2

    .line 844
    :pswitch_d
    if-eqz v12, :cond_14

    const-string/jumbo v15, "Aban"

    goto/16 :goto_2

    :cond_14
    const-string/jumbo v15, "\u0622\u0628\u0627\u0646"

    goto/16 :goto_2

    .line 847
    :pswitch_e
    if-eqz v12, :cond_15

    const-string/jumbo v15, "Azar"

    goto/16 :goto_2

    :cond_15
    const-string/jumbo v15, "\u0622\u0630\u0631"

    goto/16 :goto_2

    .line 850
    :pswitch_f
    if-eqz v12, :cond_16

    const-string/jumbo v15, "Dey"

    goto/16 :goto_2

    :cond_16
    const-string/jumbo v15, "\u062f\u06cc"

    goto/16 :goto_2

    .line 853
    :pswitch_10
    if-eqz v12, :cond_17

    const-string/jumbo v15, "Bahman"

    goto/16 :goto_2

    :cond_17
    const-string/jumbo v15, "\u0628\u0647\u0645\u0646"

    goto/16 :goto_2

    .line 856
    :pswitch_11
    if-eqz v12, :cond_18

    const-string/jumbo v15, "Esfand"

    goto/16 :goto_2

    :cond_18
    const-string/jumbo v15, "\u0627\u0633\u0641\u0646\u062f"

    goto/16 :goto_2

    .line 704
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 821
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch

    .line 718
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    .line 738
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    .line 762
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch

    .line 776
    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_4
    .end packed-switch

    .line 793
    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_5
    .end packed-switch
.end method

.method private chooseFormat()V
    .locals 1

    .prologue
    .line 484
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/TextClock;->chooseFormat(Z)V

    .line 483
    return-void
.end method

.method private chooseFormat(Z)V
    .locals 6
    .param p1, "handleTicker"    # Z

    .prologue
    .line 505
    invoke-virtual {p0}, Landroid/widget/TextClock;->is24HourModeEnabled()Z

    move-result v0

    .line 507
    .local v0, "format24Requested":Z
    invoke-virtual {p0}, Landroid/widget/TextClock;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v3}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v2

    .line 509
    .local v2, "ld":Llibcore/icu/LocaleData;
    if-eqz v0, :cond_1

    .line 510
    iget-object v3, p0, Landroid/widget/TextClock;->mFormat24:Ljava/lang/CharSequence;

    iget-object v4, p0, Landroid/widget/TextClock;->mFormat12:Ljava/lang/CharSequence;

    iget-object v5, v2, Llibcore/icu/LocaleData;->timeFormat_Hm:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Landroid/widget/TextClock;->abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/TextClock;->mFormat:Ljava/lang/CharSequence;

    .line 511
    iget-object v3, p0, Landroid/widget/TextClock;->mDescFormat24:Ljava/lang/CharSequence;

    iget-object v4, p0, Landroid/widget/TextClock;->mDescFormat12:Ljava/lang/CharSequence;

    iget-object v5, p0, Landroid/widget/TextClock;->mFormat:Ljava/lang/CharSequence;

    invoke-static {v3, v4, v5}, Landroid/widget/TextClock;->abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/TextClock;->mDescFormat:Ljava/lang/CharSequence;

    .line 517
    :goto_0
    iget-boolean v1, p0, Landroid/widget/TextClock;->mHasSeconds:Z

    .line 518
    .local v1, "hadSeconds":Z
    iget-object v3, p0, Landroid/widget/TextClock;->mFormat:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/format/DateFormat;->hasSeconds(Ljava/lang/CharSequence;)Z

    move-result v3

    iput-boolean v3, p0, Landroid/widget/TextClock;->mHasSeconds:Z

    .line 520
    if-eqz p1, :cond_0

    iget-boolean v3, p0, Landroid/widget/TextClock;->mAttached:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Landroid/widget/TextClock;->mHasSeconds:Z

    if-eq v1, v3, :cond_0

    .line 521
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextClock;->getHandler()Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/TextClock;->mTicker:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 504
    :cond_0
    :goto_1
    return-void

    .line 513
    .end local v1    # "hadSeconds":Z
    :cond_1
    iget-object v3, p0, Landroid/widget/TextClock;->mFormat12:Ljava/lang/CharSequence;

    iget-object v4, p0, Landroid/widget/TextClock;->mFormat24:Ljava/lang/CharSequence;

    iget-object v5, v2, Llibcore/icu/LocaleData;->timeFormat_hm:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Landroid/widget/TextClock;->abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/TextClock;->mFormat:Ljava/lang/CharSequence;

    .line 514
    iget-object v3, p0, Landroid/widget/TextClock;->mDescFormat12:Ljava/lang/CharSequence;

    iget-object v4, p0, Landroid/widget/TextClock;->mDescFormat24:Ljava/lang/CharSequence;

    iget-object v5, p0, Landroid/widget/TextClock;->mFormat:Ljava/lang/CharSequence;

    invoke-static {v3, v4, v5}, Landroid/widget/TextClock;->abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/TextClock;->mDescFormat:Ljava/lang/CharSequence;

    goto :goto_0

    .line 522
    .restart local v1    # "hadSeconds":Z
    :cond_2
    iget-object v3, p0, Landroid/widget/TextClock;->mTicker:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    goto :goto_1
.end method

.method private createTime(Ljava/lang/String;)V
    .locals 1
    .param p1, "timeZone"    # Ljava/lang/String;

    .prologue
    .line 274
    if-eqz p1, :cond_0

    .line 275
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextClock;->mTime:Ljava/util/Calendar;

    .line 273
    :goto_0
    return-void

    .line 277
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextClock;->mTime:Ljava/util/Calendar;

    goto :goto_0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 258
    iget-object v1, p0, Landroid/widget/TextClock;->mFormat12:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextClock;->mFormat24:Ljava/lang/CharSequence;

    if-nez v1, :cond_2

    .line 259
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextClock;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v1}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v0

    .line 260
    .local v0, "ld":Llibcore/icu/LocaleData;
    iget-object v1, p0, Landroid/widget/TextClock;->mFormat12:Ljava/lang/CharSequence;

    if-nez v1, :cond_1

    .line 261
    iget-object v1, v0, Llibcore/icu/LocaleData;->timeFormat_hm:Ljava/lang/String;

    iput-object v1, p0, Landroid/widget/TextClock;->mFormat12:Ljava/lang/CharSequence;

    .line 263
    :cond_1
    iget-object v1, p0, Landroid/widget/TextClock;->mFormat24:Ljava/lang/CharSequence;

    if-nez v1, :cond_2

    .line 264
    iget-object v1, v0, Llibcore/icu/LocaleData;->timeFormat_Hm:Ljava/lang/String;

    iput-object v1, p0, Landroid/widget/TextClock;->mFormat24:Ljava/lang/CharSequence;

    .line 268
    .end local v0    # "ld":Llibcore/icu/LocaleData;
    :cond_2
    iget-object v1, p0, Landroid/widget/TextClock;->mTimeZone:Ljava/lang/String;

    invoke-direct {p0, v1}, Landroid/widget/TextClock;->createTime(Ljava/lang/String;)V

    .line 270
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/widget/TextClock;->chooseFormat(Z)V

    .line 257
    return-void
.end method

.method private onTimeChanged()V
    .locals 4

    .prologue
    .line 613
    iget-object v0, p0, Landroid/widget/TextClock;->mTime:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 616
    iget-object v0, p0, Landroid/widget/TextClock;->mFormat:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextClock;->mFormat:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "per"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 617
    iget-object v0, p0, Landroid/widget/TextClock;->mTime:Ljava/util/Calendar;

    invoke-direct {p0, v0}, Landroid/widget/TextClock;->calcPersiCalendar(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextClock;->setText(Ljava/lang/CharSequence;)V

    .line 622
    :goto_0
    iget-object v0, p0, Landroid/widget/TextClock;->mDescFormat:Ljava/lang/CharSequence;

    iget-object v1, p0, Landroid/widget/TextClock;->mTime:Ljava/util/Calendar;

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextClock;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 612
    return-void

    .line 619
    :cond_0
    iget-object v0, p0, Landroid/widget/TextClock;->mFormat:Ljava/lang/CharSequence;

    iget-object v1, p0, Landroid/widget/TextClock;->mTime:Ljava/util/Calendar;

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextClock;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private registerObserver()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 586
    invoke-virtual {p0}, Landroid/widget/TextClock;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 587
    iget-object v1, p0, Landroid/widget/TextClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    if-nez v1, :cond_0

    .line 588
    new-instance v1, Landroid/widget/TextClock$FormatChangeObserver;

    invoke-virtual {p0}, Landroid/widget/TextClock;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/widget/TextClock$FormatChangeObserver;-><init>(Landroid/widget/TextClock;Landroid/os/Handler;)V

    iput-object v1, p0, Landroid/widget/TextClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    .line 590
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextClock;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 591
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-boolean v1, p0, Landroid/widget/TextClock;->mShowCurrentUserTime:Z

    if-eqz v1, :cond_2

    .line 592
    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    .line 593
    iget-object v2, p0, Landroid/widget/TextClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    const/4 v3, -0x1

    .line 592
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 585
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    :cond_1
    :goto_0
    return-void

    .line 595
    .restart local v0    # "resolver":Landroid/content/ContentResolver;
    :cond_2
    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    .line 596
    iget-object v2, p0, Landroid/widget/TextClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    .line 595
    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method private registerReceiver()V
    .locals 6

    .prologue
    .line 568
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 570
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.TIME_TICK"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 571
    const-string/jumbo v0, "android.intent.action.TIME_SET"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 572
    const-string/jumbo v0, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 581
    invoke-virtual {p0}, Landroid/widget/TextClock;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/TextClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    .line 582
    invoke-virtual {p0}, Landroid/widget/TextClock;->getHandler()Landroid/os/Handler;

    move-result-object v5

    const/4 v4, 0x0

    .line 581
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 567
    return-void
.end method

.method private unregisterObserver()V
    .locals 2

    .prologue
    .line 606
    iget-object v1, p0, Landroid/widget/TextClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    if-eqz v1, :cond_0

    .line 607
    invoke-virtual {p0}, Landroid/widget/TextClock;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 608
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Landroid/widget/TextClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 605
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    :cond_0
    return-void
.end method

.method private unregisterReceiver()V
    .locals 2

    .prologue
    .line 602
    invoke-virtual {p0}, Landroid/widget/TextClock;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/TextClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 601
    return-void
.end method


# virtual methods
.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 4
    .param p1, "stream"    # Landroid/view/ViewHierarchyEncoder;

    .prologue
    const/4 v2, 0x0

    .line 628
    invoke-super {p0, p1}, Landroid/widget/TextView;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 630
    invoke-virtual {p0}, Landroid/widget/TextClock;->getFormat12Hour()Ljava/lang/CharSequence;

    move-result-object v0

    .line 631
    .local v0, "s":Ljava/lang/CharSequence;
    const-string/jumbo v3, "format12Hour"

    if-nez v0, :cond_0

    move-object v1, v2

    :goto_0
    invoke-virtual {p1, v3, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    invoke-virtual {p0}, Landroid/widget/TextClock;->getFormat24Hour()Ljava/lang/CharSequence;

    move-result-object v0

    .line 634
    const-string/jumbo v3, "format24Hour"

    if-nez v0, :cond_1

    move-object v1, v2

    :goto_1
    invoke-virtual {p1, v3, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    const-string/jumbo v1, "format"

    iget-object v3, p0, Landroid/widget/TextClock;->mFormat:Ljava/lang/CharSequence;

    if-nez v3, :cond_2

    :goto_2
    invoke-virtual {p1, v1, v2}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    const-string/jumbo v1, "hasSeconds"

    iget-boolean v2, p0, Landroid/widget/TextClock;->mHasSeconds:Z

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 627
    return-void

    .line 631
    :cond_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 634
    :cond_1
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 635
    :cond_2
    iget-object v2, p0, Landroid/widget/TextClock;->mFormat:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2
.end method

.method public getFormat()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Landroid/widget/TextClock;->mFormat:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getFormat12Hour()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 293
    iget-object v0, p0, Landroid/widget/TextClock;->mFormat12:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getFormat24Hour()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 352
    iget-object v0, p0, Landroid/widget/TextClock;->mFormat24:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTimeZone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Landroid/widget/TextClock;->mTimeZone:Ljava/lang/String;

    return-object v0
.end method

.method public is24HourModeEnabled()Z
    .locals 2

    .prologue
    .line 433
    iget-boolean v0, p0, Landroid/widget/TextClock;->mShowCurrentUserTime:Z

    if-eqz v0, :cond_0

    .line 434
    invoke-virtual {p0}, Landroid/widget/TextClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v0

    return v0

    .line 436
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 535
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 537
    iget-boolean v0, p0, Landroid/widget/TextClock;->mAttached:Z

    if-nez v0, :cond_0

    .line 538
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextClock;->mAttached:Z

    .line 540
    invoke-direct {p0}, Landroid/widget/TextClock;->registerReceiver()V

    .line 541
    invoke-direct {p0}, Landroid/widget/TextClock;->registerObserver()V

    .line 543
    iget-object v0, p0, Landroid/widget/TextClock;->mTimeZone:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/widget/TextClock;->createTime(Ljava/lang/String;)V

    .line 545
    iget-boolean v0, p0, Landroid/widget/TextClock;->mHasSeconds:Z

    if-eqz v0, :cond_1

    .line 546
    iget-object v0, p0, Landroid/widget/TextClock;->mTicker:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 534
    :cond_0
    :goto_0
    return-void

    .line 548
    :cond_1
    invoke-direct {p0}, Landroid/widget/TextClock;->onTimeChanged()V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 555
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 557
    iget-boolean v0, p0, Landroid/widget/TextClock;->mAttached:Z

    if-eqz v0, :cond_0

    .line 558
    invoke-direct {p0}, Landroid/widget/TextClock;->unregisterReceiver()V

    .line 559
    invoke-direct {p0}, Landroid/widget/TextClock;->unregisterObserver()V

    .line 561
    invoke-virtual {p0}, Landroid/widget/TextClock;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/TextClock;->mTicker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 563
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextClock;->mAttached:Z

    .line 554
    :cond_0
    return-void
.end method

.method public setContentDescriptionFormat12Hour(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "format"    # Ljava/lang/CharSequence;

    .prologue
    .line 334
    iput-object p1, p0, Landroid/widget/TextClock;->mDescFormat12:Ljava/lang/CharSequence;

    .line 336
    invoke-direct {p0}, Landroid/widget/TextClock;->chooseFormat()V

    .line 337
    invoke-direct {p0}, Landroid/widget/TextClock;->onTimeChanged()V

    .line 333
    return-void
.end method

.method public setContentDescriptionFormat24Hour(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "format"    # Ljava/lang/CharSequence;

    .prologue
    .line 392
    iput-object p1, p0, Landroid/widget/TextClock;->mDescFormat24:Ljava/lang/CharSequence;

    .line 394
    invoke-direct {p0}, Landroid/widget/TextClock;->chooseFormat()V

    .line 395
    invoke-direct {p0}, Landroid/widget/TextClock;->onTimeChanged()V

    .line 391
    return-void
.end method

.method public setFormat12Hour(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "format"    # Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 323
    iput-object p1, p0, Landroid/widget/TextClock;->mFormat12:Ljava/lang/CharSequence;

    .line 325
    invoke-direct {p0}, Landroid/widget/TextClock;->chooseFormat()V

    .line 326
    invoke-direct {p0}, Landroid/widget/TextClock;->onTimeChanged()V

    .line 322
    return-void
.end method

.method public setFormat24Hour(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "format"    # Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 381
    iput-object p1, p0, Landroid/widget/TextClock;->mFormat24:Ljava/lang/CharSequence;

    .line 383
    invoke-direct {p0}, Landroid/widget/TextClock;->chooseFormat()V

    .line 384
    invoke-direct {p0}, Landroid/widget/TextClock;->onTimeChanged()V

    .line 380
    return-void
.end method

.method public setShowCurrentUserTime(Z)V
    .locals 0
    .param p1, "showCurrentUserTime"    # Z

    .prologue
    .line 406
    iput-boolean p1, p0, Landroid/widget/TextClock;->mShowCurrentUserTime:Z

    .line 408
    invoke-direct {p0}, Landroid/widget/TextClock;->chooseFormat()V

    .line 409
    invoke-direct {p0}, Landroid/widget/TextClock;->onTimeChanged()V

    .line 410
    invoke-direct {p0}, Landroid/widget/TextClock;->unregisterObserver()V

    .line 411
    invoke-direct {p0}, Landroid/widget/TextClock;->registerObserver()V

    .line 405
    return-void
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .locals 0
    .param p1, "timeZone"    # Ljava/lang/String;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 471
    iput-object p1, p0, Landroid/widget/TextClock;->mTimeZone:Ljava/lang/String;

    .line 473
    invoke-direct {p0, p1}, Landroid/widget/TextClock;->createTime(Ljava/lang/String;)V

    .line 474
    invoke-direct {p0}, Landroid/widget/TextClock;->onTimeChanged()V

    .line 470
    return-void
.end method
