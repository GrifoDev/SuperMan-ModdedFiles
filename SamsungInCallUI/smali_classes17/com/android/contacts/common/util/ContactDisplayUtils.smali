.class public Lcom/android/contacts/common/util/ContactDisplayUtils;
.super Ljava/lang/Object;
.source "ContactDisplayUtils.java"


# static fields
.field public static final INTERACTION_CALL:I = 0x1

.field public static final INTERACTION_SMS:I = 0x2

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/contacts/common/util/ContactDisplayUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/util/ContactDisplayUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLabelForCallOrSms(Ljava/lang/Integer;Ljava/lang/CharSequence;ILandroid/content/Context;)Ljava/lang/CharSequence;
    .locals 4

    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Lcom/android/contacts/common/util/ContactDisplayUtils;->isCustomPhoneType(Ljava/lang/Integer;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    const/4 v1, 0x2

    if-ne p2, v1, :cond_3

    invoke-static {p0}, Lcom/android/contacts/common/util/ContactDisplayUtils;->getSmsLabelResourceId(Ljava/lang/Integer;)I

    move-result v0

    :cond_2
    :goto_1
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_3
    invoke-static {p0}, Lcom/android/contacts/common/util/ContactDisplayUtils;->getPhoneLabelResourceId(Ljava/lang/Integer;)I

    move-result v0

    const/4 v1, 0x1

    if-eq p2, v1, :cond_2

    sget-object v1, Lcom/android/contacts/common/util/ContactDisplayUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Un-recognized interaction type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Defaulting to ContactDisplayUtils.INTERACTION_CALL."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static getPhoneLabelResourceId(Ljava/lang/Integer;)I
    .locals 2

    const v0, 0x7f09043c

    if-nez p0, :cond_0

    :goto_0
    :pswitch_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    const v0, 0x7f090434

    goto :goto_0

    :pswitch_1
    const v0, 0x7f090437

    goto :goto_0

    :pswitch_2
    const v0, 0x7f09043b

    goto :goto_0

    :pswitch_3
    const v0, 0x7f090448

    goto :goto_0

    :pswitch_4
    const v0, 0x7f090436

    goto :goto_0

    :pswitch_5
    const v0, 0x7f090435

    goto :goto_0

    :pswitch_6
    const v0, 0x7f09043e

    goto :goto_0

    :pswitch_7
    const v0, 0x7f090431

    goto :goto_0

    :pswitch_8
    const v0, 0x7f090432

    goto :goto_0

    :pswitch_9
    const v0, 0x7f090433

    goto :goto_0

    :pswitch_a
    const v0, 0x7f090438

    goto :goto_0

    :pswitch_b
    const v0, 0x7f090439

    goto :goto_0

    :pswitch_c
    const v0, 0x7f09043d

    goto :goto_0

    :pswitch_d
    const v0, 0x7f09043f

    goto :goto_0

    :pswitch_e
    const v0, 0x7f090445

    goto :goto_0

    :pswitch_f
    const v0, 0x7f090446

    goto :goto_0

    :pswitch_10
    const v0, 0x7f090449

    goto :goto_0

    :pswitch_11
    const v0, 0x7f09044a

    goto :goto_0

    :pswitch_12
    const v0, 0x7f09042f

    goto :goto_0

    :pswitch_13
    const v0, 0x7f09043a

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
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
        :pswitch_13
    .end packed-switch
.end method

.method public static getPreferredDisplayName(Ljava/lang/String;Ljava/lang/String;Lcom/android/contacts/common/preference/ContactsPreferences;)Ljava/lang/String;
    .locals 2
    .param p2    # Lcom/android/contacts/common/preference/ContactsPreferences;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-nez p2, :cond_2

    if-eqz p0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    move-object p0, p1

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Lcom/android/contacts/common/preference/ContactsPreferences;->getDisplayOrder()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p2}, Lcom/android/contacts/common/preference/ContactsPreferences;->getDisplayOrder()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object p0, p1

    goto :goto_0
.end method

.method public static getPreferredSortName(Ljava/lang/String;Ljava/lang/String;Lcom/android/contacts/common/preference/ContactsPreferences;)Ljava/lang/String;
    .locals 2
    .param p2    # Lcom/android/contacts/common/preference/ContactsPreferences;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-nez p2, :cond_2

    if-eqz p0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    move-object p0, p1

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Lcom/android/contacts/common/preference/ContactsPreferences;->getSortOrder()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p2}, Lcom/android/contacts/common/preference/ContactsPreferences;->getSortOrder()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object p0, p1

    goto :goto_0
.end method

.method public static getSmsLabelResourceId(Ljava/lang/Integer;)I
    .locals 2

    const v0, 0x7f09058e

    if-nez p0, :cond_0

    :goto_0
    :pswitch_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    const v0, 0x7f090586

    goto :goto_0

    :pswitch_1
    const v0, 0x7f090589

    goto :goto_0

    :pswitch_2
    const v0, 0x7f09058d

    goto :goto_0

    :pswitch_3
    const v0, 0x7f090594

    goto :goto_0

    :pswitch_4
    const v0, 0x7f090588

    goto :goto_0

    :pswitch_5
    const v0, 0x7f090587

    goto :goto_0

    :pswitch_6
    const v0, 0x7f090590

    goto :goto_0

    :pswitch_7
    const v0, 0x7f090583

    goto :goto_0

    :pswitch_8
    const v0, 0x7f090584

    goto :goto_0

    :pswitch_9
    const v0, 0x7f090585

    goto :goto_0

    :pswitch_a
    const v0, 0x7f09058a

    goto :goto_0

    :pswitch_b
    const v0, 0x7f09058b

    goto :goto_0

    :pswitch_c
    const v0, 0x7f09058f

    goto :goto_0

    :pswitch_d
    const v0, 0x7f090591

    goto :goto_0

    :pswitch_e
    const v0, 0x7f090592

    goto :goto_0

    :pswitch_f
    const v0, 0x7f090593

    goto :goto_0

    :pswitch_10
    const v0, 0x7f090595

    goto :goto_0

    :pswitch_11
    const v0, 0x7f090596

    goto :goto_0

    :pswitch_12
    const v0, 0x7f090581

    goto :goto_0

    :pswitch_13
    const v0, 0x7f09058c

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
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
        :pswitch_13
    .end packed-switch
.end method

.method public static getTelephoneTtsSpannable(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spannable;
    .locals 5

    if-nez p0, :cond_1

    const/4 v1, 0x0

    :cond_0
    return-object v1

    :cond_1
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    if-nez p1, :cond_2

    const/4 v2, -0x1

    :goto_0
    if-ltz v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int v0, v2, v4

    invoke-static {p1}, Lcom/android/contacts/common/compat/PhoneNumberUtilsCompat;->createTtsSpan(Ljava/lang/String;)Landroid/text/style/TtsSpan;

    move-result-object v3

    const/16 v4, 0x21

    invoke-interface {v1, v3, v2, v0, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method public static getTtsSpannedPhoneNumber(Landroid/content/res/Resources;ILjava/lang/String;)Ljava/lang/CharSequence;
    .locals 3

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {p0, p1, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/contacts/common/util/ContactDisplayUtils;->getTelephoneTtsSpannable(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v1

    return-object v1
.end method

.method public static isCustomPhoneType(Ljava/lang/Integer;)Z
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x13

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPossiblePhoneNumber(Ljava/lang/CharSequence;)Z
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Landroid/util/Patterns;->PHONE:Ljava/util/regex/Pattern;

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    goto :goto_0
.end method
