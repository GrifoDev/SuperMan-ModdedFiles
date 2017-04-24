.class public Lcom/samsung/android/settings/DropDownPreference;
.super Landroid/preference/ListPreference;
.source "DropDownPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/DropDownPreference$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mSpinner:Landroid/widget/Spinner;


# direct methods
.method static synthetic -wrap0(Lcom/samsung/android/settings/DropDownPreference;Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/DropDownPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/settings/DropDownPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/DropDownPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/DropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f010115

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/DropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/settings/DropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Lcom/samsung/android/settings/DropDownPreference$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/DropDownPreference$1;-><init>(Lcom/samsung/android/settings/DropDownPreference;)V

    iput-object v0, p0, Lcom/samsung/android/settings/DropDownPreference;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    iput-object p1, p0, Lcom/samsung/android/settings/DropDownPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/DropDownPreference;->createAdapter()Landroid/widget/ArrayAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/DropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    const v0, 0x7f0401e5

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/DropDownPreference;->setLayoutResource(I)V

    invoke-direct {p0}, Lcom/samsung/android/settings/DropDownPreference;->updateEntries()V

    return-void
.end method

.method private updateEntries()V
    .locals 6

    iget-object v1, p0, Lcom/samsung/android/settings/DropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->clear()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/DropDownPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/DropDownPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    iget-object v4, p0, Lcom/samsung/android/settings/DropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected createAdapter()Landroid/widget/ArrayAdapter;
    .locals 3

    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/samsung/android/settings/DropDownPreference;->mContext:Landroid/content/Context;

    const v2, 0x1090009

    invoke-direct {v0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public findSpinnerIndexOfValue(Ljava/lang/String;)I
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/settings/DropDownPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    array-length v2, v0

    add-int/lit8 v1, v2, -0x1

    :goto_0
    if-ltz v1, :cond_1

    aget-object v2, v0, v1

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    return v2
.end method

.method protected notifyChanged()V
    .locals 1

    invoke-super {p0}, Landroid/preference/ListPreference;->notifyChanged()V

    iget-object v0, p0, Lcom/samsung/android/settings/DropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x0

    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onBindView(Landroid/view/View;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f11049f

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    iput-object v3, p0, Lcom/samsung/android/settings/DropDownPreference;->mSpinner:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/samsung/android/settings/DropDownPreference;->mSpinner:Landroid/widget/Spinner;

    iget-object v4, p0, Lcom/samsung/android/settings/DropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v3, p0, Lcom/samsung/android/settings/DropDownPreference;->mSpinner:Landroid/widget/Spinner;

    iget-object v4, p0, Lcom/samsung/android/settings/DropDownPreference;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v3, p0, Lcom/samsung/android/settings/DropDownPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v5}, Landroid/widget/Spinner;->setSoundEffectsEnabled(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/DropDownPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {p0}, Lcom/samsung/android/settings/DropDownPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/DropDownPreference;->findSpinnerIndexOfValue(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setSelection(I)V

    const v3, 0x1020016

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/settings/DropDownPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100326

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v3, v0

    const/4 v4, 0x2

    invoke-virtual {v2, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    const v3, 0x1020010

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/DropDownPreference;->mSpinner:Landroid/widget/Spinner;

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/settings/DropDownPreference;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onClick(): spinner is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/DropDownPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->performClick()Z

    goto :goto_0
.end method

.method public setEntries([Ljava/lang/CharSequence;)V
    .locals 0
    .param p1    # [Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/DropDownPreference;->updateEntries()V

    return-void
.end method

.method public setValueIndex(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/DropDownPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/DropDownPreference;->setValue(Ljava/lang/String;)V

    return-void
.end method
