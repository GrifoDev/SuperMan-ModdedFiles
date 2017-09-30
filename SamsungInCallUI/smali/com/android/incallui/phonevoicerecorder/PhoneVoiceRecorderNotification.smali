.class public Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification$Builder;
    }
.end annotation


# static fields
.field private static sRoot:Landroid/view/ViewGroup;


# instance fields
.field private mActionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Notification$Action;",
            ">;"
        }
    .end annotation
.end field

.field private final mButtonIdList:[I

.field private mContentIntent:Landroid/app/PendingIntent;

.field private mContentText:Ljava/lang/CharSequence;

.field private mContentTitle:Ljava/lang/CharSequence;

.field private mContext:Landroid/content/Context;

.field private mIsShowAppIcon:Z

.field private mIsShowTime:Z

.field private mLargeIcon:I

.field private mParentView:Landroid/widget/RelativeLayout;

.field private mPhoneVoiceRecorderNotificationService:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;

.field public when:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;->mButtonIdList:[I

    return-void

    :array_0
    .array-data 4
        0x7f1001de
        0x7f1001df
        0x7f1001e0
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;)Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;->mPhoneVoiceRecorderNotificationService:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;I)I
    .locals 0

    iput p1, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;->mLargeIcon:I

    return p1
.end method

.method static synthetic access$202(Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;->mIsShowAppIcon:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Ljava/util/ArrayList;)Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;
    .locals 1

    invoke-direct/range {p0 .. p5}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;->setLatestInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Ljava/util/ArrayList;)Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;

    move-result-object v0

    return-object v0
.end method

.method private constructActionButtons(Ljava/util/ArrayList;)Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Notification$Action;",
            ">;)",
            "Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;"
        }
    .end annotation

    const/4 v3, 0x0

    move v2, v3

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Notification$Action;

    iget-object v1, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;->mButtonIdList:[I

    aget v1, v1, v2

    iget-object v4, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;->mParentView:Landroid/widget/RelativeLayout;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;->mParentView:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotiButton;

    iget-object v4, v0, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v4}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotiButton;->setText(Ljava/lang/CharSequence;)V

    new-instance v4, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification$1;

    invoke-direct {v4, p0, v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification$1;-><init>(Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;Landroid/app/Notification$Action;)V

    invoke-virtual {v1, v4}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v3}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotiButton;->setVisibility(I)V

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method private getTime(J)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x0

    new-instance v5, Landroid/text/format/Time;

    invoke-direct {v5}, Landroid/text/format/Time;-><init>()V

    invoke-virtual {v5, p1, p2}, Landroid/text/format/Time;->set(J)V

    iput v6, v5, Landroid/text/format/Time;->second:I

    invoke-virtual {v5, v6}, Landroid/text/format/Time;->toMillis(Z)J

    new-instance v0, Ljava/util/Date;

    iget v1, v5, Landroid/text/format/Time;->year:I

    add-int/lit16 v1, v1, -0x76c

    iget v2, v5, Landroid/text/format/Time;->month:I

    iget v3, v5, Landroid/text/format/Time;->monthDay:I

    iget v4, v5, Landroid/text/format/Time;->hour:I

    iget v5, v5, Landroid/text/format/Time;->minute:I

    invoke-direct/range {v0 .. v6}, Ljava/util/Date;-><init>(IIIIII)V

    invoke-direct {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;->getTimeFormat()Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTimeFormat()Ljava/text/DateFormat;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method private setLatestInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Ljava/util/ArrayList;)Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Landroid/app/PendingIntent;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Notification$Action;",
            ">;)",
            "Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;->mContentTitle:Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;->mContentText:Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;->mContentIntent:Landroid/app/PendingIntent;

    iput-object p5, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;->mActionList:Ljava/util/ArrayList;

    return-object p0
.end method


# virtual methods
.method public constructView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    const/16 v4, 0x8

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040087

    invoke-virtual {v0, v1, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;->mParentView:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;->mParentView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;->mParentView:Landroid/widget/RelativeLayout;

    const v1, 0x7f100049

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;->mParentView:Landroid/widget/RelativeLayout;

    const v2, 0x7f1001d9

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;->mParentView:Landroid/widget/RelativeLayout;

    const v3, 0x7f1001da

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;->mParentView:Landroid/widget/RelativeLayout;

    const v6, 0x7f1001db

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iget-boolean v6, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;->mIsShowAppIcon:Z

    if-eqz v6, :cond_6

    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;->mContext:Landroid/content/Context;

    const v2, 0x7f030002

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    iget-boolean v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;->mIsShowAppIcon:Z

    if-eqz v0, :cond_8

    move v0, v4

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_1
    if-eqz v3, :cond_2

    iget-boolean v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;->mIsShowAppIcon:Z

    if-nez v0, :cond_9

    :goto_2
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;->mParentView:Landroid/widget/RelativeLayout;

    const v1, 0x7f10004a

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;->mContentTitle:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;->mContentTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;->mParentView:Landroid/widget/RelativeLayout;

    const v1, 0x7f1001c1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;->mContentText:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;->mContentText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;->mParentView:Landroid/widget/RelativeLayout;

    const v1, 0x7f1001bd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;->mIsShowTime:Z

    if-eqz v1, :cond_5

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;->mContentText:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-wide v2, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;->when:J

    invoke-direct {p0, v2, v3}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;->getTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;->mActionList:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;->constructActionButtons(Ljava/util/ArrayList;)Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;->mParentView:Landroid/widget/RelativeLayout;

    return-object v0

    :cond_6
    if-eqz v0, :cond_7

    iget-object v6, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;->mContext:Landroid/content/Context;

    iget v7, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;->mLargeIcon:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_7
    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x7f0e0100

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v0, v6}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_0

    :cond_8
    move v0, v5

    goto/16 :goto_1

    :cond_9
    move v4, v5

    goto/16 :goto_2
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;->mContext:Landroid/content/Context;

    return-void
.end method

.method public setRootView(Landroid/view/ViewGroup;)V
    .locals 0

    sput-object p1, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;->sRoot:Landroid/view/ViewGroup;

    return-void
.end method

.method public setService(Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;->mPhoneVoiceRecorderNotificationService:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;

    return-void
.end method
