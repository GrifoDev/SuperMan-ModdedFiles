.class public Lcom/samsung/android/settings/deviceinfo/ActivationPreference;
.super Landroid/support/v7/preference/Preference;
.source "ActivationPreference.java"


# static fields
.field private static mContext:Landroid/content/Context;


# instance fields
.field private textview:Landroid/widget/TextView;


# direct methods
.method static synthetic -get0()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/deviceinfo/ActivationPreference;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/settings/deviceinfo/ActivationPreference;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sput-object p1, Lcom/samsung/android/settings/deviceinfo/ActivationPreference;->mContext:Landroid/content/Context;

    const v0, 0x7f0d0027

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/deviceinfo/ActivationPreference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public makeSummary()V
    .locals 9

    sget-object v5, Lcom/samsung/android/settings/deviceinfo/ActivationPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const-string/jumbo v7, "https://support-cn.samsung.com/supportcn/Imei/default.aspx"

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const v7, 0x7f1200c8

    invoke-virtual {v5, v7, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string/jumbo v5, "https://support-cn.samsung.com/supportcn/Imei/default.aspx"

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v5, "https://support-cn.samsung.com/supportcn/Imei/default.aspx"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int v1, v3, v5

    new-instance v2, Lcom/samsung/android/settings/deviceinfo/ActivationPreference$1;

    invoke-direct {v2, p0, v3, v1}, Lcom/samsung/android/settings/deviceinfo/ActivationPreference$1;-><init>(Lcom/samsung/android/settings/deviceinfo/ActivationPreference;II)V

    const/16 v5, 0x21

    invoke-virtual {v4, v2, v3, v1, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    iget-object v5, p0, Lcom/samsung/android/settings/deviceinfo/ActivationPreference;->textview:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/samsung/android/settings/deviceinfo/ActivationPreference;->textview:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v5, p0, Lcom/samsung/android/settings/deviceinfo/ActivationPreference;->textview:Landroid/widget/TextView;

    const v6, 0x7f130315

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextAppearance(I)V

    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    const v0, 0x1020010

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/ActivationPreference;->textview:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/ActivationPreference;->makeSummary()V

    return-void
.end method
