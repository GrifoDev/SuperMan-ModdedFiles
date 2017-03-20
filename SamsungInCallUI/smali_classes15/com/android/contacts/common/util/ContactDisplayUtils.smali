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

    .prologue
    .line 41
    const-class v0, Lcom/android/contacts/common/util/ContactDisplayUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/util/ContactDisplayUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLabelForCallOrSms(Ljava/lang/Integer;Ljava/lang/CharSequence;ILandroid/content/Context;)Ljava/lang/CharSequence;
    .locals 4
    .param p0, "type"    # Ljava/lang/Integer;
    .param p1, "customLabel"    # Ljava/lang/CharSequence;
    .param p2, "interactionType"    # I
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    invoke-static {p0}, Lcom/android/contacts/common/util/ContactDisplayUtils;->isCustomPhoneType(Ljava/lang/Integer;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 72
    if-nez p1, :cond_0

    const-string p1, ""

    .line 85
    .end local p1    # "customLabel":Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    return-object p1

    .line 75
    .restart local p1    # "customLabel":Ljava/lang/CharSequence;
    :cond_1
    const/4 v1, 0x2

    if-ne p2, v1, :cond_3

    .line 76
    invoke-static {p0}, Lcom/android/contacts/common/util/ContactDisplayUtils;->getSmsLabelResourceId(Ljava/lang/Integer;)I

    move-result v0

    .line 85
    .local v0, "resId":I
    :cond_2
    :goto_1
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    .line 78
    .end local v0    # "resId":I
    :cond_3
    invoke-static {p0}, Lcom/android/contacts/common/util/ContactDisplayUtils;->getPhoneLabelResourceId(Ljava/lang/Integer;)I

    move-result v0

    .line 79
    .restart local v0    # "resId":I
    const/4 v1, 0x1

    if-eq p2, v1, :cond_2

    .line 80
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
    .param p0, "type"    # Ljava/lang/Integer;

    .prologue
    const v0, 0x7f090446

    .line 96
    if-nez p0, :cond_0

    .line 139
    :goto_0
    :pswitch_0
    return v0

    .line 97
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 139
    const v0, 0x7f09043e

    goto :goto_0

    .line 99
    :pswitch_1
    const v0, 0x7f090441

    goto :goto_0

    .line 101
    :pswitch_2
    const v0, 0x7f090445

    goto :goto_0

    .line 103
    :pswitch_3
    const v0, 0x7f090452

    goto :goto_0

    .line 105
    :pswitch_4
    const v0, 0x7f090440

    goto :goto_0

    .line 107
    :pswitch_5
    const v0, 0x7f09043f

    goto :goto_0

    .line 109
    :pswitch_6
    const v0, 0x7f090448

    goto :goto_0

    .line 113
    :pswitch_7
    const v0, 0x7f09043b

    goto :goto_0

    .line 115
    :pswitch_8
    const v0, 0x7f09043c

    goto :goto_0

    .line 117
    :pswitch_9
    const v0, 0x7f09043d

    goto :goto_0

    .line 119
    :pswitch_a
    const v0, 0x7f090442

    goto :goto_0

    .line 121
    :pswitch_b
    const v0, 0x7f090443

    goto :goto_0

    .line 123
    :pswitch_c
    const v0, 0x7f090447

    goto :goto_0

    .line 125
    :pswitch_d
    const v0, 0x7f090449

    goto :goto_0

    .line 127
    :pswitch_e
    const v0, 0x7f09044f

    goto :goto_0

    .line 129
    :pswitch_f
    const v0, 0x7f090450

    goto :goto_0

    .line 131
    :pswitch_10
    const v0, 0x7f090453

    goto :goto_0

    .line 133
    :pswitch_11
    const v0, 0x7f090454

    goto :goto_0

    .line 135
    :pswitch_12
    const v0, 0x7f090439

    goto :goto_0

    .line 137
    :pswitch_13
    const v0, 0x7f090444

    goto :goto_0

    .line 97
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
    .param p0, "namePrimary"    # Ljava/lang/String;
    .param p1, "nameAlternative"    # Ljava/lang/String;
    .param p2, "contactsPreferences"    # Lcom/android/contacts/common/preference/ContactsPreferences;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 254
    if-nez p2, :cond_2

    .line 255
    if-eqz p0, :cond_1

    .line 266
    .end local p0    # "namePrimary":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .restart local p0    # "namePrimary":Ljava/lang/String;
    :cond_1
    move-object p0, p1

    .line 255
    goto :goto_0

    .line 257
    :cond_2
    invoke-virtual {p2}, Lcom/android/contacts/common/preference/ContactsPreferences;->getDisplayOrder()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 261
    invoke-virtual {p2}, Lcom/android/contacts/common/preference/ContactsPreferences;->getDisplayOrder()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 262
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object p0, p1

    .line 263
    goto :goto_0
.end method

.method public static getPreferredSortName(Ljava/lang/String;Ljava/lang/String;Lcom/android/contacts/common/preference/ContactsPreferences;)Ljava/lang/String;
    .locals 2
    .param p0, "namePrimary"    # Ljava/lang/String;
    .param p1, "nameAlternative"    # Ljava/lang/String;
    .param p2, "contactsPreferences"    # Lcom/android/contacts/common/preference/ContactsPreferences;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 281
    if-nez p2, :cond_2

    .line 282
    if-eqz p0, :cond_1

    .line 294
    .end local p0    # "namePrimary":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .restart local p0    # "namePrimary":Ljava/lang/String;
    :cond_1
    move-object p0, p1

    .line 282
    goto :goto_0

    .line 285
    :cond_2
    invoke-virtual {p2}, Lcom/android/contacts/common/preference/ContactsPreferences;->getSortOrder()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 289
    invoke-virtual {p2}, Lcom/android/contacts/common/preference/ContactsPreferences;->getSortOrder()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 290
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object p0, p1

    .line 291
    goto :goto_0
.end method

.method public static getSmsLabelResourceId(Ljava/lang/Integer;)I
    .locals 2
    .param p0, "type"    # Ljava/lang/Integer;

    .prologue
    const v0, 0x7f09058d

    .line 151
    if-nez p0, :cond_0

    .line 194
    :goto_0
    :pswitch_0
    return v0

    .line 152
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 194
    const v0, 0x7f090585

    goto :goto_0

    .line 154
    :pswitch_1
    const v0, 0x7f090588

    goto :goto_0

    .line 156
    :pswitch_2
    const v0, 0x7f09058c

    goto :goto_0

    .line 158
    :pswitch_3
    const v0, 0x7f090593

    goto :goto_0

    .line 160
    :pswitch_4
    const v0, 0x7f090587

    goto :goto_0

    .line 162
    :pswitch_5
    const v0, 0x7f090586

    goto :goto_0

    .line 164
    :pswitch_6
    const v0, 0x7f09058f

    goto :goto_0

    .line 168
    :pswitch_7
    const v0, 0x7f090582

    goto :goto_0

    .line 170
    :pswitch_8
    const v0, 0x7f090583

    goto :goto_0

    .line 172
    :pswitch_9
    const v0, 0x7f090584

    goto :goto_0

    .line 174
    :pswitch_a
    const v0, 0x7f090589

    goto :goto_0

    .line 176
    :pswitch_b
    const v0, 0x7f09058a

    goto :goto_0

    .line 178
    :pswitch_c
    const v0, 0x7f09058e

    goto :goto_0

    .line 180
    :pswitch_d
    const v0, 0x7f090590

    goto :goto_0

    .line 182
    :pswitch_e
    const v0, 0x7f090591

    goto :goto_0

    .line 184
    :pswitch_f
    const v0, 0x7f090592

    goto :goto_0

    .line 186
    :pswitch_10
    const v0, 0x7f090594

    goto :goto_0

    .line 188
    :pswitch_11
    const v0, 0x7f090595

    goto :goto_0

    .line 190
    :pswitch_12
    const v0, 0x7f090580

    goto :goto_0

    .line 192
    :pswitch_13
    const v0, 0x7f09058b

    goto :goto_0

    .line 152
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
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 213
    if-nez p0, :cond_1

    .line 214
    const/4 v1, 0x0

    .line 224
    :cond_0
    return-object v1

    .line 216
    :cond_1
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 217
    .local v1, "spannable":Landroid/text/Spannable;
    if-nez p1, :cond_2

    const/4 v2, -0x1

    .line 218
    .local v2, "start":I
    :goto_0
    if-ltz v2, :cond_0

    .line 219
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int v0, v2, v4

    .line 220
    .local v0, "end":I
    invoke-static {p1}, Lcom/android/contacts/common/compat/PhoneNumberUtilsCompat;->createTtsSpan(Ljava/lang/String;)Landroid/text/style/TtsSpan;

    move-result-object v3

    .line 221
    .local v3, "ttsSpan":Landroid/text/style/TtsSpan;
    const/16 v4, 0x21

    invoke-interface {v1, v3, v2, v0, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 222
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 223
    goto :goto_0

    .line 217
    .end local v0    # "end":I
    .end local v2    # "start":I
    .end local v3    # "ttsSpan":Landroid/text/style/TtsSpan;
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method public static getTtsSpannedPhoneNumber(Landroid/content/res/Resources;ILjava/lang/String;)Ljava/lang/CharSequence;
    .locals 3
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "stringId"    # I
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 238
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {p0, p1, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 239
    .local v0, "msg":Ljava/lang/String;
    invoke-static {v0, p2}, Lcom/android/contacts/common/util/ContactDisplayUtils;->getTelephoneTtsSpannable(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v1

    return-object v1
.end method

.method public static isCustomPhoneType(Ljava/lang/Integer;)Z
    .locals 2
    .param p0, "type"    # Ljava/lang/Integer;

    .prologue
    .line 53
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
    .param p0, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 205
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
