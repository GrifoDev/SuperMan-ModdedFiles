.class public Lcom/samsung/android/settings/fmm/MultipleLineTitlePreference;
.super Landroid/preference/Preference;
.source "MultipleLineTitlePreference.java"


# static fields
.field private static SETTINGS_FMM_HYPER_LINK:I

.field private static mContext:Landroid/content/Context;


# instance fields
.field private mURL:Ljava/lang/String;


# direct methods
.method static synthetic -get0()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/fmm/MultipleLineTitlePreference;->SETTINGS_FMM_HYPER_LINK:I

    return v0
.end method

.method static synthetic -get1()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/fmm/MultipleLineTitlePreference;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/fmm/MultipleLineTitlePreference;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/fmm/MultipleLineTitlePreference;->mURL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(I)I
    .locals 0

    sput p0, Lcom/samsung/android/settings/fmm/MultipleLineTitlePreference;->SETTINGS_FMM_HYPER_LINK:I

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/settings/fmm/MultipleLineTitlePreference;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/fmm/MultipleLineTitlePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sput-object p1, Lcom/samsung/android/settings/fmm/MultipleLineTitlePreference;->mContext:Landroid/content/Context;

    const v0, 0x7f04020a

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/fmm/MultipleLineTitlePreference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 10

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    const v6, 0x7f11053c

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string/jumbo v6, "http://findmymobile.samsung.cn"

    :goto_0
    iput-object v6, p0, Lcom/samsung/android/settings/fmm/MultipleLineTitlePreference;->mURL:Ljava/lang/String;

    sget-object v6, Lcom/samsung/android/settings/fmm/MultipleLineTitlePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/samsung/android/settings/fmm/MultipleLineTitlePreference;->mURL:Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const v8, 0x7f0b073d

    invoke-virtual {v6, v8, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/samsung/android/settings/fmm/MultipleLineTitlePreference;->mURL:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    iget-object v6, p0, Lcom/samsung/android/settings/fmm/MultipleLineTitlePreference;->mURL:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int v1, v3, v6

    new-instance v2, Lcom/samsung/android/settings/fmm/MultipleLineTitlePreference$1;

    invoke-direct {v2, p0, v3, v1}, Lcom/samsung/android/settings/fmm/MultipleLineTitlePreference$1;-><init>(Lcom/samsung/android/settings/fmm/MultipleLineTitlePreference;II)V

    const/16 v6, 0x21

    invoke-virtual {v4, v2, v3, v1, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const v6, 0x7f0f026e

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextAppearance(I)V

    return-void

    :cond_0
    const-string/jumbo v6, "https://findmymobile.samsung.com"

    goto :goto_0
.end method
