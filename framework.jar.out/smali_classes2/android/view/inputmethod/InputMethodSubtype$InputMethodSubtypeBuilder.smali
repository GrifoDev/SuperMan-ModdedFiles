.class public Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;
.super Ljava/lang/Object;
.source "InputMethodSubtype.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/InputMethodSubtype;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputMethodSubtypeBuilder"
.end annotation


# instance fields
.field private mIsAsciiCapable:Z

.field private mIsAuxiliary:Z

.field private mOverridesImplicitlyEnabledSubtype:Z

.field private mSubtypeExtraValue:Ljava/lang/String;

.field private mSubtypeIconResId:I

.field private mSubtypeId:I

.field private mSubtypeLanguageTag:Ljava/lang/String;

.field private mSubtypeLocale:Ljava/lang/String;

.field private mSubtypeMode:Ljava/lang/String;

.field private mSubtypeNameResId:I


# direct methods
.method static synthetic -get0(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mIsAsciiCapable:Z

    return v0
.end method

.method static synthetic -get1(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mIsAuxiliary:Z

    return v0
.end method

.method static synthetic -get2(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mOverridesImplicitlyEnabledSubtype:Z

    return v0
.end method

.method static synthetic -get3(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mSubtypeExtraValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get4(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)I
    .locals 1

    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mSubtypeIconResId:I

    return v0
.end method

.method static synthetic -get5(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)I
    .locals 1

    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mSubtypeId:I

    return v0
.end method

.method static synthetic -get6(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mSubtypeLanguageTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get7(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mSubtypeLocale:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get8(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mSubtypeMode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get9(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)I
    .locals 1

    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mSubtypeNameResId:I

    return v0
.end method

.method static synthetic -set0(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mIsAsciiCapable:Z

    return p1
.end method

.method static synthetic -set1(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mIsAuxiliary:Z

    return p1
.end method

.method static synthetic -set2(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mOverridesImplicitlyEnabledSubtype:Z

    return p1
.end method

.method static synthetic -set3(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mSubtypeExtraValue:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set4(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;I)I
    .locals 0

    iput p1, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mSubtypeIconResId:I

    return p1
.end method

.method static synthetic -set5(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;I)I
    .locals 0

    iput p1, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mSubtypeId:I

    return p1
.end method

.method static synthetic -set6(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mSubtypeLocale:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set7(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mSubtypeMode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set8(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;I)I
    .locals 0

    iput p1, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mSubtypeNameResId:I

    return p1
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mIsAuxiliary:Z

    .line 124
    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mOverridesImplicitlyEnabledSubtype:Z

    .line 136
    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mIsAsciiCapable:Z

    .line 145
    iput v0, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mSubtypeIconResId:I

    .line 157
    iput v0, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mSubtypeNameResId:I

    .line 170
    iput v0, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mSubtypeId:I

    .line 179
    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mSubtypeLocale:Ljava/lang/String;

    .line 188
    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mSubtypeLanguageTag:Ljava/lang/String;

    .line 197
    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mSubtypeMode:Ljava/lang/String;

    .line 207
    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mSubtypeExtraValue:Ljava/lang/String;

    .line 95
    return-void
.end method


# virtual methods
.method public build()Landroid/view/inputmethod/InputMethodSubtype;
    .locals 2

    .prologue
    .line 213
    new-instance v0, Landroid/view/inputmethod/InputMethodSubtype;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/inputmethod/InputMethodSubtype;-><init>(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;Landroid/view/inputmethod/InputMethodSubtype;)V

    return-object v0
.end method

.method public setIsAsciiCapable(Z)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;
    .locals 0
    .param p1, "isAsciiCapable"    # Z

    .prologue
    .line 133
    iput-boolean p1, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mIsAsciiCapable:Z

    .line 134
    return-object p0
.end method

.method public setIsAuxiliary(Z)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;
    .locals 0
    .param p1, "isAuxiliary"    # Z

    .prologue
    .line 107
    iput-boolean p1, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mIsAuxiliary:Z

    .line 108
    return-object p0
.end method

.method public setLanguageTag(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;
    .locals 0
    .param p1, "languageTag"    # Ljava/lang/String;

    .prologue
    .line 185
    if-nez p1, :cond_0

    const-string/jumbo p1, ""

    .end local p1    # "languageTag":Ljava/lang/String;
    :cond_0
    iput-object p1, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mSubtypeLanguageTag:Ljava/lang/String;

    .line 186
    return-object p0
.end method

.method public setOverridesImplicitlyEnabledSubtype(Z)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;
    .locals 0
    .param p1, "overridesImplicitlyEnabledSubtype"    # Z

    .prologue
    .line 121
    iput-boolean p1, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mOverridesImplicitlyEnabledSubtype:Z

    .line 122
    return-object p0
.end method

.method public setSubtypeExtraValue(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;
    .locals 0
    .param p1, "subtypeExtraValue"    # Ljava/lang/String;

    .prologue
    .line 204
    if-nez p1, :cond_0

    const-string/jumbo p1, ""

    .end local p1    # "subtypeExtraValue":Ljava/lang/String;
    :cond_0
    iput-object p1, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mSubtypeExtraValue:Ljava/lang/String;

    .line 205
    return-object p0
.end method

.method public setSubtypeIconResId(I)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;
    .locals 0
    .param p1, "subtypeIconResId"    # I

    .prologue
    .line 142
    iput p1, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mSubtypeIconResId:I

    .line 143
    return-object p0
.end method

.method public setSubtypeId(I)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;
    .locals 0
    .param p1, "subtypeId"    # I

    .prologue
    .line 167
    iput p1, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mSubtypeId:I

    .line 168
    return-object p0
.end method

.method public setSubtypeLocale(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;
    .locals 0
    .param p1, "subtypeLocale"    # Ljava/lang/String;

    .prologue
    .line 176
    if-nez p1, :cond_0

    const-string/jumbo p1, ""

    .end local p1    # "subtypeLocale":Ljava/lang/String;
    :cond_0
    iput-object p1, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mSubtypeLocale:Ljava/lang/String;

    .line 177
    return-object p0
.end method

.method public setSubtypeMode(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;
    .locals 0
    .param p1, "subtypeMode"    # Ljava/lang/String;

    .prologue
    .line 194
    if-nez p1, :cond_0

    const-string/jumbo p1, ""

    .end local p1    # "subtypeMode":Ljava/lang/String;
    :cond_0
    iput-object p1, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mSubtypeMode:Ljava/lang/String;

    .line 195
    return-object p0
.end method

.method public setSubtypeNameResId(I)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;
    .locals 0
    .param p1, "subtypeNameResId"    # I

    .prologue
    .line 154
    iput p1, p0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->mSubtypeNameResId:I

    .line 155
    return-object p0
.end method
