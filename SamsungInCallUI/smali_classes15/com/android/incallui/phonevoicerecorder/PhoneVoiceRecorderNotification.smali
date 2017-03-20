.class public Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;
.super Ljava/lang/Object;
.source "PhoneVoiceRecorderNotification.java"


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

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;->mButtonIdList:[I

    .line 63
    return-void

    .line 58
    :array_0
    .array-data 4
        0x7f100166
        0x7f100167
        0x7f100168
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;)Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;->mPhoneVoiceRecorderNotificationService:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;
    .param p1, "x1"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;->mLargeIcon:I

    return p1
.end method

.method static synthetic access$202(Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;->mIsShowAppIcon:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Ljava/util/ArrayList;)Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/CharSequence;
    .param p3, "x3"    # Ljava/lang/CharSequence;
    .param p4, "x4"    # Landroid/app/PendingIntent;
    .param p5, "x5"    # Ljava/util/ArrayList;

    .prologue
    .line 45
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

    .prologue
    .line 139
    .local p1, "actionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Notification$Action;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 140
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Notification$Action;

    .line 141
    .local v0, "action":Landroid/app/Notification$Action;
    iget-object v4, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;->mButtonIdList:[I

    aget v2, v4, v3

    .line 143
    .local v2, "buttonId":I
    iget-object v4, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;->mParentView:Landroid/widget/RelativeLayout;

    if-eqz v4, :cond_0

    .line 144
    iget-object v4, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;->mParentView:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/widget/SecVoiceButton;

    .line 146
    .local v1, "button":Lcom/android/incallui/widget/SecVoiceButton;
    iget-object v4, v0, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v4}, Lcom/android/incallui/widget/SecVoiceButton;->setText(Ljava/lang/CharSequence;)V

    .line 147
    new-instance v4, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification$1;

    invoke-direct {v4, p0, v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification$1;-><init>(Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;Landroid/app/Notification$Action;)V

    invoke-virtual {v1, v4}, Lcom/android/incallui/widget/SecVoiceButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/android/incallui/widget/SecVoiceButton;->setVisibility(I)V

    .line 139
    .end local v1    # "button":Lcom/android/incallui/widget/SecVoiceButton;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 163
    .end local v0    # "action":Landroid/app/Notification$Action;
    .end local v2    # "buttonId":I
    :cond_1
    return-object p0
.end method

.method private getTime(J)Ljava/lang/String;
    .locals 13
    .param p1, "time"    # J

    .prologue
    const/4 v6, 0x0

    .line 167
    new-instance v7, Landroid/text/format/Time;

    invoke-direct {v7}, Landroid/text/format/Time;-><init>()V

    .line 168
    .local v7, "t":Landroid/text/format/Time;
    invoke-virtual {v7, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 169
    iput v6, v7, Landroid/text/format/Time;->second:I

    .line 170
    invoke-virtual {v7, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v10

    .line 171
    .local v10, "timeMillis":J
    new-instance v0, Ljava/util/Date;

    iget v1, v7, Landroid/text/format/Time;->year:I

    add-int/lit16 v1, v1, -0x76c

    iget v2, v7, Landroid/text/format/Time;->month:I

    iget v3, v7, Landroid/text/format/Time;->monthDay:I

    iget v4, v7, Landroid/text/format/Time;->hour:I

    iget v5, v7, Landroid/text/format/Time;->minute:I

    invoke-direct/range {v0 .. v6}, Ljava/util/Date;-><init>(IIIIII)V

    .line 173
    .local v0, "dateTime":Ljava/util/Date;
    invoke-direct {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;->getTimeFormat()Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    .line 175
    .local v8, "text":Ljava/lang/String;
    return-object v8
.end method

.method private getTimeFormat()Ljava/text/DateFormat;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method private setLatestInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Ljava/util/ArrayList;)Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contentTitle"    # Ljava/lang/CharSequence;
    .param p3, "contentText"    # Ljava/lang/CharSequence;
    .param p4, "contentIntent"    # Landroid/app/PendingIntent;
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

    .prologue
    .line 80
    .local p5, "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Notification$Action;>;"
    iput-object p1, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;->mContext:Landroid/content/Context;

    .line 81
    iput-object p2, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;->mContentTitle:Ljava/lang/CharSequence;

    .line 82
    iput-object p3, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;->mContentText:Ljava/lang/CharSequence;

    .line 83
    iput-object p4, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;->mContentIntent:Landroid/app/PendingIntent;

    .line 84
    iput-object p5, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;->mActionList:Ljava/util/ArrayList;

    .line 85
    return-object p0
.end method


# virtual methods
.method public constructView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 13
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v9, 0x8

    const/4 v10, 0x0

    .line 89
    iget-object v8, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 90
    .local v4, "inflater":Landroid/view/LayoutInflater;
    const v8, 0x7f040075

    invoke-virtual {v4, v8, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    iput-object v8, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;->mParentView:Landroid/widget/RelativeLayout;

    .line 91
    iget-object v8, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;->mParentView:Landroid/widget/RelativeLayout;

    invoke-virtual {v8, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 93
    iget-object v8, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;->mParentView:Landroid/widget/RelativeLayout;

    const v11, 0x7f10003f

    invoke-virtual {v8, v11}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 94
    .local v3, "iconView":Landroid/widget/ImageView;
    iget-object v8, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;->mParentView:Landroid/widget/RelativeLayout;

    const v11, 0x7f100161

    invoke-virtual {v8, v11}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    .line 95
    .local v2, "iconContainer":Landroid/widget/FrameLayout;
    iget-object v8, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;->mParentView:Landroid/widget/RelativeLayout;

    const v11, 0x7f100162

    invoke-virtual {v8, v11}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 96
    .local v1, "iconBackground":Landroid/widget/ImageView;
    iget-object v8, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;->mParentView:Landroid/widget/RelativeLayout;

    const v11, 0x7f100163

    invoke-virtual {v8, v11}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 98
    .local v0, "AppIconView":Landroid/widget/ImageView;
    iget-boolean v8, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;->mIsShowAppIcon:Z

    if-eqz v8, :cond_6

    .line 99
    if-eqz v0, :cond_0

    iget-object v8, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;->mContext:Landroid/content/Context;

    const v11, 0x7f030002

    invoke-virtual {v8, v11}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 106
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    iget-boolean v8, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;->mIsShowAppIcon:Z

    if-eqz v8, :cond_8

    move v8, v9

    :goto_1
    invoke-virtual {v2, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 107
    :cond_1
    if-eqz v0, :cond_2

    iget-boolean v8, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;->mIsShowAppIcon:Z

    if-nez v8, :cond_9

    :goto_2
    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 109
    :cond_2
    iget-object v8, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;->mParentView:Landroid/widget/RelativeLayout;

    const v9, 0x7f100040

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 110
    .local v7, "titleView":Landroid/widget/TextView;
    if-eqz v7, :cond_3

    .line 111
    iget-object v8, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;->mContentTitle:Ljava/lang/CharSequence;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 112
    iget-object v8, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;->mContentTitle:Ljava/lang/CharSequence;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 117
    :cond_3
    iget-object v8, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;->mParentView:Landroid/widget/RelativeLayout;

    const v9, 0x7f100149

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 118
    .local v5, "textView":Landroid/widget/TextView;
    if-eqz v5, :cond_4

    .line 119
    iget-object v8, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;->mContentText:Ljava/lang/CharSequence;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 120
    iget-object v8, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;->mContentText:Ljava/lang/CharSequence;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 125
    :cond_4
    iget-object v8, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;->mParentView:Landroid/widget/RelativeLayout;

    const v9, 0x7f100145

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 126
    .local v6, "timeView":Landroid/widget/TextView;
    iget-boolean v8, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;->mIsShowTime:Z

    if-eqz v8, :cond_5

    if-eqz v6, :cond_5

    .line 127
    iget-object v8, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;->mContentText:Ljava/lang/CharSequence;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 128
    iget-wide v8, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;->when:J

    invoke-direct {p0, v8, v9}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;->getTime(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 133
    :cond_5
    iget-object v8, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;->mActionList:Ljava/util/ArrayList;

    invoke-direct {p0, v8}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;->constructActionButtons(Ljava/util/ArrayList;)Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;

    .line 135
    iget-object v8, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;->mParentView:Landroid/widget/RelativeLayout;

    return-object v8

    .line 101
    .end local v5    # "textView":Landroid/widget/TextView;
    .end local v6    # "timeView":Landroid/widget/TextView;
    .end local v7    # "titleView":Landroid/widget/TextView;
    :cond_6
    if-eqz v3, :cond_7

    iget-object v8, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;->mContext:Landroid/content/Context;

    iget v11, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;->mLargeIcon:I

    invoke-virtual {v8, v11}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 102
    :cond_7
    if-eqz v1, :cond_0

    iget-object v8, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v11, 0x7f0f00c3

    const/4 v12, 0x0

    invoke-virtual {v8, v11, v12}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v8

    sget-object v11, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v8, v11}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_0

    :cond_8
    move v8, v10

    .line 106
    goto/16 :goto_1

    :cond_9
    move v9, v10

    .line 107
    goto/16 :goto_2
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;->mContext:Landroid/content/Context;

    .line 71
    return-void
.end method

.method public setRootView(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 66
    sput-object p1, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;->sRoot:Landroid/view/ViewGroup;

    .line 67
    return-void
.end method

.method public setService(Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;)V
    .locals 0
    .param p1, "service"    # Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;->mPhoneVoiceRecorderNotificationService:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;

    .line 75
    return-void
.end method
