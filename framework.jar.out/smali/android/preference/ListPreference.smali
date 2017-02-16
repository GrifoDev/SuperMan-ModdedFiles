.class public Landroid/preference/ListPreference;
.super Landroid/preference/DialogPreference;
.source "ListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/ListPreference$SavedState;
    }
.end annotation


# instance fields
.field private mClickedDialogEntryIndex:I

.field private mEntries:[Ljava/lang/CharSequence;

.field private mEntryValues:[Ljava/lang/CharSequence;

.field private mSummary:Ljava/lang/String;

.field private mValue:Ljava/lang/String;

.field private mValueSet:Z


# direct methods
.method static synthetic -set0(Landroid/preference/ListPreference;I)I
    .locals 0

    iput p1, p0, Landroid/preference/ListPreference;->mClickedDialogEntryIndex:I

    return p1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 70
    const v0, 0x1010091

    invoke-direct {p0, p1, p2, v0}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 51
    sget-object v1, Lcom/android/internal/R$styleable;->ListPreference:[I

    .line 50
    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 52
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 53
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 54
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 60
    sget-object v1, Lcom/android/internal/R$styleable;->Preference:[I

    .line 59
    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 61
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/preference/ListPreference;->mSummary:Ljava/lang/String;

    .line 62
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 47
    return-void
.end method

.method private getValueIndex()I
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Landroid/preference/ListPreference;->mValue:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public findIndexOfValue(Ljava/lang/String;)I
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 230
    if-eqz p1, :cond_1

    iget-object v1, p0, Landroid/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 231
    iget-object v1, p0, Landroid/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 232
    iget-object v1, p0, Landroid/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 233
    return v0

    .line 231
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 237
    .end local v0    # "i":I
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public getEntries()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Landroid/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getEntry()Ljava/lang/CharSequence;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 219
    invoke-direct {p0}, Landroid/preference/ListPreference;->getValueIndex()I

    move-result v0

    .line 220
    .local v0, "index":I
    if-ltz v0, :cond_0

    iget-object v2, p0, Landroid/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    iget-object v1, p0, Landroid/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    :cond_0
    return-object v1
.end method

.method public getEntryValues()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Landroid/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 4

    .prologue
    .line 165
    invoke-virtual {p0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    .line 166
    .local v0, "entry":Ljava/lang/CharSequence;
    iget-object v1, p0, Landroid/preference/ListPreference;->mSummary:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 167
    invoke-super {p0}, Landroid/preference/DialogPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    .line 169
    :cond_0
    iget-object v1, p0, Landroid/preference/ListPreference;->mSummary:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    if-nez v0, :cond_1

    const-string/jumbo v0, ""

    .end local v0    # "entry":Ljava/lang/CharSequence;
    :cond_1
    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Landroid/preference/ListPreference;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method protected onDialogClosed(Z)V
    .locals 3
    .param p1, "positiveResult"    # Z

    .prologue
    .line 278
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 280
    if-eqz p1, :cond_0

    iget v1, p0, Landroid/preference/ListPreference;->mClickedDialogEntryIndex:I

    if-ltz v1, :cond_0

    iget-object v1, p0, Landroid/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 281
    iget-object v1, p0, Landroid/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    iget v2, p0, Landroid/preference/ListPreference;->mClickedDialogEntryIndex:I

    aget-object v1, v1, v2

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 282
    .local v0, "value":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 283
    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 277
    .end local v0    # "value":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .prologue
    .line 290
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 4
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;

    .prologue
    const/4 v3, 0x0

    .line 246
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 248
    iget-object v0, p0, Landroid/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    .line 249
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 250
    const-string/jumbo v1, "ListPreference requires an entries array and an entryValues array."

    .line 249
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 253
    :cond_1
    invoke-direct {p0}, Landroid/preference/ListPreference;->getValueIndex()I

    move-result v0

    iput v0, p0, Landroid/preference/ListPreference;->mClickedDialogEntryIndex:I

    .line 254
    iget-object v0, p0, Landroid/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    iget v1, p0, Landroid/preference/ListPreference;->mClickedDialogEntryIndex:I

    .line 255
    new-instance v2, Landroid/preference/ListPreference$1;

    invoke-direct {v2, p0}, Landroid/preference/ListPreference$1;-><init>(Landroid/preference/ListPreference;)V

    .line 254
    invoke-virtual {p1, v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 273
    invoke-virtual {p1, v3, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 245
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 313
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Landroid/preference/ListPreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 319
    check-cast v0, Landroid/preference/ListPreference$SavedState;

    .line 320
    .local v0, "myState":Landroid/preference/ListPreference$SavedState;
    invoke-virtual {v0}, Landroid/preference/ListPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 321
    iget-object v1, v0, Landroid/preference/ListPreference$SavedState;->value:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 312
    return-void

    .line 315
    .end local v0    # "myState":Landroid/preference/ListPreference$SavedState;
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 316
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 300
    invoke-super {p0}, Landroid/preference/DialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 301
    .local v1, "superState":Landroid/os/Parcelable;
    invoke-virtual {p0}, Landroid/preference/ListPreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 303
    return-object v1

    .line 306
    :cond_0
    new-instance v0, Landroid/preference/ListPreference$SavedState;

    invoke-direct {v0, v1}, Landroid/preference/ListPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 307
    .local v0, "myState":Landroid/preference/ListPreference$SavedState;
    invoke-virtual {p0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/preference/ListPreference$SavedState;->value:Ljava/lang/String;

    .line 308
    return-object v0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .param p1, "restoreValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 295
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/preference/ListPreference;->mValue:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .end local p2    # "defaultValue":Ljava/lang/Object;
    :goto_0
    invoke-virtual {p0, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 294
    return-void

    .line 295
    .restart local p2    # "defaultValue":Ljava/lang/Object;
    :cond_0
    check-cast p2, Ljava/lang/String;

    goto :goto_0
.end method

.method public setEntries(I)V
    .locals 1
    .param p1, "entriesResId"    # I

    .prologue
    .line 96
    invoke-virtual {p0}, Landroid/preference/ListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 95
    return-void
.end method

.method public setEntries([Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "entries"    # [Ljava/lang/CharSequence;

    .prologue
    .line 88
    iput-object p1, p0, Landroid/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 87
    return-void
.end method

.method public setEntryValues(I)V
    .locals 1
    .param p1, "entryValuesResId"    # I

    .prologue
    .line 124
    invoke-virtual {p0}, Landroid/preference/ListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 123
    return-void
.end method

.method public setEntryValues([Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "entryValues"    # [Ljava/lang/CharSequence;

    .prologue
    .line 116
    iput-object p1, p0, Landroid/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 115
    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "summary"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v1, 0x0

    .line 184
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 185
    if-nez p1, :cond_1

    iget-object v0, p0, Landroid/preference/ListPreference;->mSummary:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 186
    iput-object v1, p0, Landroid/preference/ListPreference;->mSummary:Ljava/lang/String;

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 187
    :cond_1
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/preference/ListPreference;->mSummary:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 188
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/ListPreference;->mSummary:Ljava/lang/String;

    goto :goto_0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 144
    iget-object v2, p0, Landroid/preference/ListPreference;->mValue:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    .line 145
    .local v0, "changed":Z
    :goto_0
    if-nez v0, :cond_2

    iget-boolean v2, p0, Landroid/preference/ListPreference;->mValueSet:Z

    if-eqz v2, :cond_2

    .line 142
    :cond_0
    :goto_1
    return-void

    .end local v0    # "changed":Z
    :cond_1
    move v0, v1

    .line 144
    goto :goto_0

    .line 146
    .restart local v0    # "changed":Z
    :cond_2
    iput-object p1, p0, Landroid/preference/ListPreference;->mValue:Ljava/lang/String;

    .line 147
    iput-boolean v1, p0, Landroid/preference/ListPreference;->mValueSet:Z

    .line 148
    invoke-virtual {p0, p1}, Landroid/preference/ListPreference;->persistString(Ljava/lang/String;)Z

    .line 149
    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {p0}, Landroid/preference/ListPreference;->notifyChanged()V

    goto :goto_1
.end method

.method public setValueIndex(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 198
    iget-object v0, p0, Landroid/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Landroid/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v0, v0, p1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 197
    :cond_0
    return-void
.end method
