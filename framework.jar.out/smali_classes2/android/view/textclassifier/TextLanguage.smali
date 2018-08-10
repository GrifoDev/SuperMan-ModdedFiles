.class public final Landroid/view/textclassifier/TextLanguage;
.super Ljava/lang/Object;
.source "TextLanguage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/textclassifier/TextLanguage$Builder;
    }
.end annotation


# instance fields
.field private final mEndIndex:I

.field private final mLanguageConfidence:Landroid/view/textclassifier/EntityConfidence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/view/textclassifier/EntityConfidence",
            "<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation
.end field

.field private final mLanguages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation
.end field

.field private final mStartIndex:I


# direct methods
.method private constructor <init>(IILandroid/view/textclassifier/EntityConfidence;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/view/textclassifier/EntityConfidence",
            "<",
            "Ljava/util/Locale;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/view/textclassifier/TextLanguage;->mStartIndex:I

    iput p2, p0, Landroid/view/textclassifier/TextLanguage;->mEndIndex:I

    new-instance v0, Landroid/view/textclassifier/EntityConfidence;

    invoke-direct {v0, p3}, Landroid/view/textclassifier/EntityConfidence;-><init>(Landroid/view/textclassifier/EntityConfidence;)V

    iput-object v0, p0, Landroid/view/textclassifier/TextLanguage;->mLanguageConfidence:Landroid/view/textclassifier/EntityConfidence;

    iget-object v0, p0, Landroid/view/textclassifier/TextLanguage;->mLanguageConfidence:Landroid/view/textclassifier/EntityConfidence;

    invoke-virtual {v0}, Landroid/view/textclassifier/EntityConfidence;->getEntities()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textclassifier/TextLanguage;->mLanguages:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(IILandroid/view/textclassifier/EntityConfidence;Landroid/view/textclassifier/TextLanguage;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/textclassifier/TextLanguage;-><init>(IILandroid/view/textclassifier/EntityConfidence;)V

    return-void
.end method


# virtual methods
.method public getConfidenceScore(Ljava/util/Locale;)F
    .locals 1

    iget-object v0, p0, Landroid/view/textclassifier/TextLanguage;->mLanguageConfidence:Landroid/view/textclassifier/EntityConfidence;

    invoke-virtual {v0, p1}, Landroid/view/textclassifier/EntityConfidence;->getConfidenceScore(Ljava/lang/Object;)F

    move-result v0

    return v0
.end method

.method public getEndIndex()I
    .locals 1

    iget v0, p0, Landroid/view/textclassifier/TextLanguage;->mEndIndex:I

    return v0
.end method

.method public getLanguage(I)Ljava/util/Locale;
    .locals 1

    iget-object v0, p0, Landroid/view/textclassifier/TextLanguage;->mLanguages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    return-object v0
.end method

.method public getLanguageCount()I
    .locals 1

    iget-object v0, p0, Landroid/view/textclassifier/TextLanguage;->mLanguages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getStartIndex()I
    .locals 1

    iget v0, p0, Landroid/view/textclassifier/TextLanguage;->mStartIndex:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, "TextLanguage {%d, %d, %s}"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Landroid/view/textclassifier/TextLanguage;->mStartIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Landroid/view/textclassifier/TextLanguage;->mEndIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Landroid/view/textclassifier/TextLanguage;->mLanguageConfidence:Landroid/view/textclassifier/EntityConfidence;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
