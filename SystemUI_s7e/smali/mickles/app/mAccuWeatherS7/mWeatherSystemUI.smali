.class public Lmickles/app/mAccuWeatherS7/mWeatherSystemUI;
.super Landroid/widget/LinearLayout;
.source "mWeatherSystemUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmickles/app/mAccuWeatherS7/mWeatherSystemUI$BroadCastReceiver;
    }
.end annotation


# instance fields
.field MWEATHER_SETTINGS:Ljava/lang/String;

.field currTemper:Landroid/widget/TextView;

.field highTemper:Landroid/widget/TextView;

.field image:Landroid/widget/ImageView;

.field layout01:Landroid/widget/LinearLayout;

.field layout02:Landroid/widget/LinearLayout;

.field layout03:Landroid/widget/LinearLayout;

.field layout031:Landroid/widget/LinearLayout;

.field layout032:Landroid/widget/LinearLayout;

.field layout04:Landroid/widget/LinearLayout;

.field location:Landroid/widget/TextView;

.field lowTemper:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mParamAttributeSet:Landroid/util/AttributeSet;

.field private mReceiver:Lmickles/app/mAccuWeatherS7/mWeatherSystemUI$BroadCastReceiver;

.field scale:Landroid/widget/TextView;

.field scale31:Landroid/widget/TextView;

.field scale32:Landroid/widget/TextView;

.field text:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, -0x2

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v1, "mickles.app.MWEATHER_SETTINGS"

    iput-object v1, p0, Lmickles/app/mAccuWeatherS7/mWeatherSystemUI;->MWEATHER_SETTINGS:Ljava/lang/String;

    iput-object p1, p0, Lmickles/app/mAccuWeatherS7/mWeatherSystemUI;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lmickles/app/mAccuWeatherS7/mWeatherSystemUI;->mParamAttributeSet:Landroid/util/AttributeSet;

    new-instance v1, Lmickles/app/mAccuWeatherS7/mWeatherIcon;

    iget-object v2, p0, Lmickles/app/mAccuWeatherS7/mWeatherSystemUI;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lmickles/app/mAccuWeatherS7/mWeatherSystemUI;->mParamAttributeSet:Landroid/util/AttributeSet;

    invoke-direct {v1, v2, v3}, Lmickles/app/mAccuWeatherS7/mWeatherIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lmickles/app/mAccuWeatherS7/mWeatherSystemUI;->image:Landroid/widget/ImageView;

    new-instance v1, Lmickles/app/mAccuWeatherS7/mWeatherScaleTemp;

    iget-object v2, p0, Lmickles/app/mAccuWeatherS7/mWeatherSystemUI;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lmickles/app/mAccuWeatherS7/mWeatherSystemUI;->mParamAttributeSet:Landroid/util/AttributeSet;

    invoke-direct {v1, v2, v3}, Lmickles/app/mAccuWeatherS7/mWeatherScaleTemp;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lmickles/app/mAccuWeatherS7/mWeatherSystemUI;->scale:Landroid/widget/TextView;

    new-instance v1, Lmickles/app/mAccuWeatherS7/mWeatherScaleTemp;

    iget-object v2, p0, Lmickles/app/mAccuWeatherS7/mWeatherSystemUI;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lmickles/app/mAccuWeatherS7/mWeatherSystemUI;->mParamAttributeSet:Landroid/util/AttributeSet;

    invoke-direct {v1, v2, v3}, Lmickles/app/mAccuWeatherS7/mWeatherScaleTemp;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lmickles/app/mAccuWeatherS7/mWeatherSystemUI;->scale31:Landroid/widget/TextView;

    new-instance v1, Lmickles/app/mAccuWeatherS7/mWeatherScaleTemp;

    iget-object v2, p0, Lmickles/app/mAccuWeatherS7/mWeatherSystemUI;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lmickles/app/mAccuWeatherS7/mWeatherSystemUI;->mParamAttributeSet:Landroid/util/AttributeSet;

    invoke-direct {v1, v2, v3}, Lmickles/app/mAccuWeatherS7/mWeatherScaleTemp;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lmickles/app/mAccuWeatherS7/mWeatherSystemUI;->scale32:Landroid/widget/TextView;

    new-instance v1, Lmickles/app/mAccuWeatherS7/mWeatherCurrentTemp;

    iget-object v2, p0, Lmickles/app/mAccuWeatherS7/mWeatherSystemUI;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lmickles/app/mAccuWeatherS7/mWeatherSystemUI;->mParamAttributeSet:Landroid/util/AttributeSet;

    invoke-direct {v1, v2, v3}, Lmickles/app/mAccuWeatherS7/mWeatherCurrentTemp;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lmickles/app/mAccuWeatherS7/mWeatherSystemUI;->currTemper:Landroid/widget/TextView;

    new-instance v1, Lmickles/app/mAccuWeatherS7/mWeatherHighTemp;

    iget-object v2, p0, Lmickles/app/mAccuWeatherS7/mWeatherSystemUI;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lmickles/app/mAccuWeatherS7/mWeatherSystemUI;->mParamAttributeSet:Landroid/util/AttributeSet;

    invoke-direct {v1, v2, v3}, Lmickles/app/mAccuWeatherS7/mWeatherHighTemp;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lmickles/app/mAccuWeatherS7/mWeatherSystemUI;->highTemper:Landroid/widget/TextView;

    new-instance v1, Lmickles/app/mAccuWeatherS7/mWeatherLowTemp;

    iget-object v2, p0, Lmickles/app/mAccuWeatherS7/mWeatherSystemUI;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lmickles/app/mAccuWeatherS7/mWeatherSystemUI;->mParamAttributeSet:Landroid/util/AttributeSet;

    invoke-direct {v1, v2, v3}, Lmickles/app/mAccuWeatherS7/mWeatherLowTemp;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lmickles/app/mAccuWeatherS7/mWeatherSystemUI;->lowTemper:Landroid/widget/TextView;

    new-instance v1, Lmickles/app/mAccuWeatherS7/mWeatherLocation;

    iget-object v2, p0, Lmickles/app/mAccuWeatherS7/mWeatherSystemUI;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lmickles/app/mAccuWeatherS7/mWeatherSystemUI;->mParamAttributeSet:Landroid/util/AttributeSet;

    invoke-direct {v1, v2, v3}, Lmickles/app/mAccuWeatherS7/mWeatherLocation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lmickles/app/mAccuWeatherS7/mWeatherSystemUI;->location:Landroid/widget/TextView;

    new-instance v1, Lmickles/app/mAccuWeatherS7/mWeatherText;

    iget-object v2, p0, Lmickles/app/mAccuWeatherS7/mWeatherSystemUI;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lmickles/app/mAccuWeatherS7/mWeatherSystemUI;->mParamAttributeSet:Landroid/util/AttributeSet;

    invoke-direct {v1, v2, v3}, Lmickles/app/mAccuWeatherS7/mWeatherText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lmickles/app/mAccuWeatherS7/mWeatherSystemUI;->text:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lmickles/app/mAccuWeatherS7/mWeatherSystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lmickles/app/mAccuWeatherS7/mWeatherSystemUI;->layout01:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lmickles/app/mAccuWeatherS7/mWeatherSystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lmickles/app/mAccuWeatherS7/mWeatherSystemUI;->layout02:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lmickles/app/mAccuWeatherS7/mWeatherSystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lmickles/app/mAccuWeatherS7/mWeatherSystemUI;->layout03:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lmickles/app/mAccuWeatherS7/mWeatherSystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lmickles/app/mAccuWeatherS7/mWeatherSystemUI;->layout031:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lmickles/app/mAccuWeatherS7/mWeatherSystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lmickles/app/mAccuWeatherS7/mWeatherSystemUI;->layout032:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lmickles/app/mAccuWeatherS7/mWeatherSystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lmickles/app/mAccuWeatherS7/mWeatherSystemUI;->layout04:Landroid/widget/LinearLayout;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lmickles/app/mAccuWeatherS7/mWeatherSystemUI;->layout01:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lmickles/app/mAccuWeatherS7/mWeatherSystemUI;->layout02:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lmickles/app/mAccuWeatherS7/mWeatherSystemUI;->layout03:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lmickles/app/mAccuWeatherS7/mWeatherSystemUI;->layout031:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lmickles/app/mAccuWeatherS7/mWeatherSystemUI;->layout032:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lmickles/app/mAccuWeatherS7/mWeatherSystemUI;->layout04:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v4}, Lmickles/app/mAccuWeatherS7/mWeatherSystemUI;->setOrientation(I)V

    iget-object v1, p0, Lmickles/app/mAccuWeatherS7/mWeatherSystemUI;->layout01:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v1, p0, Lmickles/app/mAccuWeatherS7/mWeatherSystemUI;->layout02:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v1, p0, Lmickles/app/mAccuWeatherS7/mWeatherSystemUI;->layout03:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v1, p0, Lmickles/app/mAccuWeatherS7/mWeatherSystemUI;->layout031:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v1, p0, Lmickles/app/mAccuWeatherS7/mWeatherSystemUI;->layout032:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v1, p0, Lmickles/app/mAccuWeatherS7/mWeatherSystemUI;->layout04:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v1, p0, Lmickles/app/mAccuWeatherS7/mWeatherSystemUI;->layout01:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Lmickles/app/mAccuWeatherS7/mWeatherSystemUI;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lmickles/app/mAccuWeatherS7/mWeatherSystemUI;->layout02:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Lmickles/app/mAccuWeatherS7/mWeatherSystemUI;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lmickles/app/mAccuWeatherS7/mWeatherSystemUI;->layout03:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Lmickles/app/mAccuWeatherS7/mWeatherSystemUI;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lmickles/app/mAccuWeatherS7/mWeatherSystemUI;->layout04:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Lmickles/app/mAccuWeatherS7/mWeatherSystemUI;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lmickles/app/mAccuWeatherS7/mWeatherSystemUI;->layout01:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lmickles/app/mAccuWeatherS7/mWeatherSystemUI;->image:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lmickles/app/mAccuWeatherS7/mWeatherSystemUI;->layout02:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lmickles/app/mAccuWeatherS7/mWeatherSystemUI;->currTemper:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lmickles/app/mAccuWeatherS7/mWeatherSystemUI;->layout02:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lmickles/app/mAccuWeatherS7/mWeatherSystemUI;->scale:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lmickles/app/mAccuWeatherS7/mWeatherSystemUI;->layout03:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lmickles/app/mAccuWeatherS7/mWeatherSystemUI;->layout031:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lmickles/app/mAccuWeatherS7/mWeatherSystemUI;->layout03:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lmickles/app/mAccuWeatherS7/mWeatherSystemUI;->layout032:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lmickles/app/mAccuWeatherS7/mWeatherSystemUI;->layout031:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lmickles/app/mAccuWeatherS7/mWeatherSystemUI;->highTemper:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lmickles/app/mAccuWeatherS7/mWeatherSystemUI;->layout031:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lmickles/app/mAccuWeatherS7/mWeatherSystemUI;->scale31:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lmickles/app/mAccuWeatherS7/mWeatherSystemUI;->layout032:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lmickles/app/mAccuWeatherS7/mWeatherSystemUI;->lowTemper:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lmickles/app/mAccuWeatherS7/mWeatherSystemUI;->layout032:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lmickles/app/mAccuWeatherS7/mWeatherSystemUI;->scale32:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lmickles/app/mAccuWeatherS7/mWeatherSystemUI;->layout04:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lmickles/app/mAccuWeatherS7/mWeatherSystemUI;->location:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lmickles/app/mAccuWeatherS7/mWeatherSystemUI;->layout04:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lmickles/app/mAccuWeatherS7/mWeatherSystemUI;->text:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lmickles/app/mAccuWeatherS7/mWeatherSystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lmickles/app/mAccuWeatherS7/mWeatherSystemUI;->isWeatherTrueS7(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lmickles/app/mAccuWeatherS7/mWeatherSystemUI;->updateWeather()V

    :goto_0
    return-void

    :cond_0
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lmickles/app/mAccuWeatherS7/mWeatherSystemUI;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic access$100(Lmickles/app/mAccuWeatherS7/mWeatherSystemUI;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lmickles/app/mAccuWeatherS7/mWeatherSystemUI;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method isWeatherTrueS7(Landroid/content/Context;)Z
    .locals 10

    const/4 v9, 0x0

    const-string v2, "content://com.sec.android.daemonapp.ap.accuweather.provider/weatherinfo"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "COL_WEATHER_KEY=\"%s\""

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "cityId:current"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_2

    :cond_0
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, v6

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_0

    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v9, 0x1

    goto :goto_1

    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catch_0
    move-exception v2

    :cond_2
    :goto_2
    return v9

    :cond_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v2

    throw v2
.end method

.method protected onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    new-instance v1, Lmickles/app/mAccuWeatherS7/mWeatherSystemUI$BroadCastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lmickles/app/mAccuWeatherS7/mWeatherSystemUI$BroadCastReceiver;-><init>(Lmickles/app/mAccuWeatherS7/mWeatherSystemUI;Lmickles/app/mAccuWeatherS7/mWeatherSystemUI$1;)V

    iput-object v1, p0, Lmickles/app/mAccuWeatherS7/mWeatherSystemUI;->mReceiver:Lmickles/app/mAccuWeatherS7/mWeatherSystemUI$BroadCastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iget-object v1, p0, Lmickles/app/mAccuWeatherS7/mWeatherSystemUI;->MWEATHER_SETTINGS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lmickles/app/mAccuWeatherS7/mWeatherSystemUI;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lmickles/app/mAccuWeatherS7/mWeatherSystemUI;->mReceiver:Lmickles/app/mAccuWeatherS7/mWeatherSystemUI$BroadCastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lmickles/app/mAccuWeatherS7/mWeatherSystemUI;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lmickles/app/mAccuWeatherS7/mWeatherSystemUI;->mReceiver:Lmickles/app/mAccuWeatherS7/mWeatherSystemUI$BroadCastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method updateWeather()V
    .locals 0

    return-void
.end method
