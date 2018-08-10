.class public final Landroid/view/textclassifier/TextSelection$Builder;
.super Ljava/lang/Object;
.source "TextSelection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/TextSelection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mEndIndex:I

.field private final mEntityConfidence:Landroid/view/textclassifier/EntityConfidence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/view/textclassifier/EntityConfidence",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLogSource:Ljava/lang/String;

.field private final mStartIndex:I


# direct methods
.method public constructor <init>(II)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/textclassifier/EntityConfidence;

    invoke-direct {v0}, Landroid/view/textclassifier/EntityConfidence;-><init>()V

    iput-object v0, p0, Landroid/view/textclassifier/TextSelection$Builder;->mEntityConfidence:Landroid/view/textclassifier/EntityConfidence;

    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/view/textclassifier/TextSelection$Builder;->mLogSource:Ljava/lang/String;

    if-ltz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    if-le p2, p1, :cond_1

    :goto_1
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    iput p1, p0, Landroid/view/textclassifier/TextSelection$Builder;->mStartIndex:I

    iput p2, p0, Landroid/view/textclassifier/TextSelection$Builder;->mEndIndex:I

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method


# virtual methods
.method public build()Landroid/view/textclassifier/TextSelection;
    .locals 6

    new-instance v0, Landroid/view/textclassifier/TextSelection;

    iget v1, p0, Landroid/view/textclassifier/TextSelection$Builder;->mStartIndex:I

    iget v2, p0, Landroid/view/textclassifier/TextSelection$Builder;->mEndIndex:I

    iget-object v3, p0, Landroid/view/textclassifier/TextSelection$Builder;->mEntityConfidence:Landroid/view/textclassifier/EntityConfidence;

    iget-object v4, p0, Landroid/view/textclassifier/TextSelection$Builder;->mLogSource:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/view/textclassifier/TextSelection;-><init>(IILandroid/view/textclassifier/EntityConfidence;Ljava/lang/String;Landroid/view/textclassifier/TextSelection;)V

    return-object v0
.end method

.method public setEntityType(Ljava/lang/String;F)Landroid/view/textclassifier/TextSelection$Builder;
    .locals 1

    iget-object v0, p0, Landroid/view/textclassifier/TextSelection$Builder;->mEntityConfidence:Landroid/view/textclassifier/EntityConfidence;

    invoke-virtual {v0, p1, p2}, Landroid/view/textclassifier/EntityConfidence;->setEntityType(Ljava/lang/Object;F)V

    return-object p0
.end method

.method setLogSource(Ljava/lang/String;)Landroid/view/textclassifier/TextSelection$Builder;
    .locals 1

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/view/textclassifier/TextSelection$Builder;->mLogSource:Ljava/lang/String;

    return-object p0
.end method
