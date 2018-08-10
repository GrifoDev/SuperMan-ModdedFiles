.class public Lcom/samsung/android/settings/search/model/SecMenu;
.super Ljava/lang/Object;
.source "SecMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;
    }
.end annotation


# instance fields
.field private final EMPTY:Ljava/lang/String;

.field private final HYPHEN:Ljava/lang/String;

.field private final NODE_NAME_PREFERENCE_SCREEN:Ljava/lang/String;

.field private final NON_BREAKING_HYPHEN:Ljava/lang/String;

.field private final REMOVE_DIACRITICALS_PATTERN:Ljava/util/regex/Pattern;

.field private SETTINGS_FOR_KNOX:[Ljava/lang/String;

.field protected TAG:Ljava/lang/String;

.field protected mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

.field protected parent:Lcom/samsung/android/settings/search/model/SecMenu;

.field protected subMenues:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/settings/search/model/SecMenu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/search/model/SecMenu;Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v1, "SecMenutree"

    iput-object v1, p0, Lcom/samsung/android/settings/search/model/SecMenu;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "PreferenceScreen"

    iput-object v1, p0, Lcom/samsung/android/settings/search/model/SecMenu;->NODE_NAME_PREFERENCE_SCREEN:Ljava/lang/String;

    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/samsung/android/settings/search/model/SecMenu;->EMPTY:Ljava/lang/String;

    const-string/jumbo v1, "\u2011"

    iput-object v1, p0, Lcom/samsung/android/settings/search/model/SecMenu;->NON_BREAKING_HYPHEN:Ljava/lang/String;

    const-string/jumbo v1, "-"

    iput-object v1, p0, Lcom/samsung/android/settings/search/model/SecMenu;->HYPHEN:Ljava/lang/String;

    const-string/jumbo v1, "\\p{InCombiningDiacriticalMarks}+"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/search/model/SecMenu;->REMOVE_DIACRITICALS_PATTERN:Ljava/util/regex/Pattern;

    iput-object v2, p0, Lcom/samsung/android/settings/search/model/SecMenu;->SETTINGS_FOR_KNOX:[Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/settings/search/model/SecMenu;->parent:Lcom/samsung/android/settings/search/model/SecMenu;

    iput-object p2, p0, Lcom/samsung/android/settings/search/model/SecMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    if-eqz p1, :cond_0

    const-string/jumbo v1, ""

    iget-object v2, p1, Lcom/samsung/android/settings/search/model/SecMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    invoke-static {v2}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->-get12(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "Settings"

    iget-object v2, p1, Lcom/samsung/android/settings/search/model/SecMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    invoke-static {v2}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->-get25(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v0, ""

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/search/model/SecMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->setMenuPath(Ljava/lang/String;)Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    :cond_0
    return-void

    :cond_1
    iget-object v1, p1, Lcom/samsung/android/settings/search/model/SecMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    invoke-static {v1}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->-get25(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/samsung/android/settings/search/model/SecMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    invoke-static {v2}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->-get12(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/samsung/android/settings/search/model/SecMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    invoke-static {v2}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->-get25(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getCurrentRank(Lcom/samsung/android/settings/search/model/SecMenu;)I
    .locals 5

    iget-object v3, p0, Lcom/samsung/android/settings/search/model/SecMenu;->subMenues:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->size()I

    move-result v3

    add-int/lit8 v1, v3, 0x1

    iget-object v3, p1, Lcom/samsung/android/settings/search/model/SecMenu;->parent:Lcom/samsung/android/settings/search/model/SecMenu;

    iget-object v3, v3, Lcom/samsung/android/settings/search/model/SecMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    invoke-static {v3}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->-get20(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const v3, 0x5f5e100

    mul-int v0, v1, v3

    :goto_0
    return v0

    :cond_0
    iget-object v3, p1, Lcom/samsung/android/settings/search/model/SecMenu;->parent:Lcom/samsung/android/settings/search/model/SecMenu;

    iget-object v3, v3, Lcom/samsung/android/settings/search/model/SecMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    invoke-static {v3}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->-get20(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/samsung/android/settings/search/model/SecMenu;->parent:Lcom/samsung/android/settings/search/model/SecMenu;

    iget-object v3, v3, Lcom/samsung/android/settings/search/model/SecMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    invoke-static {v3}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->-get19(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)I

    move-result v3

    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    div-int/lit8 v4, v4, 0x64

    add-int/2addr v3, v4

    add-int v0, v3, v1

    goto :goto_0
.end method

.method private getInitialConsonant(C)Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, ""

    const v2, 0xac00

    sub-int v2, p1, v2

    div-int/lit16 v1, v2, 0x24c

    packed-switch v1, :pswitch_data_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    const-string/jumbo v0, "\u3131"

    goto :goto_0

    :pswitch_1
    const-string/jumbo v0, "\u3132"

    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "\u3134"

    goto :goto_0

    :pswitch_3
    const-string/jumbo v0, "\u3137"

    goto :goto_0

    :pswitch_4
    const-string/jumbo v0, "\u3138"

    goto :goto_0

    :pswitch_5
    const-string/jumbo v0, "\u3139"

    goto :goto_0

    :pswitch_6
    const-string/jumbo v0, "\u3141"

    goto :goto_0

    :pswitch_7
    const-string/jumbo v0, "\u3142"

    goto :goto_0

    :pswitch_8
    const-string/jumbo v0, "\u3143"

    goto :goto_0

    :pswitch_9
    const-string/jumbo v0, "\u3145"

    goto :goto_0

    :pswitch_a
    const-string/jumbo v0, "\u3146"

    goto :goto_0

    :pswitch_b
    const-string/jumbo v0, "\u3147"

    goto :goto_0

    :pswitch_c
    const-string/jumbo v0, "\u3148"

    goto :goto_0

    :pswitch_d
    const-string/jumbo v0, "\u3149"

    goto :goto_0

    :pswitch_e
    const-string/jumbo v0, "\u314a"

    goto :goto_0

    :pswitch_f
    const-string/jumbo v0, "\u314b"

    goto :goto_0

    :pswitch_10
    const-string/jumbo v0, "\u314c"

    goto :goto_0

    :pswitch_11
    const-string/jumbo v0, "\u314d"

    goto :goto_0

    :pswitch_12
    const-string/jumbo v0, "\u314e"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method

.method private getInitialKeyword(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string/jumbo v2, ""

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/search/model/SecMenu;->getInitialConsonant(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method private hexString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/samsung/android/settings/sfinderconnect/NameNormalizer;->lettersAndDigitsOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/sfinderconnect/NameNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isRemovedFromCOM(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/settings/search/model/SecMenu;->SETTINGS_FOR_KNOX:[Ljava/lang/String;

    if-nez v2, :cond_0

    invoke-static {}, Landroid/os/PersonaPolicyManager;->getComSettings()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/search/model/SecMenu;->SETTINGS_FOR_KNOX:[Ljava/lang/String;

    return v3

    :cond_0
    const/4 v1, 0x1

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/search/model/SecMenu;->SETTINGS_FOR_KNOX:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    if-eqz p2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/search/model/SecMenu;->SETTINGS_FOR_KNOX:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    const/4 v1, 0x0

    :cond_2
    return v1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return v3
.end method

.method private normalizeHyphen(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    const-string/jumbo v0, "\u2011"

    const-string/jumbo v1, "-"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method private normalizeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-eqz p1, :cond_0

    const-string/jumbo v2, "-"

    const-string/jumbo v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    sget-object v2, Ljava/text/Normalizer$Form;->NFD:Ljava/text/Normalizer$Form;

    invoke-static {v0, v2}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/search/model/SecMenu;->REMOVE_DIACRITICALS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method private saveMenu(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Lcom/samsung/android/settings/search/model/SecMenu;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/samsung/android/settings/search/model/SecMenu;",
            ")V"
        }
    .end annotation

    iget-object v1, p0, Lcom/samsung/android/settings/search/model/SecMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    invoke-static {v1}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->-get25(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v0

    if-eqz p4, :cond_0

    iget-object v1, p4, Lcom/samsung/android/settings/search/model/SecMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    invoke-static {v1}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->-get25(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v0

    instance-of v1, p4, Lcom/samsung/android/settings/search/model/SecInnerMenu;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/search/model/SecMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    check-cast p4, Lcom/samsung/android/settings/search/model/SecInnerMenu;

    iget-object v2, p4, Lcom/samsung/android/settings/search/model/SecInnerMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    invoke-static {v2}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->-get2(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->setClassName(Ljava/lang/String;)Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/search/model/SecMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    invoke-virtual {v1, p3}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->setLocale(Ljava/lang/String;)Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->setScreenTitle(Ljava/lang/String;)Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->setEnabled(Z)Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->setUserId(I)Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/search/model/SecMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/search/model/SecMenu;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p0, p1, p2, v1, v2}, Lcom/samsung/android/settings/search/model/SecMenu;->updateOneRowWithFilteredData(Landroid/content/Context;Ljava/util/List;Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;Landroid/os/Bundle;)V

    return-void

    :cond_1
    instance-of v1, p4, Lcom/samsung/android/settings/search/model/SecLinkedMenu;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/search/model/SecMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    move-object v1, p4

    check-cast v1, Lcom/samsung/android/settings/search/model/SecLinkedMenu;

    iget-object v1, v1, Lcom/samsung/android/settings/search/model/SecLinkedMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    invoke-static {v1}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->-get6(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->setIntentAction(Ljava/lang/String;)Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    move-result-object v2

    move-object v1, p4

    check-cast v1, Lcom/samsung/android/settings/search/model/SecLinkedMenu;

    iget-object v1, v1, Lcom/samsung/android/settings/search/model/SecLinkedMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    invoke-static {v1}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->-get8(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->setIntentTargetPackage(Ljava/lang/String;)Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    move-result-object v1

    check-cast p4, Lcom/samsung/android/settings/search/model/SecLinkedMenu;

    iget-object v2, p4, Lcom/samsung/android/settings/search/model/SecLinkedMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    invoke-static {v2}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->-get7(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->setIntentTargetClass(Ljava/lang/String;)Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    goto :goto_0
.end method

.method private setRankPath(Lcom/samsung/android/settings/search/model/SecMenu;I)V
    .locals 3

    iget-object v1, p1, Lcom/samsung/android/settings/search/model/SecMenu;->parent:Lcom/samsung/android/settings/search/model/SecMenu;

    iget-object v1, v1, Lcom/samsung/android/settings/search/model/SecMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    invoke-static {v1}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->-get20(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/samsung/android/settings/search/model/SecMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->setRankPath(Ljava/lang/String;)Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public addSubMenu(Lcom/samsung/android/settings/search/model/SecMenu;)V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/settings/search/model/SecMenu;->subMenues:Ljava/util/LinkedHashMap;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/search/model/SecMenu;->subMenues:Ljava/util/LinkedHashMap;

    :cond_0
    iget-object v1, p1, Lcom/samsung/android/settings/search/model/SecMenu;->parent:Lcom/samsung/android/settings/search/model/SecMenu;

    iget-object v1, v1, Lcom/samsung/android/settings/search/model/SecMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    invoke-static {v1}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->-get5(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/samsung/android/settings/search/model/SecMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    iget-object v2, p1, Lcom/samsung/android/settings/search/model/SecMenu;->parent:Lcom/samsung/android/settings/search/model/SecMenu;

    iget-object v2, v2, Lcom/samsung/android/settings/search/model/SecMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    invoke-static {v2}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->-get5(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->-set0(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;I)I

    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/search/model/SecMenu;->getCurrentRank(Lcom/samsung/android/settings/search/model/SecMenu;)I

    move-result v0

    iget-object v1, p1, Lcom/samsung/android/settings/search/model/SecMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->setRank(I)Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/search/model/SecMenu;->setRankPath(Lcom/samsung/android/settings/search/model/SecMenu;I)V

    iget-object v1, p0, Lcom/samsung/android/settings/search/model/SecMenu;->subMenues:Ljava/util/LinkedHashMap;

    iget-object v2, p1, Lcom/samsung/android/settings/search/model/SecMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    invoke-static {v2}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->-get9(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public clear()V
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/search/model/SecMenu;->subMenues:Ljava/util/LinkedHashMap;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/search/model/SecMenu;->subMenues:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/search/model/SecMenu;->subMenues:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/search/model/SecMenu;

    invoke-virtual {v0}, Lcom/samsung/android/settings/search/model/SecMenu;->clear()V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/search/model/SecMenu;->subMenues:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->clear()V

    iput-object v3, p0, Lcom/samsung/android/settings/search/model/SecMenu;->subMenues:Ljava/util/LinkedHashMap;

    :cond_1
    return-void
.end method

.method public find(Ljava/lang/String;)Z
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/search/model/SecMenu;->subMenues:Ljava/util/LinkedHashMap;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/search/model/SecMenu;->subMenues:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/search/model/SecMenu;->subMenues:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/search/model/SecMenu;

    iget-object v2, v0, Lcom/samsung/android/settings/search/model/SecMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    invoke-static {v2}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->-get9(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/search/model/SecMenu;->find(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    const/4 v2, 0x1

    return v2

    :cond_2
    return v3
.end method

.method public getBundle()Landroid/os/Bundle;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public hasSubMenu(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/search/model/SecMenu;->subMenues:Ljava/util/LinkedHashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/search/model/SecMenu;->subMenues:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected initInnerSubMenu(Landroid/content/Context;Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;Landroid/os/Bundle;)V
    .locals 18

    move-object/from16 v0, p0

    instance-of v15, v0, Lcom/samsung/android/settings/search/model/SecLinkedMenu;

    if-eqz v15, :cond_0

    invoke-static/range {p2 .. p2}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->-get7(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-static {v2}, Lcom/samsung/android/settings/search/model/SearchUtils;->getIndexableClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    if-nez v3, :cond_1

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "SearchIndexableResource \'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "\' should implement the "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-class v16, Lcom/android/settings/search/Indexable;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " interface!"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/samsung/android/settings/search/model/SearchUtils;->insertLogBuffer(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static/range {p2 .. p2}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->-get2(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    invoke-static {v3}, Lcom/samsung/android/settings/search/model/SearchUtils;->getSearchIndexProvider(Ljava/lang/Class;)Lcom/android/settings/search/Indexable$SearchIndexProvider;

    move-result-object v10

    if-nez v10, :cond_2

    return-void

    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/search/model/SecMenu;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "start index for "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-interface {v10, v0, v1}, Lcom/android/settings/search/Indexable$SearchIndexProvider;->getXmlResourcesToIndex(Landroid/content/Context;Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-interface {v10, v0}, Lcom/android/settings/search/Indexable$SearchIndexProvider;->getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;

    move-result-object v9

    if-eqz v6, :cond_4

    const/4 v4, 0x0

    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v15

    if-ge v4, v15, :cond_4

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/provider/SearchIndexableResource;

    iget v14, v13, Landroid/provider/SearchIndexableResource;->xmlResId:I

    if-lez v14, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v9, v14, v2}, Lcom/samsung/android/settings/search/model/SecMenu;->parsingXmlResource(Landroid/content/Context;Ljava/util/List;ILjava/lang/String;)V

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "There is no xmlResId: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v13, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/samsung/android/settings/search/model/SearchUtils;->insertLogBuffer(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-interface {v10, v0, v1}, Lcom/android/settings/search/Indexable$SearchIndexProvider;->getRawDataToIndex(Landroid/content/Context;Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v12

    if-eqz v12, :cond_13

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v15

    if-lez v15, :cond_13

    const/4 v4, 0x0

    :goto_3
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v15

    if-ge v4, v15, :cond_13

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/settings/search/SearchIndexableRaw;

    if-eqz v9, :cond_6

    iget-object v15, v11, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    invoke-interface {v9, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    :cond_5
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/search/model/SecMenu;->subMenues:Ljava/util/LinkedHashMap;

    if-eqz v15, :cond_e

    iget-object v15, v11, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    if-eqz v15, :cond_e

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/search/model/SecMenu;->subMenues:Ljava/util/LinkedHashMap;

    iget-object v0, v11, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_e

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/search/model/SecMenu;->subMenues:Ljava/util/LinkedHashMap;

    iget-object v0, v11, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/settings/search/model/SecMenu;

    if-eqz v7, :cond_d

    iget-object v15, v11, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_7

    iget-object v15, v7, Lcom/samsung/android/settings/search/model/SecMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    iget-object v0, v11, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->setUpdatedTitle(Ljava/lang/String;)Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    :cond_7
    iget-object v15, v11, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_8

    iget-object v15, v7, Lcom/samsung/android/settings/search/model/SecMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    iget-object v0, v11, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->setUpdatedSummaryOn(Ljava/lang/String;)Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    :cond_8
    iget v15, v11, Lcom/android/settings/search/SearchIndexableRaw;->menu_type:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-le v15, v0, :cond_5

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/search/model/SecMenu;->subMenues:Ljava/util/LinkedHashMap;

    iget-object v0, v11, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget v15, v11, Lcom/android/settings/search/SearchIndexableRaw;->menu_type:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_9

    iget-object v15, v7, Lcom/samsung/android/settings/search/model/SecMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    iget-object v0, v11, Lcom/android/settings/search/SearchIndexableRaw;->className:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->setClassName(Ljava/lang/String;)Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    new-instance v15, Lcom/samsung/android/settings/search/model/SecInnerMenu;

    iget-object v0, v7, Lcom/samsung/android/settings/search/model/SecMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v15, v0, v1}, Lcom/samsung/android/settings/search/model/SecInnerMenu;-><init>(Lcom/samsung/android/settings/search/model/SecMenu;Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/android/settings/search/model/SecMenu;->addSubMenu(Lcom/samsung/android/settings/search/model/SecMenu;)V

    goto/16 :goto_4

    :cond_9
    iget v15, v11, Lcom/android/settings/search/SearchIndexableRaw;->menu_type:I

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_c

    const/4 v5, 0x0

    iget-object v15, v11, Lcom/android/settings/search/SearchIndexableRaw;->intentAction:Ljava/lang/String;

    if-eqz v15, :cond_b

    iget-object v15, v7, Lcom/samsung/android/settings/search/model/SecMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    iget-object v0, v11, Lcom/android/settings/search/SearchIndexableRaw;->intentAction:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->setIntentTargetClass(Ljava/lang/String;)Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    new-instance v5, Landroid/content/Intent;

    iget-object v15, v11, Lcom/android/settings/search/SearchIndexableRaw;->intentAction:Ljava/lang/String;

    invoke-direct {v5, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_5
    iget-object v15, v11, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetClass:Ljava/lang/String;

    if-eqz v15, :cond_a

    iget-object v15, v11, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetPackage:Ljava/lang/String;

    if-eqz v15, :cond_a

    iget-object v15, v7, Lcom/samsung/android/settings/search/model/SecMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    iget-object v0, v11, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetClass:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->setIntentTargetClass(Ljava/lang/String;)Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    move-result-object v15

    iget-object v0, v11, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetPackage:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->setIntentTargetPackage(Ljava/lang/String;)Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    new-instance v15, Landroid/content/ComponentName;

    iget-object v0, v11, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetPackage:Ljava/lang/String;

    move-object/from16 v16, v0

    iget-object v0, v11, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetClass:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-direct/range {v15 .. v17}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v15}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_a
    new-instance v15, Lcom/samsung/android/settings/search/model/SecLinkedMenu;

    iget-object v0, v7, Lcom/samsung/android/settings/search/model/SecMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v15, v0, v1, v5}, Lcom/samsung/android/settings/search/model/SecLinkedMenu;-><init>(Lcom/samsung/android/settings/search/model/SecMenu;Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;Landroid/content/Intent;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/android/settings/search/model/SecMenu;->addSubMenu(Lcom/samsung/android/settings/search/model/SecMenu;)V

    goto/16 :goto_4

    :cond_b
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    goto :goto_5

    :cond_c
    iget v15, v11, Lcom/android/settings/search/SearchIndexableRaw;->menu_type:I

    const/16 v16, 0x3

    move/from16 v0, v16

    if-ne v15, v0, :cond_5

    new-instance v15, Lcom/samsung/android/settings/search/model/SecMenu;

    iget-object v0, v7, Lcom/samsung/android/settings/search/model/SecMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v15, v0, v1}, Lcom/samsung/android/settings/search/model/SecMenu;-><init>(Lcom/samsung/android/settings/search/model/SecMenu;Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/android/settings/search/model/SecMenu;->addSubMenu(Lcom/samsung/android/settings/search/model/SecMenu;)V

    goto/16 :goto_4

    :cond_d
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "menu is null : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v11, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/samsung/android/settings/search/model/SearchUtils;->insertLogBuffer(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_e
    new-instance v8, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    invoke-direct {v8}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;-><init>()V

    iget-object v15, v11, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    invoke-virtual {v8, v15}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->setUpdatedTitle(Ljava/lang/String;)Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    move-result-object v15

    iget-object v0, v11, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->setNormalizedSummaryOn(Ljava/lang/String;)Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    move-result-object v15

    iget-object v0, v11, Lcom/android/settings/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->setKeywords(Ljava/lang/String;)Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    move-result-object v15

    iget-object v0, v11, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->setKey(Ljava/lang/String;)Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    iget-object v15, v11, Lcom/android/settings/search/SearchIndexableRaw;->className:Ljava/lang/String;

    if-eqz v15, :cond_f

    iget-object v15, v11, Lcom/android/settings/search/SearchIndexableRaw;->className:Ljava/lang/String;

    invoke-virtual {v8, v15}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->setClassName(Ljava/lang/String;)Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    new-instance v15, Lcom/samsung/android/settings/search/model/SecInnerMenu;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v8}, Lcom/samsung/android/settings/search/model/SecInnerMenu;-><init>(Lcom/samsung/android/settings/search/model/SecMenu;Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/android/settings/search/model/SecMenu;->addSubMenu(Lcom/samsung/android/settings/search/model/SecMenu;)V

    goto/16 :goto_4

    :cond_f
    iget-object v15, v11, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetClass:Ljava/lang/String;

    if-eqz v15, :cond_12

    iget-object v15, v11, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetPackage:Ljava/lang/String;

    if-eqz v15, :cond_12

    :cond_10
    new-instance v5, Landroid/content/Intent;

    iget-object v15, v11, Lcom/android/settings/search/SearchIndexableRaw;->intentAction:Ljava/lang/String;

    invoke-direct {v5, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v15, v11, Lcom/android/settings/search/SearchIndexableRaw;->intentAction:Ljava/lang/String;

    invoke-virtual {v8, v15}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->setIntentAction(Ljava/lang/String;)Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    iget-object v15, v11, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetClass:Ljava/lang/String;

    if-eqz v15, :cond_11

    iget-object v15, v11, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetPackage:Ljava/lang/String;

    if-eqz v15, :cond_11

    new-instance v15, Landroid/content/ComponentName;

    iget-object v0, v11, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetPackage:Ljava/lang/String;

    move-object/from16 v16, v0

    iget-object v0, v11, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetClass:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-direct/range {v15 .. v17}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v15}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v15, v11, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetClass:Ljava/lang/String;

    invoke-virtual {v8, v15}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->setIntentTargetClass(Ljava/lang/String;)Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    move-result-object v15

    iget-object v0, v11, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetPackage:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->setIntentTargetPackage(Ljava/lang/String;)Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    :cond_11
    new-instance v15, Lcom/samsung/android/settings/search/model/SecLinkedMenu;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v8, v5}, Lcom/samsung/android/settings/search/model/SecLinkedMenu;-><init>(Lcom/samsung/android/settings/search/model/SecMenu;Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;Landroid/content/Intent;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/android/settings/search/model/SecMenu;->addSubMenu(Lcom/samsung/android/settings/search/model/SecMenu;)V

    goto/16 :goto_4

    :cond_12
    iget-object v15, v11, Lcom/android/settings/search/SearchIndexableRaw;->intentAction:Ljava/lang/String;

    if-nez v15, :cond_10

    new-instance v15, Lcom/samsung/android/settings/search/model/SecMenu;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v8}, Lcom/samsung/android/settings/search/model/SecMenu;-><init>(Lcom/samsung/android/settings/search/model/SecMenu;Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/android/settings/search/model/SecMenu;->addSubMenu(Lcom/samsung/android/settings/search/model/SecMenu;)V

    goto/16 :goto_4

    :cond_13
    return-void
.end method

.method public initSubMenu(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method protected parsingXmlResource(Landroid/content/Context;Ljava/util/List;ILjava/lang/String;)V
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/16 v23, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x1

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v23

    if-nez v23, :cond_1

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "parser is null: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/samsung/android/settings/search/model/SearchUtils;->insertLogBuffer(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v23, :cond_0

    invoke-interface/range {v23 .. v23}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_0
    return-void

    :cond_1
    :try_start_1
    invoke-interface/range {v23 .. v23}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v27

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_2

    const/16 v28, 0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_1

    :cond_2
    invoke-interface/range {v23 .. v23}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v21

    const-string/jumbo v28, "PreferenceScreen"

    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_4

    new-instance v28, Ljava/lang/RuntimeException;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "XML document must start with <PreferenceScreen> tag; found"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, " at "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-interface/range {v23 .. v23}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v28
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    move-exception v7

    :try_start_2
    invoke-virtual {v7}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v23, :cond_3

    invoke-interface/range {v23 .. v23}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_3
    :goto_0
    return-void

    :cond_4
    :try_start_3
    invoke-interface/range {v23 .. v23}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v22

    invoke-static/range {v23 .. v23}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    const/16 v16, 0x1

    const/4 v5, 0x0

    if-eqz p4, :cond_5

    move-object/from16 v0, p4

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/settings/search2/DatabaseIndexingUtils;->getPreferenceControllerUriMap(Ljava/lang/String;Landroid/content/Context;)Ljava/util/Map;

    move-result-object v5

    :cond_5
    :goto_1
    invoke-interface/range {v23 .. v23}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v27

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_1d

    const/16 v28, 0x3

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_6

    invoke-interface/range {v23 .. v23}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v28

    move/from16 v0, v28

    move/from16 v1, v22

    if-le v0, v1, :cond_1d

    :cond_6
    const/16 v28, 0x3

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_5

    const/16 v28, 0x4

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_5

    invoke-interface/range {v23 .. v23}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v21

    const/16 v28, 0x3

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_7

    const/16 v28, 0x4

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_8

    :cond_7
    const/16 v28, 0x3

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_5

    const-string/jumbo v28, "PreferenceCategory"

    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_5

    const/16 v16, 0x1

    goto :goto_1

    :cond_8
    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/android/settings/Utils;->getDataKey(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v28, "PreferenceCategory"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v28

    if-eqz v28, :cond_b

    const/16 v16, 0x1

    if-eqz p2, :cond_9

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_a

    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/search/model/SecMenu;->isRemovedFromCOM(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_b

    :cond_a
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "nonIndexableKeys: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/samsung/android/settings/search/model/SearchUtils;->insertLogBuffer(Ljava/lang/String;)V

    const/16 v16, 0x0

    :cond_b
    const/16 v18, 0x1

    if-eqz p2, :cond_c

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_d

    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/search/model/SecMenu;->isRemovedFromCOM(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_e

    :cond_d
    const/16 v18, 0x0

    :cond_e
    const-string/jumbo v28, "PreferenceCategory"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_5

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/android/settings/Utils;->getDataTitle(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v26

    if-eqz v26, :cond_5

    if-eqz v17, :cond_f

    if-eqz v18, :cond_f

    move/from16 v11, v16

    :goto_2
    if-nez v11, :cond_10

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, "("

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, ") is disabled so not indexed in "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/search/model/SecMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->-get25(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/samsung/android/settings/search/model/SearchUtils;->insertLogBuffer(Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    :catch_1
    move-exception v10

    :try_start_4
    invoke-virtual {v10}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v23, :cond_3

    invoke-interface/range {v23 .. v23}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_0

    :cond_f
    const/4 v11, 0x0

    goto :goto_2

    :cond_10
    :try_start_5
    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/android/settings/Utils;->getDataSummary(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/android/settings/Utils;->getDataEng(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/android/settings/Utils;->getFragment(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, v19

    invoke-static {v5, v0}, Lcom/android/settings/search2/DatabaseIndexingUtils;->getPayloadFromUriMap(Ljava/util/Map;Ljava/lang/String;)Lcom/android/settings/search2/ResultPayload;

    move-result-object v24

    new-instance v4, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    invoke-direct {v4}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->setUpdatedTitle(Ljava/lang/String;)Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->setUpdatedSummaryOn(Ljava/lang/String;)Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->setKeywords(Ljava/lang/String;)Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->setKey(Ljava/lang/String;)Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->setPayload(Lcom/android/settings/search2/ResultPayload;)Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    if-eqz v12, :cond_16

    invoke-interface/range {v23 .. v23}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v13

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    :cond_11
    :goto_3
    invoke-interface/range {v23 .. v23}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v27

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_13

    const/16 v28, 0x3

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_12

    invoke-interface/range {v23 .. v23}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v28

    move/from16 v0, v28

    if-le v0, v13, :cond_13

    :cond_12
    const/16 v28, 0x3

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_11

    const/16 v28, 0x4

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_11

    invoke-interface/range {v23 .. v23}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v28, "extra"

    move-object/from16 v0, v28

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_11

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const-string/jumbo v29, "extra"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v3, v6}, Landroid/content/res/Resources;->parseBundleExtra(Ljava/lang/String;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    :try_end_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    :catch_2
    move-exception v8

    :try_start_6
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v23, :cond_3

    invoke-interface/range {v23 .. v23}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_0

    :cond_13
    :try_start_7
    invoke-virtual {v4, v12}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->setClassName(Ljava/lang/String;)Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    invoke-virtual {v6}, Landroid/os/Bundle;->size()I

    move-result v28

    if-lez v28, :cond_14

    new-instance v28, Lcom/samsung/android/settings/search/model/SecInnerMenu;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4, v6}, Lcom/samsung/android/settings/search/model/SecInnerMenu;-><init>(Lcom/samsung/android/settings/search/model/SecMenu;Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;Landroid/os/Bundle;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/search/model/SecMenu;->addSubMenu(Lcom/samsung/android/settings/search/model/SecMenu;)V
    :try_end_7
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_1

    :catch_3
    move-exception v9

    :try_start_8
    invoke-virtual {v9}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v23, :cond_3

    invoke-interface/range {v23 .. v23}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_0

    :cond_14
    :try_start_9
    new-instance v28, Lcom/samsung/android/settings/search/model/SecInnerMenu;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/settings/search/model/SecInnerMenu;-><init>(Lcom/samsung/android/settings/search/model/SecMenu;Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/search/model/SecMenu;->addSubMenu(Lcom/samsung/android/settings/search/model/SecMenu;)V
    :try_end_9
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v28

    if-eqz v23, :cond_15

    invoke-interface/range {v23 .. v23}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_15
    throw v28

    :cond_16
    :try_start_a
    invoke-interface/range {v23 .. v23}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v13

    const/4 v15, 0x0

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    :cond_17
    :goto_4
    invoke-interface/range {v23 .. v23}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v27

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_1a

    const/16 v28, 0x3

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_18

    invoke-interface/range {v23 .. v23}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v28

    move/from16 v0, v28

    if-le v0, v13, :cond_1a

    :cond_18
    const/16 v28, 0x3

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_17

    const/16 v28, 0x4

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_17

    invoke-interface/range {v23 .. v23}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v28, "extra"

    move-object/from16 v0, v28

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_19

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const-string/jumbo v29, "extra"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v3, v6}, Landroid/content/res/Resources;->parseBundleExtra(Ljava/lang/String;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    invoke-static/range {v23 .. v23}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_4

    :cond_19
    const-string/jumbo v28, "intent"

    move-object/from16 v0, v28

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_17

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v23

    invoke-static {v0, v1, v3}, Landroid/content/Intent;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/content/Intent;

    move-result-object v15

    goto :goto_4

    :cond_1a
    if-nez v15, :cond_1b

    new-instance v28, Lcom/samsung/android/settings/search/model/SecMenu;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/settings/search/model/SecMenu;-><init>(Lcom/samsung/android/settings/search/model/SecMenu;Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/search/model/SecMenu;->addSubMenu(Lcom/samsung/android/settings/search/model/SecMenu;)V

    goto/16 :goto_1

    :cond_1b
    invoke-virtual {v6}, Landroid/os/Bundle;->size()I

    move-result v28

    if-lez v28, :cond_1c

    invoke-virtual {v15, v6}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 v6, 0x0

    :cond_1c
    new-instance v28, Lcom/samsung/android/settings/search/model/SecLinkedMenu;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4, v15}, Lcom/samsung/android/settings/search/model/SecLinkedMenu;-><init>(Lcom/samsung/android/settings/search/model/SecMenu;Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;Landroid/content/Intent;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/search/model/SecMenu;->addSubMenu(Lcom/samsung/android/settings/search/model/SecMenu;)V
    :try_end_a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_a .. :try_end_a} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_1

    :cond_1d
    if-eqz v23, :cond_3

    invoke-interface/range {v23 .. v23}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_0
.end method

.method public save(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v3, 0x0

    instance-of v2, p0, Lcom/samsung/android/settings/search/model/SecInnerMenu;

    if-eqz v2, :cond_2

    invoke-direct {p0, p1, p2, p3, v3}, Lcom/samsung/android/settings/search/model/SecMenu;->saveMenu(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Lcom/samsung/android/settings/search/model/SecMenu;)V

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/search/model/SecMenu;->subMenues:Ljava/util/LinkedHashMap;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/search/model/SecMenu;->subMenues:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    if-nez v2, :cond_4

    :cond_1
    return-void

    :cond_2
    instance-of v2, p0, Lcom/samsung/android/settings/search/model/SecLinkedMenu;

    if-eqz v2, :cond_3

    invoke-direct {p0, p1, p2, p3, v3}, Lcom/samsung/android/settings/search/model/SecMenu;->saveMenu(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Lcom/samsung/android/settings/search/model/SecMenu;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "Settings"

    iget-object v3, p0, Lcom/samsung/android/settings/search/model/SecMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    invoke-static {v3}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->-get25(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/search/model/SecMenu;->parent:Lcom/samsung/android/settings/search/model/SecMenu;

    invoke-direct {p0, p1, p2, p3, v2}, Lcom/samsung/android/settings/search/model/SecMenu;->saveMenu(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Lcom/samsung/android/settings/search/model/SecMenu;)V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/samsung/android/settings/search/model/SecMenu;->subMenues:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/search/model/SecMenu;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/settings/search/model/SecMenu;->save(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    return-void
.end method

.method public updateOneRow(Landroid/content/Context;Ljava/util/List;Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;Landroid/os/Bundle;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;",
            "Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;->updatedTitle:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;->menuPath:Ljava/lang/String;

    if-nez v11, :cond_1

    move-object/from16 v0, p3

    iget v11, v0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;->menuType:I

    const/4 v12, 0x4

    if-eq v11, v12, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;->updatedTitle:Ljava/lang/String;

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;->screenTitle:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;->key:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f121b3e

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f121b3d

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;->updatedSummaryOn:Ljava/lang/String;

    invoke-virtual {v5, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2

    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;->updatedSummaryOn:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2

    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;->updatedSummaryOn:Ljava/lang/String;

    const-string/jumbo v12, "%"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    :cond_2
    const-string/jumbo v11, ""

    move-object/from16 v0, p3

    iput-object v11, v0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;->updatedSummaryOn:Ljava/lang/String;

    :cond_3
    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;->normalizedSummaryOn:Ljava/lang/String;

    invoke-virtual {v5, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_4

    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;->normalizedSummaryOn:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_4

    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;->normalizedSummaryOn:Ljava/lang/String;

    const-string/jumbo v12, "%"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_5

    :cond_4
    const-string/jumbo v11, ""

    move-object/from16 v0, p3

    iput-object v11, v0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;->normalizedSummaryOn:Ljava/lang/String;

    :cond_5
    const-string/jumbo v3, ""

    const-string/jumbo v11, "ko_KR"

    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;->locale:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;->updatedTitle:Ljava/lang/String;

    invoke-direct {p0, v11}, Lcom/samsung/android/settings/search/model/SecMenu;->getInitialKeyword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "|"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/search/model/SecMenu;->hexString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_6
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;->menuPath:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;->normalizedTitle:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;->key:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/settings/sfinderconnect/NameNormalizer;->lettersAndDigitsOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v11, "docid"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v11, "_id"

    invoke-virtual {v10, v11, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v11, "locale"

    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;->locale:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v11, "data_rank"

    move-object/from16 v0, p3

    iget v12, v0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;->rank:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v11, "data_title"

    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;->updatedTitle:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v11, "data_title_en"

    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;->keywords:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v11, "data_title_normalized"

    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;->normalizedTitle:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v11, "data_title_hex"

    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;->updatedTitle:Ljava/lang/String;

    invoke-direct {p0, v12}, Lcom/samsung/android/settings/search/model/SecMenu;->hexString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v11, "data_summary_on"

    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;->updatedSummaryOn:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v11, "data_summary_on_normalized"

    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;->normalizedSummaryOn:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v11, "data_summary_on_hex"

    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;->updatedSummaryOn:Ljava/lang/String;

    invoke-direct {p0, v12}, Lcom/samsung/android/settings/search/model/SecMenu;->hexString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v11, "data_summary_off"

    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;->updatedSummaryOff:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v11, "data_summary_off_normalized"

    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;->normalizedSummaryOff:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v11, "data_entries"

    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;->entries:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v11, "data_keywords"

    invoke-virtual {v10, v11, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v11, "class_name"

    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;->className:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v11, "screen_title"

    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;->screenTitle:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v11, "intent_action"

    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;->intentAction:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v11, "intent_target_package"

    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;->intentTargetPackage:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v11, "intent_target_class"

    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;->intentTargetClass:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v11, "icon"

    move-object/from16 v0, p3

    iget v12, v0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;->iconResId:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v11, "enabled"

    move-object/from16 v0, p3

    iget-boolean v12, v0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;->enabled:Z

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v11, "data_key_reference"

    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;->key:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v11, "user_id"

    move-object/from16 v0, p3

    iget v12, v0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;->userId:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v11, "menu_type"

    move-object/from16 v0, p3

    iget v12, v0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;->menuType:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v11, "menu_path"

    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;->menuPath:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v11, "category_id"

    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;->categoryId:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v11, "payload_type"

    move-object/from16 v0, p3

    iget v12, v0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;->payloadType:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v11, "payload"

    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;->payload:[B

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string/jumbo v11, "rank_path"

    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;->rankPath:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p4, :cond_7

    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    const/4 v11, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v6, v11}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v6}, Landroid/os/Parcel;->marshall()[B

    move-result-object v1

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    :cond_7
    const-string/jumbo v11, "extras"

    invoke-virtual {v10, v11, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    invoke-interface {p2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public updateOneRowWithFilteredData(Landroid/content/Context;Ljava/util/List;Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;Landroid/os/Bundle;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;",
            "Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    iget-object v6, p0, Lcom/samsung/android/settings/search/model/SecMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    invoke-static {v6}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->-get3(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)Z

    move-result v6

    if-nez v6, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "skip indexing: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/search/model/SecMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    invoke-static {v7}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->-get12(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " > "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/search/model/SecMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    invoke-static {v7}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->-get25(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/search/model/SecMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    invoke-static {v7}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->-get9(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/settings/search/model/SearchUtils;->insertLogBuffer(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v6, p0, Lcom/samsung/android/settings/search/model/SecMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    invoke-static {v6}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->-get2(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "title: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/search/model/SecMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    invoke-static {v7}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->-get25(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/ key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/search/model/SecMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    invoke-static {v7}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->-get9(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/ path: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/search/model/SecMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    invoke-static {v7}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->-get12(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " / class: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/search/model/SecMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    invoke-static {v7}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->-get2(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/settings/search/model/SearchUtils;->insertLogBuffer(Ljava/lang/String;)V

    :goto_0
    iget-object v6, p0, Lcom/samsung/android/settings/search/model/SecMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    invoke-static {v6}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->-get25(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/samsung/android/settings/search/model/SecMenu;->normalizeHyphen(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/search/model/SecMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    invoke-static {v6}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->-get24(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/samsung/android/settings/search/model/SecMenu;->normalizeHyphen(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/samsung/android/settings/search/model/SecMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    invoke-static {v6}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->-get23(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/samsung/android/settings/search/model/SecMenu;->normalizeHyphen(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v5}, Lcom/samsung/android/settings/search/model/SecMenu;->normalizeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/search/model/SecMenu;->normalizeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/search/model/SecMenu;->normalizeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lcom/samsung/android/settings/search/model/SecMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    invoke-virtual {v6, v5}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->setUpdatedTitle(Ljava/lang/String;)Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->setUpdatedSummaryOn(Ljava/lang/String;)Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->setUpdatedSummaryOff(Ljava/lang/String;)Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->setNormalizedTitle(Ljava/lang/String;)Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->setNormalizedSummaryOn(Ljava/lang/String;)Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->setNormalizedSummaryOff(Ljava/lang/String;)Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    iget-object v6, p0, Lcom/samsung/android/settings/search/model/SecMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    invoke-virtual {v6}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->build()Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;

    move-result-object v6

    invoke-virtual {p0, p1, p2, v6, p4}, Lcom/samsung/android/settings/search/model/SecMenu;->updateOneRow(Landroid/content/Context;Ljava/util/List;Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;Landroid/os/Bundle;)V

    return-void

    :cond_1
    iget-object v6, p0, Lcom/samsung/android/settings/search/model/SecMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    invoke-static {v6}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->-get7(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "title: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/search/model/SecMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    invoke-static {v7}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->-get25(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/ key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/search/model/SecMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    invoke-static {v7}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->-get9(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/ path: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/search/model/SecMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    invoke-static {v7}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->-get12(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " / intentTargetClass: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/search/model/SecMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    invoke-static {v7}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->-get7(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/settings/search/model/SearchUtils;->insertLogBuffer(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "title: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/search/model/SecMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    invoke-static {v7}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->-get25(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/ key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/search/model/SecMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    invoke-static {v7}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->-get9(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/ path: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/search/model/SecMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    invoke-static {v7}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->-get12(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/settings/search/model/SearchUtils;->insertLogBuffer(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
