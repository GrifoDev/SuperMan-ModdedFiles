.class public final Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc$Builder;
.super Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
.source "Phonemetadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .locals 0

    return-object p0
.end method

.method public mergeFrom(Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc$Builder;
    .locals 2

    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasNationalNumberPattern()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getNationalNumberPattern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc$Builder;->setNationalNumberPattern(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    :cond_0
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasPossibleNumberPattern()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleNumberPattern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc$Builder;->setPossibleNumberPattern(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleLengthCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p1, v0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleLength(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc$Builder;->addPossibleLength(I)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleLengthLocalOnlyCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-virtual {p1, v0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleLengthLocalOnly(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc$Builder;->addPossibleLengthLocalOnly(I)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasExampleNumber()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getExampleNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc$Builder;->setExampleNumber(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    :cond_4
    return-object p0
.end method
