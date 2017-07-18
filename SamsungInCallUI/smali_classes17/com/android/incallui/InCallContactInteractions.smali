.class public Lcom/android/incallui/InCallContactInteractions;
.super Ljava/lang/Object;
.source "InCallContactInteractions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/InCallContactInteractions$InCallContactInteractionsListAdapter;,
        Lcom/android/incallui/InCallContactInteractions$PersonContextInfo;,
        Lcom/android/incallui/InCallContactInteractions$BusinessContextInfo;,
        Lcom/android/incallui/InCallContactInteractions$ContactContextInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBusinessHeaderView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsBusiness:Z

.field private mListAdapter:Lcom/android/incallui/InCallContactInteractions$InCallContactInteractionsListAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/incallui/InCallContactInteractions;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/InCallContactInteractions;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/incallui/InCallContactInteractions;->mContext:Landroid/content/Context;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/incallui/InCallContactInteractions;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p0, p2}, Lcom/android/incallui/InCallContactInteractions;->switchContactType(Z)Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/InCallContactInteractions;)Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallContactInteractions;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method private constructHoursInfo(Ljava/util/List;)Lcom/android/incallui/InCallContactInteractions$BusinessContextInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/util/Calendar;",
            "Ljava/util/Calendar;",
            ">;>;)",
            "Lcom/android/incallui/InCallContactInteractions$BusinessContextInfo;"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/android/incallui/InCallContactInteractions;->constructHoursInfo(Ljava/util/Calendar;Ljava/util/List;)Lcom/android/incallui/InCallContactInteractions$BusinessContextInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/incallui/InCallContactInteractions;->TAG:Ljava/lang/String;

    const-string v2, "Error constructing hours info: "

    invoke-static {v1, v2, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private constructLocationInfo(Landroid/location/Address;F)Lcom/android/incallui/InCallContactInteractions$BusinessContextInfo;
    .locals 1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/incallui/InCallContactInteractions;->constructLocationInfo(Ljava/util/Locale;Landroid/location/Address;F)Lcom/android/incallui/InCallContactInteractions$BusinessContextInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method constructHoursInfo(Ljava/util/Calendar;Ljava/util/List;)Lcom/android/incallui/InCallContactInteractions$BusinessContextInfo;
    .locals 11
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Calendar;",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/util/Calendar;",
            "Ljava/util/Calendar;",
            ">;>;)",
            "Lcom/android/incallui/InCallContactInteractions$BusinessContextInfo;"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_2

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    return-object v2

    :cond_2
    new-instance v2, Lcom/android/incallui/InCallContactInteractions$BusinessContextInfo;

    invoke-direct {v2}, Lcom/android/incallui/InCallContactInteractions$BusinessContextInfo;-><init>()V

    const v6, 0x7f02011e

    iput v6, v2, Lcom/android/incallui/InCallContactInteractions$BusinessContextInfo;->iconId:I

    const/4 v3, 0x0

    const/4 v0, 0x0

    const/4 v5, 0x0

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v6, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/util/Calendar;

    invoke-virtual {v6, p1}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v6

    if-gtz v6, :cond_4

    iget-object v6, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/util/Calendar;

    invoke-virtual {p1, v6}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v6

    if-gez v6, :cond_4

    const/4 v3, 0x1

    :cond_4
    const/4 v6, 0x6

    invoke-virtual {p1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v8

    iget-object v6, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/util/Calendar;

    const/4 v9, 0x6

    invoke-virtual {v6, v9}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-ne v8, v6, :cond_5

    add-int/lit8 v5, v5, 0x1

    :cond_5
    iget-object v6, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/util/Calendar;

    invoke-virtual {p1, v6}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v6

    if-lez v6, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    if-eqz v3, :cond_7

    iget-object v6, p0, Lcom/android/incallui/InCallContactInteractions;->mContext:Landroid/content/Context;

    const v7, 0x7f09054d

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    :goto_2
    iput-object v6, v2, Lcom/android/incallui/InCallContactInteractions$BusinessContextInfo;->heading:Ljava/lang/String;

    if-eqz v3, :cond_a

    const/4 v6, 0x1

    if-ne v5, v6, :cond_8

    const/4 v6, 0x0

    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    invoke-virtual {p0, v6}, Lcom/android/incallui/InCallContactInteractions;->getTimeSpanStringForHours(Landroid/util/Pair;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/android/incallui/InCallContactInteractions$BusinessContextInfo;->detail:Ljava/lang/String;

    goto :goto_0

    :cond_7
    iget-object v6, p0, Lcom/android/incallui/InCallContactInteractions;->mContext:Landroid/content/Context;

    const v7, 0x7f090469

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_8
    const/4 v6, 0x2

    if-ne v5, v6, :cond_9

    iget-object v7, p0, Lcom/android/incallui/InCallContactInteractions;->mContext:Landroid/content/Context;

    const v8, 0x7f09054f

    const/4 v6, 0x2

    new-array v9, v6, [Ljava/lang/Object;

    const/4 v10, 0x0

    const/4 v6, 0x0

    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    invoke-virtual {p0, v6}, Lcom/android/incallui/InCallContactInteractions;->getTimeSpanStringForHours(Landroid/util/Pair;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v9, v10

    const/4 v10, 0x1

    const/4 v6, 0x1

    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    invoke-virtual {p0, v6}, Lcom/android/incallui/InCallContactInteractions;->getTimeSpanStringForHours(Landroid/util/Pair;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/android/incallui/InCallContactInteractions$BusinessContextInfo;->detail:Ljava/lang/String;

    goto/16 :goto_0

    :cond_9
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_1

    iget-object v7, p0, Lcom/android/incallui/InCallContactInteractions;->mContext:Landroid/content/Context;

    const v8, 0x7f09046b

    const/4 v6, 0x1

    new-array v9, v6, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/util/Calendar;

    invoke-virtual {p0, v6}, Lcom/android/incallui/InCallContactInteractions;->getFormattedTimeForCalendar(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/android/incallui/InCallContactInteractions$BusinessContextInfo;->detail:Ljava/lang/String;

    goto/16 :goto_0

    :cond_a
    add-int/lit8 v4, v5, -0x1

    if-nez v5, :cond_b

    iget-object v7, p0, Lcom/android/incallui/InCallContactInteractions;->mContext:Landroid/content/Context;

    const v8, 0x7f090551

    const/4 v6, 0x1

    new-array v9, v6, [Ljava/lang/Object;

    const/4 v10, 0x0

    const/4 v6, 0x0

    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    iget-object v6, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/util/Calendar;

    invoke-virtual {p0, v6}, Lcom/android/incallui/InCallContactInteractions;->getFormattedTimeForCalendar(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/android/incallui/InCallContactInteractions$BusinessContextInfo;->detail:Ljava/lang/String;

    goto/16 :goto_0

    :cond_b
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {p1, v6}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_c

    iget-object v7, p0, Lcom/android/incallui/InCallContactInteractions;->mContext:Landroid/content/Context;

    const v8, 0x7f090551

    const/4 v6, 0x1

    new-array v9, v6, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    iget-object v6, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/util/Calendar;

    invoke-virtual {p0, v6}, Lcom/android/incallui/InCallContactInteractions;->getFormattedTimeForCalendar(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/android/incallui/InCallContactInteractions$BusinessContextInfo;->detail:Ljava/lang/String;

    goto/16 :goto_0

    :cond_c
    iget-object v7, p0, Lcom/android/incallui/InCallContactInteractions;->mContext:Landroid/content/Context;

    const v8, 0x7f09046a

    const/4 v6, 0x1

    new-array v9, v6, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/util/Calendar;

    invoke-virtual {p0, v6}, Lcom/android/incallui/InCallContactInteractions;->getFormattedTimeForCalendar(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/android/incallui/InCallContactInteractions$BusinessContextInfo;->detail:Ljava/lang/String;

    goto/16 :goto_0

    :cond_d
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_1

    iget-object v7, p0, Lcom/android/incallui/InCallContactInteractions;->mContext:Landroid/content/Context;

    const v8, 0x7f090550

    const/4 v6, 0x1

    new-array v9, v6, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    iget-object v6, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/util/Calendar;

    invoke-virtual {p0, v6}, Lcom/android/incallui/InCallContactInteractions;->getFormattedTimeForCalendar(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/android/incallui/InCallContactInteractions$BusinessContextInfo;->detail:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method constructLocationInfo(Ljava/util/Locale;Landroid/location/Address;F)Lcom/android/incallui/InCallContactInteractions$BusinessContextInfo;
    .locals 7
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/incallui/InCallContactInteractions$BusinessContextInfo;

    invoke-direct {v0}, Lcom/android/incallui/InCallContactInteractions$BusinessContextInfo;-><init>()V

    const v1, 0x7f020106

    iput v1, v0, Lcom/android/incallui/InCallContactInteractions$BusinessContextInfo;->iconId:I

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, p3, v1

    if-eqz v1, :cond_1

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, p1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/InCallContactInteractions;->mContext:Landroid/content/Context;

    const v2, 0x7f0904c5

    new-array v3, v6, [Ljava/lang/Object;

    const v4, 0x3a22e384

    mul-float/2addr v4, p3

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/incallui/InCallContactInteractions$BusinessContextInfo;->heading:Ljava/lang/String;

    :cond_1
    :goto_1
    invoke-virtual {p2}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/InCallContactInteractions;->mContext:Landroid/content/Context;

    const v2, 0x7f0904ba

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p2, v5}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p2}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/incallui/InCallContactInteractions$BusinessContextInfo;->detail:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/InCallContactInteractions;->mContext:Landroid/content/Context;

    const v2, 0x7f0904c6

    new-array v3, v6, [Ljava/lang/Object;

    const v4, 0x3a83126f    # 0.001f

    mul-float/2addr v4, p3

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/incallui/InCallContactInteractions$BusinessContextInfo;->heading:Ljava/lang/String;

    goto :goto_1

    :cond_3
    invoke-virtual {p2, v5}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/incallui/InCallContactInteractions$BusinessContextInfo;->detail:Ljava/lang/String;

    goto :goto_0
.end method

.method public getBusinessListHeaderView()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/InCallContactInteractions;->mBusinessHeaderView:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallContactInteractions;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040021

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallContactInteractions;->mBusinessHeaderView:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallContactInteractions;->mBusinessHeaderView:Landroid/view/View;

    return-object v0
.end method

.method public getContactContextTitle()Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Lcom/android/incallui/InCallContactInteractions;->mIsBusiness:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallContactInteractions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09043c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallContactInteractions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090554

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method getFormattedTimeForCalendar(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/InCallContactInteractions;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getListAdapter()Lcom/android/incallui/InCallContactInteractions$InCallContactInteractionsListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallContactInteractions;->mListAdapter:Lcom/android/incallui/InCallContactInteractions$InCallContactInteractionsListAdapter;

    return-object v0
.end method

.method getTimeSpanStringForHours(Landroid/util/Pair;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Ljava/util/Calendar;",
            "Ljava/util/Calendar;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    iget-object v1, p0, Lcom/android/incallui/InCallContactInteractions;->mContext:Landroid/content/Context;

    const v2, 0x7f09054e

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/util/Calendar;

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallContactInteractions;->getFormattedTimeForCalendar(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/Calendar;

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallContactInteractions;->getFormattedTimeForCalendar(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setBusinessInfo(Landroid/location/Address;FLjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/Address;",
            "F",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/util/Calendar;",
            "Ljava/util/Calendar;",
            ">;>;)V"
        }
    .end annotation

    iget-object v3, p0, Lcom/android/incallui/InCallContactInteractions;->mListAdapter:Lcom/android/incallui/InCallContactInteractions$InCallContactInteractionsListAdapter;

    invoke-virtual {v3}, Lcom/android/incallui/InCallContactInteractions$InCallContactInteractionsListAdapter;->clear()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p3, :cond_0

    invoke-direct {p0, p3}, Lcom/android/incallui/InCallContactInteractions;->constructHoursInfo(Ljava/util/List;)Lcom/android/incallui/InCallContactInteractions$BusinessContextInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz p1, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/InCallContactInteractions;->constructLocationInfo(Landroid/location/Address;F)Lcom/android/incallui/InCallContactInteractions$BusinessContextInfo;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v3, p0, Lcom/android/incallui/InCallContactInteractions;->mListAdapter:Lcom/android/incallui/InCallContactInteractions$InCallContactInteractionsListAdapter;

    invoke-virtual {v3, v1}, Lcom/android/incallui/InCallContactInteractions$InCallContactInteractionsListAdapter;->addAll(Ljava/util/Collection;)V

    return-void
.end method

.method public switchContactType(Z)Z
    .locals 3

    iget-boolean v0, p0, Lcom/android/incallui/InCallContactInteractions;->mIsBusiness:Z

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallContactInteractions;->mListAdapter:Lcom/android/incallui/InCallContactInteractions$InCallContactInteractionsListAdapter;

    if-nez v0, :cond_2

    :cond_0
    iput-boolean p1, p0, Lcom/android/incallui/InCallContactInteractions;->mIsBusiness:Z

    new-instance v1, Lcom/android/incallui/InCallContactInteractions$InCallContactInteractionsListAdapter;

    iget-object v2, p0, Lcom/android/incallui/InCallContactInteractions;->mContext:Landroid/content/Context;

    iget-boolean v0, p0, Lcom/android/incallui/InCallContactInteractions;->mIsBusiness:Z

    if-eqz v0, :cond_1

    const v0, 0x7f040022

    :goto_0
    invoke-direct {v1, p0, v2, v0}, Lcom/android/incallui/InCallContactInteractions$InCallContactInteractionsListAdapter;-><init>(Lcom/android/incallui/InCallContactInteractions;Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/incallui/InCallContactInteractions;->mListAdapter:Lcom/android/incallui/InCallContactInteractions$InCallContactInteractionsListAdapter;

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    const v0, 0x7f040070

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
