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
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DEFAULT_FORMAT_24_HOUR:Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
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

.field private mRegistered:Z

.field private mShouldChooseFormat:Z

.field private mShouldRunTicker:Z

.field private mShowCurrentUserTime:Z

.field private final mTicker:Ljava/lang/Runnable;

.field private mTime:Ljava/util/Calendar;

.field private mTimeZone:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Landroid/widget/TextClock;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/TextClock;->mShouldChooseFormat:Z

    return v0
.end method

.method static synthetic -get1(Landroid/widget/TextClock;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/TextClock;->mShouldRunTicker:Z

    return v0
.end method

.method static synthetic -get2(Landroid/widget/TextClock;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextClock;->mTicker:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get3(Landroid/widget/TextClock;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextClock;->mTimeZone:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Landroid/widget/TextClock;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/widget/TextClock;->mShouldChooseFormat:Z

    return p1
.end method

.method static synthetic -wrap0(Landroid/widget/TextClock;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/TextClock;->chooseFormat()V

    return-void
.end method

.method static synthetic -wrap1(Landroid/widget/TextClock;Ljava/lang/String;)V
    .locals 0

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

    const-string/jumbo v0, "h:mm a"

    sput-object v0, Landroid/widget/TextClock;->DEFAULT_FORMAT_12_HOUR:Ljava/lang/CharSequence;

    const-string/jumbo v0, "H:mm"

    sput-object v0, Landroid/widget/TextClock;->DEFAULT_FORMAT_24_HOUR:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/TextClock$1;

    invoke-direct {v0, p0}, Landroid/widget/TextClock$1;-><init>(Landroid/widget/TextClock;)V

    iput-object v0, p0, Landroid/widget/TextClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/widget/TextClock$2;

    invoke-direct {v0, p0}, Landroid/widget/TextClock$2;-><init>(Landroid/widget/TextClock;)V

    iput-object v0, p0, Landroid/widget/TextClock;->mTicker:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/widget/TextClock;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/TextClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/TextClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v1, Landroid/widget/TextClock$1;

    invoke-direct {v1, p0}, Landroid/widget/TextClock$1;-><init>(Landroid/widget/TextClock;)V

    iput-object v1, p0, Landroid/widget/TextClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/widget/TextClock$2;

    invoke-direct {v1, p0}, Landroid/widget/TextClock$2;-><init>(Landroid/widget/TextClock;)V

    iput-object v1, p0, Landroid/widget/TextClock;->mTicker:Ljava/lang/Runnable;

    sget-object v1, Lcom/android/internal/R$styleable;->TextClock:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/TextClock;->mFormat12:Ljava/lang/CharSequence;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/TextClock;->mFormat24:Ljava/lang/CharSequence;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/TextClock;->mTimeZone:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0}, Landroid/widget/TextClock;->init()V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method private static abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    :goto_0
    return-object p2

    :cond_0
    move-object p2, p1

    goto :goto_0

    :cond_1
    move-object p2, p0

    goto :goto_0
.end method

.method private calcPersiCalendar(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 26

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    const/16 v21, 0x7ed

    const/16 v22, 0x2

    const/16 v23, 0x13

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v5, v0, v1, v2}, Ljava/util/Calendar;->set(III)V

    const/16 v21, 0x7ee

    const/16 v22, 0x2

    const/16 v23, 0x14

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v4, v0, v1, v2}, Ljava/util/Calendar;->set(III)V

    const/16 v21, 0x7f1

    const/16 v22, 0x2

    const/16 v23, 0x13

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v7, v0, v1, v2}, Ljava/util/Calendar;->set(III)V

    const/16 v21, 0x7f2

    const/16 v22, 0x2

    const/16 v23, 0x14

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v6, v0, v1, v2}, Ljava/util/Calendar;->set(III)V

    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_1

    :cond_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2

    :cond_1
    const/16 v21, 0x5

    const/16 v22, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    const/4 v11, 0x1

    :cond_2
    new-instance v16, Ljava/util/Date;

    invoke-virtual/range {p1 .. p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v22

    move-object/from16 v0, v16

    move-wide/from16 v1, v22

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v16 .. v16}, Ljava/util/Date;->getYear()I

    move-result v21

    move/from16 v0, v21

    add-int/lit16 v0, v0, 0x76c

    move/from16 v19, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/Date;->getMonth()I

    move-result v21

    add-int/lit8 v18, v21, 0x1

    invoke-virtual/range {v16 .. v16}, Ljava/util/Date;->getDate()I

    move-result v17

    const/16 v21, 0xc

    move/from16 v0, v21

    new-array v8, v0, [I

    const/16 v21, 0xc

    move/from16 v0, v21

    new-array v9, v0, [I

    const/16 v21, 0x0

    const/16 v22, 0x0

    aput v21, v8, v22

    const/16 v21, 0x1f

    const/16 v22, 0x1

    aput v21, v8, v22

    const/16 v21, 0x3b

    const/16 v22, 0x2

    aput v21, v8, v22

    const/16 v21, 0x5a

    const/16 v22, 0x3

    aput v21, v8, v22

    const/16 v21, 0x78

    const/16 v22, 0x4

    aput v21, v8, v22

    const/16 v21, 0x97

    const/16 v22, 0x5

    aput v21, v8, v22

    const/16 v21, 0xb5

    const/16 v22, 0x6

    aput v21, v8, v22

    const/16 v21, 0xd4

    const/16 v22, 0x7

    aput v21, v8, v22

    const/16 v21, 0xf3

    const/16 v22, 0x8

    aput v21, v8, v22

    const/16 v21, 0x111

    const/16 v22, 0x9

    aput v21, v8, v22

    const/16 v21, 0x130

    const/16 v22, 0xa

    aput v21, v8, v22

    const/16 v21, 0x14e

    const/16 v22, 0xb

    aput v21, v8, v22

    const/16 v21, 0x0

    const/16 v22, 0x0

    aput v21, v9, v22

    const/16 v21, 0x1f

    const/16 v22, 0x1

    aput v21, v9, v22

    const/16 v21, 0x3c

    const/16 v22, 0x2

    aput v21, v9, v22

    const/16 v21, 0x5b

    const/16 v22, 0x3

    aput v21, v9, v22

    const/16 v21, 0x79

    const/16 v22, 0x4

    aput v21, v9, v22

    const/16 v21, 0x98

    const/16 v22, 0x5

    aput v21, v9, v22

    const/16 v21, 0xb6

    const/16 v22, 0x6

    aput v21, v9, v22

    const/16 v21, 0xd5

    const/16 v22, 0x7

    aput v21, v9, v22

    const/16 v21, 0xf4

    const/16 v22, 0x8

    aput v21, v9, v22

    const/16 v21, 0x112

    const/16 v22, 0x9

    aput v21, v9, v22

    const/16 v21, 0x131

    const/16 v22, 0xa

    aput v21, v9, v22

    const/16 v21, 0x14f

    const/16 v22, 0xb

    aput v21, v9, v22

    rem-int/lit8 v21, v19, 0x4

    if-eqz v21, :cond_9

    add-int/lit8 v21, v18, -0x1

    aget v21, v8, v21

    add-int v10, v21, v17

    const/16 v21, 0x4f

    move/from16 v0, v21

    if-le v10, v0, :cond_7

    add-int/lit8 v10, v10, -0x4f

    const/16 v21, 0xba

    move/from16 v0, v21

    if-gt v10, v0, :cond_6

    rem-int/lit8 v21, v10, 0x1f

    packed-switch v21, :pswitch_data_0

    div-int/lit8 v21, v10, 0x1f

    add-int/lit8 v14, v21, 0x1

    rem-int/lit8 v10, v10, 0x1f

    :goto_0
    move/from16 v0, v19

    add-int/lit16 v0, v0, -0x26d

    move/from16 v20, v0

    :goto_1
    if-nez v11, :cond_4

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

    add-int/lit8 v10, v10, 0x1

    :cond_4
    const-string/jumbo v15, ""

    const/4 v12, 0x0

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

    const/4 v12, 0x1

    :cond_5
    packed-switch v14, :pswitch_data_1

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

    :pswitch_0
    div-int/lit8 v14, v10, 0x1f

    const/16 v10, 0x1f

    goto/16 :goto_0

    :cond_6
    add-int/lit16 v10, v10, -0xba

    rem-int/lit8 v21, v10, 0x1e

    packed-switch v21, :pswitch_data_2

    div-int/lit8 v21, v10, 0x1e

    add-int/lit8 v14, v21, 0x7

    rem-int/lit8 v10, v10, 0x1e

    :goto_3
    move/from16 v0, v19

    add-int/lit16 v0, v0, -0x26d

    move/from16 v20, v0

    goto/16 :goto_1

    :pswitch_1
    div-int/lit8 v21, v10, 0x1e

    add-int/lit8 v14, v21, 0x6

    const/16 v10, 0x1e

    goto :goto_3

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

    const/16 v13, 0xb

    :goto_4
    add-int/2addr v10, v13

    rem-int/lit8 v21, v10, 0x1e

    packed-switch v21, :pswitch_data_3

    div-int/lit8 v21, v10, 0x1e

    add-int/lit8 v14, v21, 0xa

    rem-int/lit8 v10, v10, 0x1e

    :goto_5
    move/from16 v0, v19

    add-int/lit16 v0, v0, -0x26e

    move/from16 v20, v0

    goto/16 :goto_1

    :cond_8
    const/16 v13, 0xa

    goto :goto_4

    :pswitch_2
    div-int/lit8 v21, v10, 0x1e

    add-int/lit8 v14, v21, 0x9

    const/16 v10, 0x1e

    goto :goto_5

    :cond_9
    add-int/lit8 v21, v18, -0x1

    aget v21, v9, v21

    add-int v10, v21, v17

    const/16 v21, 0x7cc

    move/from16 v0, v19

    move/from16 v1, v21

    if-lt v0, v1, :cond_a

    const/16 v13, 0x4f

    :goto_6
    if-le v10, v13, :cond_c

    sub-int/2addr v10, v13

    const/16 v21, 0xba

    move/from16 v0, v21

    if-gt v10, v0, :cond_b

    rem-int/lit8 v21, v10, 0x1f

    packed-switch v21, :pswitch_data_4

    div-int/lit8 v21, v10, 0x1f

    add-int/lit8 v14, v21, 0x1

    rem-int/lit8 v10, v10, 0x1f

    :goto_7
    move/from16 v0, v19

    add-int/lit16 v0, v0, -0x26d

    move/from16 v20, v0

    goto/16 :goto_1

    :cond_a
    const/16 v13, 0x50

    goto :goto_6

    :pswitch_3
    div-int/lit8 v14, v10, 0x1f

    const/16 v10, 0x1f

    goto :goto_7

    :cond_b
    add-int/lit16 v10, v10, -0xba

    rem-int/lit8 v21, v10, 0x1e

    packed-switch v21, :pswitch_data_5

    div-int/lit8 v21, v10, 0x1e

    add-int/lit8 v14, v21, 0x7

    rem-int/lit8 v10, v10, 0x1e

    :goto_8
    move/from16 v0, v19

    add-int/lit16 v0, v0, -0x26d

    move/from16 v20, v0

    goto/16 :goto_1

    :pswitch_4
    div-int/lit8 v21, v10, 0x1e

    add-int/lit8 v14, v21, 0x6

    const/16 v10, 0x1e

    goto :goto_8

    :cond_c
    add-int/lit8 v10, v10, 0xa

    rem-int/lit8 v21, v10, 0x1e

    packed-switch v21, :pswitch_data_6

    div-int/lit8 v21, v10, 0x1e

    add-int/lit8 v14, v21, 0xa

    rem-int/lit8 v10, v10, 0x1e

    :goto_9
    move/from16 v0, v19

    add-int/lit16 v0, v0, -0x26e

    move/from16 v20, v0

    goto/16 :goto_1

    :pswitch_5
    div-int/lit8 v21, v10, 0x1e

    add-int/lit8 v14, v21, 0x9

    const/16 v10, 0x1e

    goto :goto_9

    :pswitch_6
    if-eqz v12, :cond_d

    const-string/jumbo v15, "Farvardin"

    goto/16 :goto_2

    :cond_d
    const-string/jumbo v15, "\u0641\u0631\u0648\u0631\u062f\u064a\u0646"

    goto/16 :goto_2

    :pswitch_7
    if-eqz v12, :cond_e

    const-string/jumbo v15, "Ordibehesht"

    goto/16 :goto_2

    :cond_e
    const-string/jumbo v15, "\u0627\u0631\u062f\u064a\u0628\u0647\u0634\u062a"

    goto/16 :goto_2

    :pswitch_8
    if-eqz v12, :cond_f

    const-string/jumbo v15, "Khordad"

    goto/16 :goto_2

    :cond_f
    const-string/jumbo v15, "\u062e\u0631\u062f\u0627\u062f"

    goto/16 :goto_2

    :pswitch_9
    if-eqz v12, :cond_10

    const-string/jumbo v15, "Tir"

    goto/16 :goto_2

    :cond_10
    const-string/jumbo v15, "\u062a\u064a\u0631"

    goto/16 :goto_2

    :pswitch_a
    if-eqz v12, :cond_11

    const-string/jumbo v15, "Mordad"

    goto/16 :goto_2

    :cond_11
    const-string/jumbo v15, "\u0645\u0631\u062f\u0627\u062f"

    goto/16 :goto_2

    :pswitch_b
    if-eqz v12, :cond_12

    const-string/jumbo v15, "Shahrivar"

    goto/16 :goto_2

    :cond_12
    const-string/jumbo v15, "\u0634\u0647\u0631\u064a\u0648\u0631"

    goto/16 :goto_2

    :pswitch_c
    if-eqz v12, :cond_13

    const-string/jumbo v15, "Mehr"

    goto/16 :goto_2

    :cond_13
    const-string/jumbo v15, "\u0645\u0647\u0631"

    goto/16 :goto_2

    :pswitch_d
    if-eqz v12, :cond_14

    const-string/jumbo v15, "Aban"

    goto/16 :goto_2

    :cond_14
    const-string/jumbo v15, "\u0622\u0628\u0627\u0646"

    goto/16 :goto_2

    :pswitch_e
    if-eqz v12, :cond_15

    const-string/jumbo v15, "Azar"

    goto/16 :goto_2

    :cond_15
    const-string/jumbo v15, "\u0622\u0630\u0631"

    goto/16 :goto_2

    :pswitch_f
    if-eqz v12, :cond_16

    const-string/jumbo v15, "Dey"

    goto/16 :goto_2

    :cond_16
    const-string/jumbo v15, "\u062f\u06cc"

    goto/16 :goto_2

    :pswitch_10
    if-eqz v12, :cond_17

    const-string/jumbo v15, "Bahman"

    goto/16 :goto_2

    :cond_17
    const-string/jumbo v15, "\u0628\u0647\u0645\u0646"

    goto/16 :goto_2

    :pswitch_11
    if-eqz v12, :cond_18

    const-string/jumbo v15, "Esfand"

    goto/16 :goto_2

    :cond_18
    const-string/jumbo v15, "\u0627\u0633\u0641\u0646\u062f"

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

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

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_4
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_5
    .end packed-switch
.end method

.method private chooseFormat()V
    .locals 6

    invoke-virtual {p0}, Landroid/widget/TextClock;->is24HourModeEnabled()Z

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextClock;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v3}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v2

    if-eqz v0, :cond_1

    iget-object v3, p0, Landroid/widget/TextClock;->mFormat24:Ljava/lang/CharSequence;

    iget-object v4, p0, Landroid/widget/TextClock;->mFormat12:Ljava/lang/CharSequence;

    iget-object v5, v2, Llibcore/icu/LocaleData;->timeFormat_Hm:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Landroid/widget/TextClock;->abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/TextClock;->mFormat:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/widget/TextClock;->mDescFormat24:Ljava/lang/CharSequence;

    iget-object v4, p0, Landroid/widget/TextClock;->mDescFormat12:Ljava/lang/CharSequence;

    iget-object v5, p0, Landroid/widget/TextClock;->mFormat:Ljava/lang/CharSequence;

    invoke-static {v3, v4, v5}, Landroid/widget/TextClock;->abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/TextClock;->mDescFormat:Ljava/lang/CharSequence;

    :goto_0
    iget-boolean v1, p0, Landroid/widget/TextClock;->mHasSeconds:Z

    iget-object v3, p0, Landroid/widget/TextClock;->mFormat:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/format/DateFormat;->hasSeconds(Ljava/lang/CharSequence;)Z

    move-result v3

    iput-boolean v3, p0, Landroid/widget/TextClock;->mHasSeconds:Z

    iget-boolean v3, p0, Landroid/widget/TextClock;->mShouldRunTicker:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Landroid/widget/TextClock;->mHasSeconds:Z

    if-eq v1, v3, :cond_0

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextClock;->getHandler()Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/TextClock;->mTicker:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v3, p0, Landroid/widget/TextClock;->mFormat12:Ljava/lang/CharSequence;

    iget-object v4, p0, Landroid/widget/TextClock;->mFormat24:Ljava/lang/CharSequence;

    iget-object v5, v2, Llibcore/icu/LocaleData;->timeFormat_hm:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Landroid/widget/TextClock;->abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/TextClock;->mFormat:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/widget/TextClock;->mDescFormat12:Ljava/lang/CharSequence;

    iget-object v4, p0, Landroid/widget/TextClock;->mDescFormat24:Ljava/lang/CharSequence;

    iget-object v5, p0, Landroid/widget/TextClock;->mFormat:Ljava/lang/CharSequence;

    invoke-static {v3, v4, v5}, Landroid/widget/TextClock;->abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/TextClock;->mDescFormat:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_2
    iget-object v3, p0, Landroid/widget/TextClock;->mTicker:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    goto :goto_1
.end method

.method private createTime(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextClock;->mTime:Ljava/util/Calendar;

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextClock;->mTime:Ljava/util/Calendar;

    goto :goto_0
.end method

.method private init()V
    .locals 2

    iget-object v1, p0, Landroid/widget/TextClock;->mFormat12:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextClock;->mFormat24:Ljava/lang/CharSequence;

    if-nez v1, :cond_2

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

    iget-object v1, p0, Landroid/widget/TextClock;->mFormat12:Ljava/lang/CharSequence;

    if-nez v1, :cond_1

    iget-object v1, v0, Llibcore/icu/LocaleData;->timeFormat_hm:Ljava/lang/String;

    iput-object v1, p0, Landroid/widget/TextClock;->mFormat12:Ljava/lang/CharSequence;

    :cond_1
    iget-object v1, p0, Landroid/widget/TextClock;->mFormat24:Ljava/lang/CharSequence;

    if-nez v1, :cond_2

    iget-object v1, v0, Llibcore/icu/LocaleData;->timeFormat_Hm:Ljava/lang/String;

    iput-object v1, p0, Landroid/widget/TextClock;->mFormat24:Ljava/lang/CharSequence;

    :cond_2
    iget-object v1, p0, Landroid/widget/TextClock;->mTimeZone:Ljava/lang/String;

    invoke-direct {p0, v1}, Landroid/widget/TextClock;->createTime(Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/widget/TextClock;->chooseFormat()V

    return-void
.end method

.method private onTimeChanged()V
    .locals 4

    iget-boolean v0, p0, Landroid/widget/TextClock;->mShouldRunTicker:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextClock;->mTime:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Landroid/widget/TextClock;->mFormat:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextClock;->mFormat:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "per"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextClock;->mTime:Ljava/util/Calendar;

    invoke-direct {p0, v0}, Landroid/widget/TextClock;->calcPersiCalendar(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextClock;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Landroid/widget/TextClock;->mDescFormat:Ljava/lang/CharSequence;

    iget-object v1, p0, Landroid/widget/TextClock;->mTime:Ljava/util/Calendar;

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextClock;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/widget/TextClock;->mFormat:Ljava/lang/CharSequence;

    iget-object v1, p0, Landroid/widget/TextClock;->mTime:Ljava/util/Calendar;

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextClock;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private registerObserver()V
    .locals 5

    const/4 v4, 0x1

    iget-boolean v1, p0, Landroid/widget/TextClock;->mRegistered:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/TextClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    if-nez v1, :cond_0

    new-instance v1, Landroid/widget/TextClock$FormatChangeObserver;

    invoke-virtual {p0}, Landroid/widget/TextClock;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/widget/TextClock$FormatChangeObserver;-><init>(Landroid/widget/TextClock;Landroid/os/Handler;)V

    iput-object v1, p0, Landroid/widget/TextClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextClock;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-boolean v1, p0, Landroid/widget/TextClock;->mShowCurrentUserTime:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "time_12_24"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TextClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string/jumbo v1, "time_12_24"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TextClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method private registerReceiver()V
    .locals 6

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "android.intent.action.TIME_TICK"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.TIME_SET"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/TextClock;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/TextClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {p0}, Landroid/widget/TextClock;->getHandler()Landroid/os/Handler;

    move-result-object v5

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private unregisterObserver()V
    .locals 2

    iget-object v1, p0, Landroid/widget/TextClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextClock;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/TextClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method private unregisterReceiver()V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/TextClock;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/TextClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method


# virtual methods
.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 4

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/widget/TextView;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    invoke-virtual {p0}, Landroid/widget/TextClock;->getFormat12Hour()Ljava/lang/CharSequence;

    move-result-object v0

    const-string/jumbo v3, "format12Hour"

    if-nez v0, :cond_0

    move-object v1, v2

    :goto_0
    invoke-virtual {p1, v3, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/TextClock;->getFormat24Hour()Ljava/lang/CharSequence;

    move-result-object v0

    const-string/jumbo v3, "format24Hour"

    if-nez v0, :cond_1

    move-object v1, v2

    :goto_1
    invoke-virtual {p1, v3, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "format"

    iget-object v3, p0, Landroid/widget/TextClock;->mFormat:Ljava/lang/CharSequence;

    if-nez v3, :cond_2

    :goto_2
    invoke-virtual {p1, v1, v2}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "hasSeconds"

    iget-boolean v2, p0, Landroid/widget/TextClock;->mHasSeconds:Z

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    iget-object v2, p0, Landroid/widget/TextClock;->mFormat:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2
.end method

.method public getFormat()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextClock;->mFormat:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getFormat12Hour()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    iget-object v0, p0, Landroid/widget/TextClock;->mFormat12:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getFormat24Hour()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    iget-object v0, p0, Landroid/widget/TextClock;->mFormat24:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTimeZone()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextClock;->mTimeZone:Ljava/lang/String;

    return-object v0
.end method

.method public is24HourModeEnabled()Z
    .locals 2

    iget-boolean v0, p0, Landroid/widget/TextClock;->mShowCurrentUserTime:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    iget-boolean v0, p0, Landroid/widget/TextClock;->mRegistered:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextClock;->mRegistered:Z

    invoke-direct {p0}, Landroid/widget/TextClock;->registerReceiver()V

    invoke-direct {p0}, Landroid/widget/TextClock;->registerObserver()V

    iget-object v0, p0, Landroid/widget/TextClock;->mTimeZone:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/widget/TextClock;->createTime(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    iget-boolean v0, p0, Landroid/widget/TextClock;->mRegistered:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/TextClock;->unregisterReceiver()V

    invoke-direct {p0}, Landroid/widget/TextClock;->unregisterObserver()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextClock;->mRegistered:Z

    :cond_0
    return-void
.end method

.method public onVisibilityAggregated(Z)V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/widget/TextView;->onVisibilityAggregated(Z)V

    iget-boolean v0, p0, Landroid/widget/TextClock;->mShouldRunTicker:Z

    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextClock;->mShouldRunTicker:Z

    iget-boolean v0, p0, Landroid/widget/TextClock;->mShouldChooseFormat:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Landroid/widget/TextClock;->mShouldChooseFormat:Z

    invoke-direct {p0}, Landroid/widget/TextClock;->chooseFormat()V

    :cond_0
    iget-boolean v0, p0, Landroid/widget/TextClock;->mHasSeconds:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/TextClock;->mTicker:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-direct {p0}, Landroid/widget/TextClock;->onTimeChanged()V

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Landroid/widget/TextClock;->mShouldRunTicker:Z

    if-eqz v0, :cond_1

    xor-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Landroid/widget/TextClock;->mShouldRunTicker:Z

    invoke-virtual {p0}, Landroid/widget/TextClock;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/TextClock;->mTicker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setContentDescriptionFormat12Hour(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/TextClock;->mDescFormat12:Ljava/lang/CharSequence;

    invoke-direct {p0}, Landroid/widget/TextClock;->chooseFormat()V

    invoke-direct {p0}, Landroid/widget/TextClock;->onTimeChanged()V

    return-void
.end method

.method public setContentDescriptionFormat24Hour(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/TextClock;->mDescFormat24:Ljava/lang/CharSequence;

    invoke-direct {p0}, Landroid/widget/TextClock;->chooseFormat()V

    invoke-direct {p0}, Landroid/widget/TextClock;->onTimeChanged()V

    return-void
.end method

.method public setFormat12Hour(Ljava/lang/CharSequence;)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput-object p1, p0, Landroid/widget/TextClock;->mFormat12:Ljava/lang/CharSequence;

    invoke-direct {p0}, Landroid/widget/TextClock;->chooseFormat()V

    invoke-direct {p0}, Landroid/widget/TextClock;->onTimeChanged()V

    return-void
.end method

.method public setFormat24Hour(Ljava/lang/CharSequence;)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput-object p1, p0, Landroid/widget/TextClock;->mFormat24:Ljava/lang/CharSequence;

    invoke-direct {p0}, Landroid/widget/TextClock;->chooseFormat()V

    invoke-direct {p0}, Landroid/widget/TextClock;->onTimeChanged()V

    return-void
.end method

.method public setShowCurrentUserTime(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/TextClock;->mShowCurrentUserTime:Z

    invoke-direct {p0}, Landroid/widget/TextClock;->chooseFormat()V

    invoke-direct {p0}, Landroid/widget/TextClock;->onTimeChanged()V

    invoke-direct {p0}, Landroid/widget/TextClock;->unregisterObserver()V

    invoke-direct {p0}, Landroid/widget/TextClock;->registerObserver()V

    return-void
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput-object p1, p0, Landroid/widget/TextClock;->mTimeZone:Ljava/lang/String;

    invoke-direct {p0, p1}, Landroid/widget/TextClock;->createTime(Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/widget/TextClock;->onTimeChanged()V

    return-void
.end method
