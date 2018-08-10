.class public final Landroid/view/textclassifier/TextLanguage$Builder;
.super Ljava/lang/Object;
.source "TextLanguage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/TextLanguage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
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

.field private final mStartIndex:I


# direct methods
.method public constructor <init>(II)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/textclassifier/EntityConfidence;

    invoke-direct {v0}, Landroid/view/textclassifier/EntityConfidence;-><init>()V

    iput-object v0, p0, Landroid/view/textclassifier/TextLanguage$Builder;->mLanguageConfidence:Landroid/view/textclassifier/EntityConfidence;

    if-ltz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    if-le p2, p1, :cond_1

    :goto_1
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    iput p1, p0, Landroid/view/textclassifier/TextLanguage$Builder;->mStartIndex:I

    iput p2, p0, Landroid/view/textclassifier/TextLanguage$Builder;->mEndIndex:I

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method


# virtual methods
.method public build()Landroid/view/textclassifier/TextLanguage;
    .locals 5

    new-instance v0, Landroid/view/textclassifier/TextLanguage;

    iget v1, p0, Landroid/view/textclassifier/TextLanguage$Builder;->mStartIndex:I

    iget v2, p0, Landroid/view/textclassifier/TextLanguage$Builder;->mEndIndex:I

    iget-object v3, p0, Landroid/view/textclassifier/TextLanguage$Builder;->mLanguageConfidence:Landroid/view/textclassifier/EntityConfidence;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/textclassifier/TextLanguage;-><init>(IILandroid/view/textclassifier/EntityConfidence;Landroid/view/textclassifier/TextLanguage;)V

    return-object v0
.end method

.method public setLanguage(Ljava/util/Locale;F)Landroid/view/textclassifier/TextLanguage$Builder;
    .locals 1

    iget-object v0, p0, Landroid/view/textclassifier/TextLanguage$Builder;->mLanguageConfidence:Landroid/view/textclassifier/EntityConfidence;

    invoke-virtual {v0, p1, p2}, Landroid/view/textclassifier/EntityConfidence;->setEntityType(Ljava/lang/Object;F)V

    return-object p0
.end method
