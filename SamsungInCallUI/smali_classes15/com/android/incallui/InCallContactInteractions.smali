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

    .prologue
    .line 49
    const-class v0, Lcom/android/incallui/InCallContactInteractions;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/InCallContactInteractions;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isBusiness"    # Z

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/android/incallui/InCallContactInteractions;->mContext:Landroid/content/Context;

    .line 59
    const-string v0, "layout_inflater"

    .line 60
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/incallui/InCallContactInteractions;->mInflater:Landroid/view/LayoutInflater;

    .line 61
    invoke-virtual {p0, p2}, Lcom/android/incallui/InCallContactInteractions;->switchContactType(Z)Z

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/InCallContactInteractions;)Landroid/view/LayoutInflater;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/InCallContactInteractions;

    .prologue
    .line 47
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

    .prologue
    .line 128
    .local p1, "openingHours":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/util/Calendar;Ljava/util/Calendar;>;>;"
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/android/incallui/InCallContactInteractions;->constructHoursInfo(Ljava/util/Calendar;Ljava/util/List;)Lcom/android/incallui/InCallContactInteractions$BusinessContextInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 133
    :goto_0
    return-object v1

    .line 129
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/incallui/InCallContactInteractions;->TAG:Ljava/lang/String;

    const-string v2, "Error constructing hours info: "

    invoke-static {v1, v2, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 133
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private constructLocationInfo(Landroid/location/Address;F)Lcom/android/incallui/InCallContactInteractions$BusinessContextInfo;
    .locals 1
    .param p1, "address"    # Landroid/location/Address;
    .param p2, "distance"    # F

    .prologue
    .line 261
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/incallui/InCallContactInteractions;->constructLocationInfo(Ljava/util/Locale;Landroid/location/Address;F)Lcom/android/incallui/InCallContactInteractions$BusinessContextInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method constructHoursInfo(Ljava/util/Calendar;Ljava/util/List;)Lcom/android/incallui/InCallContactInteractions$BusinessContextInfo;
    .locals 11
    .param p1, "currentTime"    # Ljava/util/Calendar;
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

    .prologue
    .line 142
    .local p2, "openingHours":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/util/Calendar;Ljava/util/Calendar;>;>;"
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_2

    .line 143
    :cond_0
    const/4 v2, 0x0

    .line 236
    :cond_1
    :goto_0
    return-object v2

    .line 146
    :cond_2
    new-instance v2, Lcom/android/incallui/InCallContactInteractions$BusinessContextInfo;

    invoke-direct {v2}, Lcom/android/incallui/InCallContactInteractions$BusinessContextInfo;-><init>()V

    .line 147
    .local v2, "hoursInfo":Lcom/android/incallui/InCallContactInteractions$BusinessContextInfo;
    const v6, 0x7f020114

    iput v6, v2, Lcom/android/incallui/InCallContactInteractions$BusinessContextInfo;->iconId:I

    .line 149
    const/4 v3, 0x0

    .line 153
    .local v3, "isOpenNow":Z
    const/4 v0, 0x0

    .line 155
    .local v0, "afterInterval":I
    const/4 v5, 0x0

    .line 157
    .local v5, "todaysIntervalCount":I
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

    .line 158
    .local v1, "hours":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/Calendar;Ljava/util/Calendar;>;"
    iget-object v6, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/util/Calendar;

    invoke-virtual {v6, p1}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v6

    if-gtz v6, :cond_4

    iget-object v6, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/util/Calendar;

    .line 159
    invoke-virtual {p1, v6}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v6

    if-gez v6, :cond_4

    .line 162
    const/4 v3, 0x1

    .line 165
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

    .line 166
    add-int/lit8 v5, v5, 0x1

    .line 169
    :cond_5
    iget-object v6, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/util/Calendar;

    invoke-virtual {p1, v6}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v6

    if-lez v6, :cond_3

    .line 171
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 175
    .end local v1    # "hours":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/Calendar;Ljava/util/Calendar;>;"
    :cond_6
    if-eqz v3, :cond_7

    iget-object v6, p0, Lcom/android/incallui/InCallContactInteractions;->mContext:Landroid/content/Context;

    const v7, 0x7f090546

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 176
    :goto_2
    iput-object v6, v2, Lcom/android/incallui/InCallContactInteractions$BusinessContextInfo;->heading:Ljava/lang/String;

    .line 190
    if-eqz v3, :cond_a

    .line 191
    const/4 v6, 0x1

    if-ne v5, v6, :cond_8

    .line 192
    const/4 v6, 0x0

    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    invoke-virtual {p0, v6}, Lcom/android/incallui/InCallContactInteractions;->getTimeSpanStringForHours(Landroid/util/Pair;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/android/incallui/InCallContactInteractions$BusinessContextInfo;->detail:Ljava/lang/String;

    goto :goto_0

    .line 175
    :cond_7
    iget-object v6, p0, Lcom/android/incallui/InCallContactInteractions;->mContext:Landroid/content/Context;

    const v7, 0x7f090462

    .line 176
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 193
    :cond_8
    const/4 v6, 0x2

    if-ne v5, v6, :cond_9

    .line 194
    iget-object v7, p0, Lcom/android/incallui/InCallContactInteractions;->mContext:Landroid/content/Context;

    const v8, 0x7f090548

    const/4 v6, 0x2

    new-array v9, v6, [Ljava/lang/Object;

    const/4 v10, 0x0

    const/4 v6, 0x0

    .line 196
    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    invoke-virtual {p0, v6}, Lcom/android/incallui/InCallContactInteractions;->getTimeSpanStringForHours(Landroid/util/Pair;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v9, v10

    const/4 v10, 0x1

    const/4 v6, 0x1

    .line 197
    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    invoke-virtual {p0, v6}, Lcom/android/incallui/InCallContactInteractions;->getTimeSpanStringForHours(Landroid/util/Pair;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v9, v10

    .line 194
    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/android/incallui/InCallContactInteractions$BusinessContextInfo;->detail:Ljava/lang/String;

    goto/16 :goto_0

    .line 198
    :cond_9
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_1

    .line 201
    iget-object v7, p0, Lcom/android/incallui/InCallContactInteractions;->mContext:Landroid/content/Context;

    const v8, 0x7f090464

    const/4 v6, 0x1

    new-array v9, v6, [Ljava/lang/Object;

    const/4 v10, 0x0

    .line 203
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/util/Calendar;

    invoke-virtual {p0, v6}, Lcom/android/incallui/InCallContactInteractions;->getFormattedTimeForCalendar(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v9, v10

    .line 201
    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/android/incallui/InCallContactInteractions$BusinessContextInfo;->detail:Ljava/lang/String;

    goto/16 :goto_0

    .line 206
    :cond_a
    add-int/lit8 v4, v5, -0x1

    .line 207
    .local v4, "lastIntervalToday":I
    if-nez v5, :cond_b

    .line 208
    iget-object v7, p0, Lcom/android/incallui/InCallContactInteractions;->mContext:Landroid/content/Context;

    const v8, 0x7f09054a

    const/4 v6, 0x1

    new-array v9, v6, [Ljava/lang/Object;

    const/4 v10, 0x0

    const/4 v6, 0x0

    .line 210
    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    iget-object v6, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/util/Calendar;

    invoke-virtual {p0, v6}, Lcom/android/incallui/InCallContactInteractions;->getFormattedTimeForCalendar(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v9, v10

    .line 208
    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/android/incallui/InCallContactInteractions$BusinessContextInfo;->detail:Ljava/lang/String;

    goto/16 :goto_0

    .line 211
    :cond_b
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {p1, v6}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 213
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_c

    .line 215
    iget-object v7, p0, Lcom/android/incallui/InCallContactInteractions;->mContext:Landroid/content/Context;

    const v8, 0x7f09054a

    const/4 v6, 0x1

    new-array v9, v6, [Ljava/lang/Object;

    const/4 v10, 0x0

    .line 218
    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    iget-object v6, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/util/Calendar;

    .line 217
    invoke-virtual {p0, v6}, Lcom/android/incallui/InCallContactInteractions;->getFormattedTimeForCalendar(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v9, v10

    .line 215
    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/android/incallui/InCallContactInteractions$BusinessContextInfo;->detail:Ljava/lang/String;

    goto/16 :goto_0

    .line 221
    :cond_c
    iget-object v7, p0, Lcom/android/incallui/InCallContactInteractions;->mContext:Landroid/content/Context;

    const v8, 0x7f090463

    const/4 v6, 0x1

    new-array v9, v6, [Ljava/lang/Object;

    const/4 v10, 0x0

    .line 224
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/util/Calendar;

    .line 223
    invoke-virtual {p0, v6}, Lcom/android/incallui/InCallContactInteractions;->getFormattedTimeForCalendar(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v9, v10

    .line 221
    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/android/incallui/InCallContactInteractions$BusinessContextInfo;->detail:Ljava/lang/String;

    goto/16 :goto_0

    .line 226
    :cond_d
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_1

    .line 230
    iget-object v7, p0, Lcom/android/incallui/InCallContactInteractions;->mContext:Landroid/content/Context;

    const v8, 0x7f090549

    const/4 v6, 0x1

    new-array v9, v6, [Ljava/lang/Object;

    const/4 v10, 0x0

    .line 232
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    iget-object v6, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/util/Calendar;

    invoke-virtual {p0, v6}, Lcom/android/incallui/InCallContactInteractions;->getFormattedTimeForCalendar(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v9, v10

    .line 230
    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/android/incallui/InCallContactInteractions$BusinessContextInfo;->detail:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method constructLocationInfo(Ljava/util/Locale;Landroid/location/Address;F)Lcom/android/incallui/InCallContactInteractions$BusinessContextInfo;
    .locals 7
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "address"    # Landroid/location/Address;
    .param p3, "distance"    # F
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 267
    if-nez p2, :cond_0

    .line 268
    const/4 v0, 0x0

    .line 291
    :goto_0
    return-object v0

    .line 271
    :cond_0
    new-instance v0, Lcom/android/incallui/InCallContactInteractions$BusinessContextInfo;

    invoke-direct {v0}, Lcom/android/incallui/InCallContactInteractions$BusinessContextInfo;-><init>()V

    .line 272
    .local v0, "locationInfo":Lcom/android/incallui/InCallContactInteractions$BusinessContextInfo;
    const v1, 0x7f0200fc

    iput v1, v0, Lcom/android/incallui/InCallContactInteractions$BusinessContextInfo;->iconId:I

    .line 273
    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, p3, v1

    if-eqz v1, :cond_1

    .line 275
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, p1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 276
    iget-object v1, p0, Lcom/android/incallui/InCallContactInteractions;->mContext:Landroid/content/Context;

    const v2, 0x7f0904be

    new-array v3, v6, [Ljava/lang/Object;

    const v4, 0x3a22e384

    mul-float/2addr v4, p3

    .line 277
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v5

    .line 276
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/incallui/InCallContactInteractions$BusinessContextInfo;->heading:Ljava/lang/String;

    .line 283
    :cond_1
    :goto_1
    invoke-virtual {p2}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 284
    iget-object v1, p0, Lcom/android/incallui/InCallContactInteractions;->mContext:Landroid/content/Context;

    const v2, 0x7f0904b3

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 286
    invoke-virtual {p2, v5}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    .line 287
    invoke-virtual {p2}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    .line 284
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/incallui/InCallContactInteractions$BusinessContextInfo;->detail:Ljava/lang/String;

    goto :goto_0

    .line 279
    :cond_2
    iget-object v1, p0, Lcom/android/incallui/InCallContactInteractions;->mContext:Landroid/content/Context;

    const v2, 0x7f0904bf

    new-array v3, v6, [Ljava/lang/Object;

    const v4, 0x3a83126f    # 0.001f

    mul-float/2addr v4, p3

    .line 280
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v5

    .line 279
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/incallui/InCallContactInteractions$BusinessContextInfo;->heading:Ljava/lang/String;

    goto :goto_1

    .line 289
    :cond_3
    invoke-virtual {p2, v5}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/incallui/InCallContactInteractions$BusinessContextInfo;->detail:Ljava/lang/String;

    goto :goto_0
.end method

.method public getBusinessListHeaderView()Landroid/view/View;
    .locals 3

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/incallui/InCallContactInteractions;->mBusinessHeaderView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/android/incallui/InCallContactInteractions;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040021

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallContactInteractions;->mBusinessHeaderView:Landroid/view/View;

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallContactInteractions;->mBusinessHeaderView:Landroid/view/View;

    return-object v0
.end method

.method public getContactContextTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 301
    iget-boolean v0, p0, Lcom/android/incallui/InCallContactInteractions;->mIsBusiness:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallContactInteractions;->mContext:Landroid/content/Context;

    .line 302
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090435

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 303
    :goto_0
    return-object v0

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallContactInteractions;->mContext:Landroid/content/Context;

    .line 303
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09054d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method getFormattedTimeForCalendar(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 2
    .param p1, "calendar"    # Ljava/util/Calendar;

    .prologue
    .line 240
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

    .prologue
    .line 65
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

    .prologue
    .line 244
    .local p1, "hours":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/Calendar;Ljava/util/Calendar;>;"
    iget-object v1, p0, Lcom/android/incallui/InCallContactInteractions;->mContext:Landroid/content/Context;

    const v2, 0x7f090547

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/util/Calendar;

    .line 245
    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallContactInteractions;->getFormattedTimeForCalendar(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/Calendar;

    .line 246
    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallContactInteractions;->getFormattedTimeForCalendar(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    .line 244
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setBusinessInfo(Landroid/location/Address;FLjava/util/List;)V
    .locals 4
    .param p1, "address"    # Landroid/location/Address;
    .param p2, "distance"    # F
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

    .prologue
    .line 96
    .local p3, "openingHours":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/util/Calendar;Ljava/util/Calendar;>;>;"
    iget-object v3, p0, Lcom/android/incallui/InCallContactInteractions;->mListAdapter:Lcom/android/incallui/InCallContactInteractions$InCallContactInteractionsListAdapter;

    invoke-virtual {v3}, Lcom/android/incallui/InCallContactInteractions$InCallContactInteractionsListAdapter;->clear()V

    .line 97
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .local v1, "info":Ljava/util/List;, "Ljava/util/List<Lcom/android/incallui/InCallContactInteractions$ContactContextInfo;>;"
    if-eqz p3, :cond_0

    .line 101
    invoke-direct {p0, p3}, Lcom/android/incallui/InCallContactInteractions;->constructHoursInfo(Ljava/util/List;)Lcom/android/incallui/InCallContactInteractions$BusinessContextInfo;

    move-result-object v0

    .line 102
    .local v0, "hoursInfo":Lcom/android/incallui/InCallContactInteractions$BusinessContextInfo;
    if-eqz v0, :cond_0

    .line 103
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    .end local v0    # "hoursInfo":Lcom/android/incallui/InCallContactInteractions$BusinessContextInfo;
    :cond_0
    if-eqz p1, :cond_1

    .line 109
    invoke-direct {p0, p1, p2}, Lcom/android/incallui/InCallContactInteractions;->constructLocationInfo(Landroid/location/Address;F)Lcom/android/incallui/InCallContactInteractions$BusinessContextInfo;

    move-result-object v2

    .line 110
    .local v2, "locationInfo":Lcom/android/incallui/InCallContactInteractions$BusinessContextInfo;
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    .end local v2    # "locationInfo":Lcom/android/incallui/InCallContactInteractions$BusinessContextInfo;
    :cond_1
    iget-object v3, p0, Lcom/android/incallui/InCallContactInteractions;->mListAdapter:Lcom/android/incallui/InCallContactInteractions$InCallContactInteractionsListAdapter;

    invoke-virtual {v3, v1}, Lcom/android/incallui/InCallContactInteractions$InCallContactInteractionsListAdapter;->addAll(Ljava/util/Collection;)V

    .line 114
    return-void
.end method

.method public switchContactType(Z)Z
    .locals 3
    .param p1, "isBusiness"    # Z

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/android/incallui/InCallContactInteractions;->mIsBusiness:Z

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallContactInteractions;->mListAdapter:Lcom/android/incallui/InCallContactInteractions$InCallContactInteractionsListAdapter;

    if-nez v0, :cond_2

    .line 77
    :cond_0
    iput-boolean p1, p0, Lcom/android/incallui/InCallContactInteractions;->mIsBusiness:Z

    .line 78
    new-instance v1, Lcom/android/incallui/InCallContactInteractions$InCallContactInteractionsListAdapter;

    iget-object v2, p0, Lcom/android/incallui/InCallContactInteractions;->mContext:Landroid/content/Context;

    iget-boolean v0, p0, Lcom/android/incallui/InCallContactInteractions;->mIsBusiness:Z

    if-eqz v0, :cond_1

    const v0, 0x7f040022

    :goto_0
    invoke-direct {v1, p0, v2, v0}, Lcom/android/incallui/InCallContactInteractions$InCallContactInteractionsListAdapter;-><init>(Lcom/android/incallui/InCallContactInteractions;Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/incallui/InCallContactInteractions;->mListAdapter:Lcom/android/incallui/InCallContactInteractions$InCallContactInteractionsListAdapter;

    .line 81
    const/4 v0, 0x1

    .line 83
    :goto_1
    return v0

    .line 78
    :cond_1
    const v0, 0x7f040070

    goto :goto_0

    .line 83
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
