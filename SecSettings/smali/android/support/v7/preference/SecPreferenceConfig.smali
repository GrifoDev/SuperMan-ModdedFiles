.class public Landroid/support/v7/preference/SecPreferenceConfig;
.super Landroid/support/v7/preference/Preference;
.source "SecPreferenceConfig.java"


# instance fields
.field private mColorUpdateButton:I

.field private mContext:Landroid/content/Context;

.field private mEditor:Landroid/content/SharedPreferences$Editor;

.field private mPref:Landroid/content/SharedPreferences;

.field private mTextUpdateButton:Ljava/lang/String;


# direct methods
.method static synthetic -wrap0(Landroid/support/v7/preference/SecPreferenceConfig;)Z
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/preference/SecPreferenceConfig;->isOnline()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Landroid/support/v7/preference/SecPreferenceConfig;)I
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/preference/SecPreferenceConfig;->readUpdateButtonState()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Landroid/support/v7/preference/SecPreferenceConfig;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/preference/SecPreferenceConfig;->forceRefreshConfigVersion()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const v0, 0x7f040089

    const v1, 0x1010091

    invoke-static {p1, v0, v1}, Landroid/support/v4/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/preference/SecPreferenceConfig;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/preference/SecPreferenceConfig;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const v0, -0xffff01

    iput v0, p0, Landroid/support/v7/preference/SecPreferenceConfig;->mColorUpdateButton:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/support/v7/preference/SecPreferenceConfig;->mTextUpdateButton:Ljava/lang/String;

    invoke-direct {p0, p1}, Landroid/support/v7/preference/SecPreferenceConfig;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method private forceRefreshConfigVersion()V
    .locals 6

    :try_start_0
    iget-object v2, p0, Landroid/support/v7/preference/SecPreferenceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "content://com.samsung.nsds.provider/device_config/force_update"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private getConfigVersion()Ljava/lang/String;
    .locals 7

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v1, p0, Landroid/support/v7/preference/SecPreferenceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const-string/jumbo v1, "version"

    aput-object v1, v2, v4

    const-string/jumbo v1, "content://com.samsung.nsds.provider/device_config"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v1

    :cond_1
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    iget-object v1, p0, Landroid/support/v7/preference/SecPreferenceConfig;->mContext:Landroid/content/Context;

    const v3, 0x7f120794

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :catchall_0
    move-exception v1

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iput-object p1, p0, Landroid/support/v7/preference/SecPreferenceConfig;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/support/v7/preference/SecPreferenceConfig;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.settings.preference.config.update"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/preference/SecPreferenceConfig;->mPref:Landroid/content/SharedPreferences;

    iget-object v1, p0, Landroid/support/v7/preference/SecPreferenceConfig;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/preference/SecPreferenceConfig;->mEditor:Landroid/content/SharedPreferences$Editor;

    const v1, 0x7f0d007c

    invoke-virtual {p0, v1}, Landroid/support/v7/preference/SecPreferenceConfig;->setLayoutResource(I)V

    invoke-direct {p0}, Landroid/support/v7/preference/SecPreferenceConfig;->readUpdateButtonState()I

    move-result v0

    if-eq v0, v4, :cond_0

    invoke-direct {p0, v3}, Landroid/support/v7/preference/SecPreferenceConfig;->storeUpdateButtonState(I)V

    invoke-virtual {p0, v4}, Landroid/support/v7/preference/SecPreferenceConfig;->setSelectable(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Landroid/support/v7/preference/SecPreferenceConfig;->mContext:Landroid/content/Context;

    const v2, 0x7f121ca8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/preference/SecPreferenceConfig;->mTextUpdateButton:Ljava/lang/String;

    const v1, -0xffff01

    iput v1, p0, Landroid/support/v7/preference/SecPreferenceConfig;->mColorUpdateButton:I

    invoke-virtual {p0, v3}, Landroid/support/v7/preference/SecPreferenceConfig;->setSelectable(Z)V

    goto :goto_0
.end method

.method private isOnline()Z
    .locals 4

    iget-object v2, p0, Landroid/support/v7/preference/SecPreferenceConfig;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private readUpdateButtonState()I
    .locals 3

    iget-object v0, p0, Landroid/support/v7/preference/SecPreferenceConfig;->mPref:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "com.settings.update_button"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private storeUpdateButtonState(I)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/preference/SecPreferenceConfig;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "com.settings.update_button"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    invoke-direct {p0}, Landroid/support/v7/preference/SecPreferenceConfig;->readUpdateButtonState()I

    move-result v0

    const v3, 0x7f0a091c

    invoke-virtual {p1, v3}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0a084b

    invoke-virtual {p1, v3}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-direct {p0}, Landroid/support/v7/preference/SecPreferenceConfig;->getConfigVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v0, :cond_1

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Landroid/support/v7/preference/SecPreferenceConfig;->mTextUpdateButton:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v3, p0, Landroid/support/v7/preference/SecPreferenceConfig;->mColorUpdateButton:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    new-instance v3, Landroid/support/v7/preference/SecPreferenceConfig$1;

    invoke-direct {v3, p0}, Landroid/support/v7/preference/SecPreferenceConfig$1;-><init>(Landroid/support/v7/preference/SecPreferenceConfig;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_1
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setUpdateButtonVisibility(I)V
    .locals 5

    const/4 v4, 0x0

    const v3, -0xffff01

    const/4 v2, 0x1

    invoke-direct {p0, p1}, Landroid/support/v7/preference/SecPreferenceConfig;->storeUpdateButtonState(I)V

    if-ne p1, v2, :cond_0

    iget-object v0, p0, Landroid/support/v7/preference/SecPreferenceConfig;->mContext:Landroid/content/Context;

    const v1, 0x7f121ca8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/preference/SecPreferenceConfig;->mTextUpdateButton:Ljava/lang/String;

    iput v3, p0, Landroid/support/v7/preference/SecPreferenceConfig;->mColorUpdateButton:I

    invoke-virtual {p0, v4}, Landroid/support/v7/preference/SecPreferenceConfig;->setSelectable(Z)V

    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/preference/SecPreferenceConfig;->notifyChanged()V

    return-void

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/preference/SecPreferenceConfig;->mContext:Landroid/content/Context;

    const v1, 0x7f121cb2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/preference/SecPreferenceConfig;->mTextUpdateButton:Ljava/lang/String;

    iput v3, p0, Landroid/support/v7/preference/SecPreferenceConfig;->mColorUpdateButton:I

    invoke-virtual {p0, v4}, Landroid/support/v7/preference/SecPreferenceConfig;->setSelectable(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/preference/SecPreferenceConfig;->mContext:Landroid/content/Context;

    const v1, 0x7f12099b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/preference/SecPreferenceConfig;->mTextUpdateButton:Ljava/lang/String;

    const v0, -0x777778

    iput v0, p0, Landroid/support/v7/preference/SecPreferenceConfig;->mColorUpdateButton:I

    invoke-virtual {p0, v2}, Landroid/support/v7/preference/SecPreferenceConfig;->setSelectable(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v2}, Landroid/support/v7/preference/SecPreferenceConfig;->setSelectable(Z)V

    goto :goto_0
.end method
