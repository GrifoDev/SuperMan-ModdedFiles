.class public Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity$CountryAdapter;
    }
.end annotation


# static fields
.field public static final EXTRA_HIDE_COUNTRY_CALLING_CODE:Ljava/lang/String; = "extra_hide_country_calling_code"

.field public static final INTENT_MODE:Ljava/lang/String; = "mode"

.field public static final INTENT_MODE_MID:I = 0x0

.field public static final INTENT_MODE_UNMID:I = 0x1

.field public static final MAXLENGTH_LANGNAME:I = 0x1e

.field public static final POPUP_TEXT_COLOR:I

.field private static final TAG:Ljava/lang/String; = "CountryActivity"


# instance fields
.field private final INDEX_START:Ljava/lang/String;

.field public final TEXT_COLOR:I

.field private final WRITE_CODE_COUNTRY:I

.field private allCountries:[Ljava/lang/CharSequence;

.field private alphabetlayout:Landroid/widget/LinearLayout;

.field private countryAdapter:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity$CountryAdapter;

.field private countryCode:[Ljava/lang/CharSequence;

.field private countryISO:[Ljava/lang/CharSequence;

.field countryMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field countryMap2:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field countryMap3:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private editCountry:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/TwSearchView;

.field private editTextHolder:Landroid/widget/LinearLayout;

.field private listRoot:Landroid/view/ViewGroup;

.field private mContext:Landroid/content/Context;

.field private mFilteredCountry:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mListView:Landroid/widget/ListView;

.field private mMode:I

.field private mNoSearchCountries:Landroid/view/View;

.field private needBackKey:Z

.field private selectedCountry:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "#00CDFF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->POPUP_TEXT_COLOR:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->selectedCountry:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->countryMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->countryMap2:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->countryMap3:Ljava/util/Map;

    iput-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->countryAdapter:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity$CountryAdapter;

    iput-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->mFilteredCountry:Ljava/util/ArrayList;

    iput v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->WRITE_CODE_COUNTRY:I

    const-string v0, "#80979797"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->TEXT_COLOR:I

    iput v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->mMode:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->needBackKey:Z

    const-string v0, "Z"

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->INDEX_START:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->mFilteredCountry:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;)[Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->allCountries:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;)[Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->countryCode:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->listRoot:Landroid/view/ViewGroup;

    return-object v0
.end method


# virtual methods
.method public finishActivity(I)V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "PARAMS_COUNTRY_NAME"

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->countryMap3:Ljava/util/Map;

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->selectedCountry:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->finish()V

    return-void
.end method

.method public isRtlLayout()Z
    .locals 2

    const/4 v0, 0x1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    if-ne v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const/4 v3, -0x1

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    if-eq p2, v3, :cond_0

    :goto_0
    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v1, "PARAMS_COUNTRY_CODE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "PARAMS_COUNTRY_CODE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->finish()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    const/16 v3, 0x400

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/sdk/enhancedfeatures/R$dimen;->layout_indexer_textsize_landscape:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, v3}, Landroid/view/Window;->clearFlags(I)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/sdk/enhancedfeatures/R$dimen;->layout_indexer_textsize:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/16 v4, 0x400

    const/4 v6, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/Window;->requestFeature(I)Z

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    invoke-virtual {v0, v4, v4}, Landroid/view/Window;->setFlags(II)V

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    sget v0, Lcom/samsung/android/sdk/enhancedfeatures/R$layout;->activity_country:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->setContentView(I)V

    iput-object p0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->getIntent()Landroid/content/Intent;

    iput-boolean v6, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->needBackKey:Z

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    iget-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->needBackKey:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    sget v2, Lcom/samsung/android/sdk/enhancedfeatures/R$string;->regist_select_country_or_region_code:I

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setTitle(I)V

    sget v0, Lcom/samsung/android/sdk/enhancedfeatures/R$id;->listRoot:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->listRoot:Landroid/view/ViewGroup;

    sget v0, Lcom/samsung/android/sdk/enhancedfeatures/R$id;->editCountrySearch:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/TwSearchView;

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->editCountry:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/TwSearchView;

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->editCountry:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/TwSearchView;

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/TwSearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->editCountry:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/TwSearchView;

    const v2, 0x10000006

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/TwSearchView;->setImeOptions(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->editCountry:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/TwSearchView;

    const/16 v2, 0x4000

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/TwSearchView;->setInputType(I)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/samsung/android/sdk/enhancedfeatures/R$array;->ef_country:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->allCountries:[Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/samsung/android/sdk/enhancedfeatures/R$array;->ef_ISO_country_code_Letter2:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->countryISO:[Ljava/lang/CharSequence;

    sget v0, Lcom/samsung/android/sdk/enhancedfeatures/R$id;->country_list_no_search_result:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->mNoSearchCountries:Landroid/view/View;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/samsung/android/sdk/enhancedfeatures/R$array;->ef_country_code:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->countryCode:[Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "extra_hide_country_calling_code"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    :goto_1
    iget-object v7, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->countryCode:[Ljava/lang/CharSequence;

    array-length v7, v7

    if-ge v0, v7, :cond_3

    iget-object v7, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->countryCode:[Ljava/lang/CharSequence;

    aget-object v7, v7, v0

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->allCountries:[Ljava/lang/CharSequence;

    aget-object v7, v7, v0

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->countryCode:[Ljava/lang/CharSequence;

    aget-object v7, v7, v0

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->countryISO:[Ljava/lang/CharSequence;

    aget-object v7, v7, v0

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v4}, Landroid/view/Window;->clearFlags(I)V

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->allCountries:[Ljava/lang/CharSequence;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->countryCode:[Ljava/lang/CharSequence;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->countryISO:[Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->allCountries:[Ljava/lang/CharSequence;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->countryCode:[Ljava/lang/CharSequence;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->countryISO:[Ljava/lang/CharSequence;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :cond_4
    move v0, v1

    :goto_2
    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->allCountries:[Ljava/lang/CharSequence;

    array-length v2, v2

    if-ge v0, v2, :cond_5

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->countryMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->allCountries:[Ljava/lang/CharSequence;

    aget-object v3, v3, v0

    iget-object v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->countryCode:[Ljava/lang/CharSequence;

    aget-object v4, v4, v0

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->countryMap2:Ljava/util/Map;

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->allCountries:[Ljava/lang/CharSequence;

    aget-object v3, v3, v0

    iget-object v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->countryISO:[Ljava/lang/CharSequence;

    aget-object v4, v4, v0

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->countryMap3:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->allCountries:[Ljava/lang/CharSequence;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->countryCode:[Ljava/lang/CharSequence;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->countryISO:[Ljava/lang/CharSequence;

    aget-object v4, v4, v0

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    sget v0, Lcom/samsung/android/sdk/enhancedfeatures/R$id;->list:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->mListView:Landroid/widget/ListView;

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity$CountryAdapter;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity$CountryAdapter;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->countryAdapter:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity$CountryAdapter;

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->countryAdapter:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity$CountryAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->mListView:Landroid/widget/ListView;

    new-instance v2, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity$1;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "mode"

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->mMode:I

    :cond_6
    sget v0, Lcom/samsung/android/sdk/enhancedfeatures/R$id;->country_scrollview:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/R$styleable;->ContactListItemView:[I

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    sget v3, Lcom/samsung/android/sdk/enhancedfeatures/R$styleable;->ContactListItemView_tw_index_scroll_theme:I

    invoke-virtual {v2, v3, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->setIndexScrollViewTheme(I)V

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "Z"

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    move v4, v1

    move v2, v1

    :goto_3
    iget-object v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->allCountries:[Ljava/lang/CharSequence;

    array-length v5, v5

    if-ge v4, v5, :cond_9

    iget-object v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->allCountries:[Ljava/lang/CharSequence;

    aget-object v5, v5, v4

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8

    move v5, v6

    :goto_4
    if-eqz v5, :cond_7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v8, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->allCountries:[Ljava/lang/CharSequence;

    aget-object v3, v3, v4

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->allCountries:[Ljava/lang/CharSequence;

    aget-object v3, v3, v4

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_8
    move v5, v1

    goto :goto_4

    :cond_9
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->setSimpleIndexHandleChar([Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/sdk/enhancedfeatures/R$dimen;->tw_indexview_first_handle_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->setSimpleIndexWidth(I)V

    invoke-virtual {v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->invalidate()V

    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity$2;

    invoke-direct {v1, p0, v8}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity$2;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->setOnIndexSelectedListener(Lcom/andraskindler/quickscroll/TwLangIndexScrollView$OnIndexSelectedListener;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_a

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonFeature;->getIsSamsungDevice()Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/Constant;->SMS_PERMISSIONS_SAMSUNG_DEVICES:[Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/PermissionUtils;->checkPermission(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "It doesn\'t have permissions..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CountryActivity"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->finish()V

    :cond_a
    :goto_5
    return-void

    :cond_b
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/Constant;->SMS_PHONE_STATE_PERMISSIONS_NON_SAMSUNG_DEVICES:[Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/PermissionUtils;->checkPermission(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "It doesn\'t have permissions..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CountryActivity"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->finish()V

    goto :goto_5
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    sget v0, Lcom/samsung/android/sdk/enhancedfeatures/R$id;->text1:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->selectedCountry:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->countryMap3:Ljava/util/Map;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->selectedCountry:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "selectedCountry ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->selectedCountry:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " selectedISO ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CountryActivity"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->finishActivity(I)V

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity$CountryAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity$CountryAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->finish()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 3

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->editCountry:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/TwSearchView;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/TwSearchView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 7

    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->countryMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->mFilteredCountry:Ljava/util/ArrayList;

    const-string v0, "+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v5, :cond_0

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->allCountries:[Ljava/lang/CharSequence;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->allCountries:[Ljava/lang/CharSequence;

    aget-object v3, v3, v0

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-gt v2, v3, :cond_2

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->allCountries:[Ljava/lang/CharSequence;

    aget-object v2, v2, v0

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/HangulJamoUtil;->isMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->countryCode:[Ljava/lang/CharSequence;

    aget-object v2, v2, v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    const-string v2, "+"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->countryMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->allCountries:[Ljava/lang/CharSequence;

    aget-object v3, v3, v0

    iget-object v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->countryCode:[Ljava/lang/CharSequence;

    aget-object v4, v4, v0

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->mFilteredCountry:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->allCountries:[Ljava/lang/CharSequence;

    aget-object v3, v3, v0

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->countryAdapter:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity$CountryAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity$CountryAdapter;->setSearchFilter(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->countryAdapter:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity$CountryAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity$CountryAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->mFilteredCountry:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->mFilteredCountry:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "YES"

    const-string v2, "CountryActivity"

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->listRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->mNoSearchCountries:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return v5

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->listRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->mNoSearchCountries:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method
