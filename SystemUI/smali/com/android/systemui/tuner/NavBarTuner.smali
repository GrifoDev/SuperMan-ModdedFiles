.class public Lcom/android/systemui/tuner/NavBarTuner;
.super Lcom/android/systemui/tuner/TunerPreferenceFragment;
.source "NavBarTuner.java"


# static fields
.field private static final ICONS:[[I


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private final mTunables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/tuner/TunerService$Tunable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [[I

    const v1, 0x7f08029e

    const v2, 0x7f120b3e

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f080182

    const v2, 0x7f120b4c

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const v1, 0x7f0802cd

    const v2, 0x7f120b49

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const v1, 0x7f080207

    const v2, 0x7f120b46

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const v1, 0x7f0802cf

    const v2, 0x7f120b4d

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const v1, 0x7f080217

    const v2, 0x7f120b48

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/tuner/NavBarTuner;->ICONS:[[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/tuner/TunerPreferenceFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/tuner/NavBarTuner;->mTunables:Ljava/util/ArrayList;

    return-void
.end method

.method private varargs addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/tuner/NavBarTuner;->mTunables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    return-void
.end method

.method private bindButton(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "type_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/tuner/NavBarTuner;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/support/v7/preference/ListPreference;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "keycode_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/tuner/NavBarTuner;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "icon_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/tuner/NavBarTuner;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/support/v7/preference/ListPreference;

    invoke-direct {p0, v5}, Lcom/android/systemui/tuner/NavBarTuner;->setupIcons(Landroid/support/v7/preference/ListPreference;)V

    new-instance v1, Lcom/android/systemui/tuner/-$Lambda$u6QT41_VsCImaF7Jn70surjpgFM$6;

    move-object v2, p0

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/tuner/-$Lambda$u6QT41_VsCImaF7Jn70surjpgFM$6;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/tuner/NavBarTuner;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    new-instance v7, Lcom/android/systemui/tuner/-$Lambda$u6QT41_VsCImaF7Jn70surjpgFM$4;

    move-object v8, p0

    move-object v9, p1

    move-object v10, v4

    move-object v11, v6

    move-object v12, v5

    invoke-direct/range {v7 .. v12}, Lcom/android/systemui/tuner/-$Lambda$u6QT41_VsCImaF7Jn70surjpgFM$4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v7}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {v5, v7}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    new-instance v8, Lcom/android/systemui/tuner/-$Lambda$u6QT41_VsCImaF7Jn70surjpgFM$5;

    move-object v9, p0

    move-object v10, v6

    move-object v11, p1

    move-object v12, v4

    move-object v13, v5

    invoke-direct/range {v8 .. v13}, Lcom/android/systemui/tuner/-$Lambda$u6QT41_VsCImaF7Jn70surjpgFM$5;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v6, v8}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method private bindLayout(Landroid/support/v7/preference/ListPreference;)V
    .locals 4

    new-instance v0, Lcom/android/systemui/tuner/-$Lambda$u6QT41_VsCImaF7Jn70surjpgFM$2;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/tuner/-$Lambda$u6QT41_VsCImaF7Jn70surjpgFM$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "sysui_nav_bar"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/tuner/NavBarTuner;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    new-instance v0, Lcom/android/systemui/tuner/-$Lambda$u6QT41_VsCImaF7Jn70surjpgFM;

    invoke-direct {v0}, Lcom/android/systemui/tuner/-$Lambda$u6QT41_VsCImaF7Jn70surjpgFM;-><init>()V

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method static synthetic lambda$-com_android_systemui_tuner_NavBarTuner_4724(Lcom/android/systemui/tuner/TunerService$Tunable;)V
    .locals 1

    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    return-void
.end method

.method static synthetic lambda$-com_android_systemui_tuner_NavBarTuner_5071(Ljava/lang/String;Landroid/support/v7/preference/ListPreference;)V
    .locals 1

    move-object v0, p0

    if-nez p0, :cond_0

    const-string/jumbo v0, "default"

    :cond_0
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$-com_android_systemui_tuner_NavBarTuner_5307(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v1, "default"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    const-class v1, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/tuner/TunerService;

    const-string/jumbo v2, "sysui_nav_bar"

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/tuner/TunerService;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    return v1
.end method

.method private setValue(Ljava/lang/String;Landroid/support/v7/preference/ListPreference;Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/ListPreference;)V
    .locals 6

    invoke-virtual {p2}, Landroid/support/v7/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "key"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p4}, Landroid/support/v7/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    const/16 v1, 0x42

    :try_start_0
    invoke-virtual {p3}, Landroid/support/v7/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-class v4, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v4, p1, v0}, Lcom/android/systemui/tuner/TunerService;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private setupIcons(Landroid/support/v7/preference/ListPreference;)V
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    sget-object v7, Lcom/android/systemui/tuner/NavBarTuner;->ICONS:[[I

    array-length v7, v7

    new-array v3, v7, [Ljava/lang/CharSequence;

    sget-object v7, Lcom/android/systemui/tuner/NavBarTuner;->ICONS:[[I

    array-length v7, v7

    new-array v6, v7, [Ljava/lang/CharSequence;

    const/high16 v7, 0x41600000    # 14.0f

    invoke-virtual {p0}, Lcom/android/systemui/tuner/NavBarTuner;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    invoke-static {v10, v7, v8}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    float-to-int v4, v7

    const/4 v2, 0x0

    :goto_0
    sget-object v7, Lcom/android/systemui/tuner/NavBarTuner;->ICONS:[[I

    array-length v7, v7

    if-ge v2, v7, :cond_0

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/systemui/tuner/NavBarTuner;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/android/systemui/tuner/NavBarTuner;->ICONS:[[I

    aget-object v8, v8, v2

    aget v8, v8, v9

    invoke-static {v7, v8}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/systemui/tuner/NavBarTuner;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/high16 v7, -0x1000000

    invoke-virtual {v1, v7}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-virtual {v1, v9, v9, v4, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    new-instance v5, Landroid/text/style/ImageSpan;

    invoke-direct {v5, v1, v10}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    const-string/jumbo v7, "  "

    invoke-virtual {v0, v7, v5, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    const-string/jumbo v7, " "

    invoke-virtual {v0, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    sget-object v7, Lcom/android/systemui/tuner/NavBarTuner;->ICONS:[[I

    aget-object v7, v7, v2

    aget v7, v7, v10

    invoke-virtual {p0, v7}, Lcom/android/systemui/tuner/NavBarTuner;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    aput-object v0, v3, v2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/systemui/tuner/NavBarTuner;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/systemui/tuner/NavBarTuner;->ICONS:[[I

    aget-object v8, v8, v2

    aget v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v3}, Landroid/support/v7/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v6}, Landroid/support/v7/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateSummary(Landroid/support/v7/preference/ListPreference;)V
    .locals 11

    const/high16 v8, 0x41600000    # 14.0f

    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/tuner/NavBarTuner;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v10, v8, v9}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v8

    float-to-int v6, v8

    invoke-virtual {p1}, Landroid/support/v7/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v5, v8, v9

    invoke-virtual {p1}, Landroid/support/v7/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    aget-object v8, v8, v9

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-static {v5, v4}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/systemui/tuner/NavBarTuner;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/high16 v8, -0x1000000

    invoke-virtual {v1, v8}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9, v6, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    new-instance v7, Landroid/text/style/ImageSpan;

    const/4 v8, 0x1

    invoke-direct {v7, v1, v8}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    const-string/jumbo v8, "  "

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v7, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    const-string/jumbo v8, " "

    invoke-virtual {v0, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const/4 v3, 0x0

    :goto_0
    sget-object v8, Lcom/android/systemui/tuner/NavBarTuner;->ICONS:[[I

    array-length v8, v8

    if-ge v3, v8, :cond_1

    sget-object v8, Lcom/android/systemui/tuner/NavBarTuner;->ICONS:[[I

    aget-object v8, v8, v3

    const/4 v9, 0x0

    aget v8, v8, v9

    if-ne v8, v4, :cond_0

    sget-object v8, Lcom/android/systemui/tuner/NavBarTuner;->ICONS:[[I

    aget-object v8, v8, v3

    const/4 v9, 0x1

    aget v8, v8, v9

    invoke-virtual {p0, v8}, Lcom/android/systemui/tuner/NavBarTuner;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v2

    const-string/jumbo v8, "NavButton"

    const-string/jumbo v9, "Problem with summary"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method


# virtual methods
.method synthetic lambda$-com_android_systemui_tuner_NavBarTuner_5038(Landroid/support/v7/preference/ListPreference;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/tuner/NavBarTuner;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/tuner/-$Lambda$u6QT41_VsCImaF7Jn70surjpgFM$3;

    invoke-direct {v1, p3, p1}, Lcom/android/systemui/tuner/-$Lambda$u6QT41_VsCImaF7Jn70surjpgFM$3;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method synthetic lambda$-com_android_systemui_tuner_NavBarTuner_5887(Ljava/lang/String;Landroid/support/v7/preference/ListPreference;Landroid/support/v7/preference/ListPreference;Landroid/support/v7/preference/Preference;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    iget-object v7, p0, Lcom/android/systemui/tuner/NavBarTuner;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/tuner/-$Lambda$u6QT41_VsCImaF7Jn70surjpgFM$9;

    move-object v1, p0

    move-object v2, p6

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/tuner/-$Lambda$u6QT41_VsCImaF7Jn70surjpgFM$9;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method synthetic lambda$-com_android_systemui_tuner_NavBarTuner_5920(Ljava/lang/String;Ljava/lang/String;Landroid/support/v7/preference/ListPreference;Landroid/support/v7/preference/ListPreference;Landroid/support/v7/preference/Preference;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    move-object v3, p1

    if-nez p1, :cond_0

    move-object v3, p2

    :cond_0
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->extractButton(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "key"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v4, "key"

    invoke-virtual {p3, v4}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->extractImage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->extractKeycode(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p4, v2}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    invoke-direct {p0, p4}, Lcom/android/systemui/tuner/NavBarTuner;->updateSummary(Landroid/support/v7/preference/ListPreference;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p5, v4}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p5, v6}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    invoke-virtual {p4, v6}, Landroid/support/v7/preference/ListPreference;->setVisible(Z)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p3, v0}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    invoke-virtual {p5, v5}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    invoke-virtual {p4, v5}, Landroid/support/v7/preference/ListPreference;->setVisible(Z)V

    goto :goto_0
.end method

.method synthetic lambda$-com_android_systemui_tuner_NavBarTuner_6689(Ljava/lang/String;Landroid/support/v7/preference/ListPreference;Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/ListPreference;Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 7

    iget-object v6, p0, Lcom/android/systemui/tuner/NavBarTuner;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/tuner/-$Lambda$u6QT41_VsCImaF7Jn70surjpgFM$7;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/tuner/-$Lambda$u6QT41_VsCImaF7Jn70surjpgFM$7;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    return v0
.end method

.method synthetic lambda$-com_android_systemui_tuner_NavBarTuner_6743(Ljava/lang/String;Landroid/support/v7/preference/ListPreference;Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/ListPreference;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/tuner/NavBarTuner;->setValue(Ljava/lang/String;Landroid/support/v7/preference/ListPreference;Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/ListPreference;)V

    invoke-direct {p0, p4}, Lcom/android/systemui/tuner/NavBarTuner;->updateSummary(Landroid/support/v7/preference/ListPreference;)V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_tuner_NavBarTuner_7049(Landroid/support/v7/preference/Preference;Ljava/lang/String;Landroid/support/v7/preference/ListPreference;Landroid/support/v7/preference/ListPreference;Landroid/support/v7/preference/Preference;)Z
    .locals 8

    new-instance v2, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/android/systemui/tuner/NavBarTuner;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/systemui/tuner/NavBarTuner;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p5}, Landroid/support/v7/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v0, Lcom/android/systemui/tuner/-$Lambda$u6QT41_VsCImaF7Jn70surjpgFM$8;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/tuner/-$Lambda$u6QT41_VsCImaF7Jn70surjpgFM$8;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const v1, 0x104000a

    invoke-virtual {v7, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    const/4 v0, 0x1

    return v0
.end method

.method synthetic lambda$-com_android_systemui_tuner_NavBarTuner_7397(Landroid/widget/EditText;Landroid/support/v7/preference/Preference;Ljava/lang/String;Landroid/support/v7/preference/ListPreference;Landroid/support/v7/preference/ListPreference;Landroid/content/DialogInterface;I)V
    .locals 4

    const/16 v0, 0x42

    :try_start_0
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-direct {p0, p3, p4, p2, p5}, Lcom/android/systemui/tuner/NavBarTuner;->setValue(Ljava/lang/String;Landroid/support/v7/preference/ListPreference;Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/ListPreference;)V

    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/systemui/tuner/TunerPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/systemui/tuner/NavBarTuner;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/tuner/NavBarTuner;->mHandler:Landroid/os/Handler;

    invoke-super {p0, p1}, Lcom/android/systemui/tuner/TunerPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 3

    const v0, 0x7f16000b

    invoke-virtual {p0, v0}, Lcom/android/systemui/tuner/NavBarTuner;->addPreferencesFromResource(I)V

    const-string/jumbo v0, "layout"

    invoke-virtual {p0, v0}, Lcom/android/systemui/tuner/NavBarTuner;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/ListPreference;

    invoke-direct {p0, v0}, Lcom/android/systemui/tuner/NavBarTuner;->bindLayout(Landroid/support/v7/preference/ListPreference;)V

    const-string/jumbo v0, "sysui_nav_bar_left"

    const-string/jumbo v1, "space"

    const-string/jumbo v2, "left"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/tuner/NavBarTuner;->bindButton(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "sysui_nav_bar_right"

    const-string/jumbo v1, "menu_ime"

    const-string/jumbo v2, "right"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/tuner/NavBarTuner;->bindButton(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/tuner/TunerPreferenceFragment;->onDestroy()V

    iget-object v0, p0, Lcom/android/systemui/tuner/NavBarTuner;->mTunables:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/tuner/-$Lambda$u6QT41_VsCImaF7Jn70surjpgFM$1;

    invoke-direct {v1}, Lcom/android/systemui/tuner/-$Lambda$u6QT41_VsCImaF7Jn70surjpgFM$1;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
