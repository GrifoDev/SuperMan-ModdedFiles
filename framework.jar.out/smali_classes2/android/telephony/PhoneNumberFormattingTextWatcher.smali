.class public Landroid/telephony/PhoneNumberFormattingTextWatcher;
.super Ljava/lang/Object;
.source "PhoneNumberFormattingTextWatcher.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private mFormatter:Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;

.field private mSelfChange:Z

.field private mStopFormatting:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/telephony/PhoneNumberFormattingTextWatcher;-><init>(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "countryCode"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mSelfChange:Z

    .line 70
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 71
    :cond_0
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getAsYouTypeFormatter(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mFormatter:Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;

    .line 69
    return-void
.end method

.method private getFormattedNumber(CZ)Ljava/lang/String;
    .locals 1
    .param p1, "lastNonSeparator"    # C
    .param p2, "hasCursor"    # Z

    .prologue
    .line 166
    if-eqz p2, :cond_0

    iget-object v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mFormatter:Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;

    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->inputDigitAndRememberPosition(C)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 167
    :cond_0
    iget-object v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mFormatter:Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;

    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->inputDigit(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private hasSeparator(Ljava/lang/CharSequence;II)Z
    .locals 3
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I

    .prologue
    .line 176
    move v1, p2

    .local v1, "i":I
    :goto_0
    add-int v2, p2, p3

    if-ge v1, v2, :cond_1

    .line 177
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 178
    .local v0, "c":C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 179
    const/4 v2, 0x1

    return v2

    .line 176
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 182
    .end local v0    # "c":C
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private reformat(Ljava/lang/CharSequence;I)Ljava/lang/String;
    .locals 8
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "cursor"    # I

    .prologue
    .line 140
    add-int/lit8 v1, p2, -0x1

    .line 141
    .local v1, "curIndex":I
    const/4 v2, 0x0

    .line 142
    .local v2, "formatted":Ljava/lang/String;
    iget-object v7, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mFormatter:Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;

    invoke-virtual {v7}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->clear()V

    .line 143
    const/4 v5, 0x0

    .line 144
    .local v5, "lastNonSeparator":C
    const/4 v3, 0x0

    .line 145
    .local v3, "hasCursor":Z
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    .line 146
    .local v6, "len":I
    const/4 v4, 0x0

    .end local v2    # "formatted":Ljava/lang/String;
    .end local v5    # "lastNonSeparator":C
    .local v4, "i":I
    :goto_0
    if-ge v4, v6, :cond_3

    .line 147
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 148
    .local v0, "c":C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 149
    if-eqz v5, :cond_0

    .line 150
    invoke-direct {p0, v5, v3}, Landroid/telephony/PhoneNumberFormattingTextWatcher;->getFormattedNumber(CZ)Ljava/lang/String;

    move-result-object v2

    .line 151
    .local v2, "formatted":Ljava/lang/String;
    const/4 v3, 0x0

    .line 153
    .end local v2    # "formatted":Ljava/lang/String;
    :cond_0
    move v5, v0

    .line 155
    :cond_1
    if-ne v4, v1, :cond_2

    .line 156
    const/4 v3, 0x1

    .line 146
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 159
    .end local v0    # "c":C
    :cond_3
    if-eqz v5, :cond_4

    .line 160
    invoke-direct {p0, v5, v3}, Landroid/telephony/PhoneNumberFormattingTextWatcher;->getFormattedNumber(CZ)Ljava/lang/String;

    move-result-object v2

    .line 162
    :cond_4
    return-object v2
.end method

.method private stopFormatting()V
    .locals 1

    .prologue
    .line 171
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mStopFormatting:Z

    .line 172
    iget-object v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mFormatter:Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;

    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->clear()V

    .line 170
    return-void
.end method


# virtual methods
.method public declared-synchronized afterTextChanged(Landroid/text/Editable;)V
    .locals 8
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    .line 99
    :try_start_0
    iget-boolean v2, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mStopFormatting:Z

    if-eqz v2, :cond_1

    .line 101
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    iput-boolean v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mStopFormatting:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 102
    return-void

    :cond_0
    move v0, v1

    .line 101
    goto :goto_0

    .line 104
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mSelfChange:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    monitor-exit p0

    .line 106
    return-void

    .line 111
    :cond_2
    const/4 v3, 0x0

    .line 113
    .local v3, "formatted":Ljava/lang/String;
    :try_start_2
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/telephony/PhoneNumberFormattingTextWatcher;->reformat(Ljava/lang/CharSequence;I)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    .line 119
    .end local v3    # "formatted":Ljava/lang/String;
    :goto_1
    if-eqz v3, :cond_4

    .line 120
    :try_start_3
    iget-object v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mFormatter:Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;

    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->getRememberedPosition()I

    move-result v7

    .line 121
    .local v7, "rememberedPos":I
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mSelfChange:Z

    .line 122
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;II)Landroid/text/Editable;

    .line 125
    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 126
    invoke-static {p1, v7}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 128
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mSelfChange:Z

    .line 130
    .end local v7    # "rememberedPos":I
    :cond_4
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Landroid/telephony/PhoneNumberUtils;->ttsSpanAsPhoneNumber(Landroid/text/Spannable;II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    .line 98
    return-void

    .line 114
    .restart local v3    # "formatted":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 115
    .local v6, "e":Ljava/lang/IndexOutOfBoundsException;
    :try_start_4
    invoke-virtual {v6}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .end local v3    # "formatted":Ljava/lang/String;
    .end local v6    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 77
    iget-boolean v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mSelfChange:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mStopFormatting:Z

    if-eqz v0, :cond_1

    .line 78
    :cond_0
    return-void

    .line 81
    :cond_1
    if-lez p3, :cond_2

    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/PhoneNumberFormattingTextWatcher;->hasSeparator(Ljava/lang/CharSequence;II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 82
    invoke-direct {p0}, Landroid/telephony/PhoneNumberFormattingTextWatcher;->stopFormatting()V

    .line 76
    :cond_2
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 88
    iget-boolean v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mSelfChange:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mStopFormatting:Z

    if-eqz v0, :cond_1

    .line 89
    :cond_0
    return-void

    .line 92
    :cond_1
    if-lez p4, :cond_2

    invoke-direct {p0, p1, p2, p4}, Landroid/telephony/PhoneNumberFormattingTextWatcher;->hasSeparator(Ljava/lang/CharSequence;II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 93
    invoke-direct {p0}, Landroid/telephony/PhoneNumberFormattingTextWatcher;->stopFormatting()V

    .line 87
    :cond_2
    return-void
.end method
