.class Landroid/text/TextUtils$Reverser;
.super Ljava/lang/Object;
.source "TextUtils.java"

# interfaces
.implements Ljava/lang/CharSequence;
.implements Landroid/text/GetChars;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/TextUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Reverser"
.end annotation


# instance fields
.field private mEnd:I

.field private mSource:Ljava/lang/CharSequence;

.field private mStart:I


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/text/TextUtils$Reverser;->mSource:Ljava/lang/CharSequence;

    iput p2, p0, Landroid/text/TextUtils$Reverser;->mStart:I

    iput p3, p0, Landroid/text/TextUtils$Reverser;->mEnd:I

    return-void
.end method


# virtual methods
.method public charAt(I)C
    .locals 2

    iget-object v0, p0, Landroid/text/TextUtils$Reverser;->mSource:Ljava/lang/CharSequence;

    iget v1, p0, Landroid/text/TextUtils$Reverser;->mEnd:I

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, p1

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Landroid/text/AndroidCharacter;->getMirror(C)C

    move-result v0

    return v0
.end method

.method public getChars(II[CI)V
    .locals 7

    iget-object v4, p0, Landroid/text/TextUtils$Reverser;->mSource:Ljava/lang/CharSequence;

    iget v5, p0, Landroid/text/TextUtils$Reverser;->mStart:I

    add-int/2addr v5, p1

    iget v6, p0, Landroid/text/TextUtils$Reverser;->mStart:I

    add-int/2addr v6, p2

    invoke-static {v4, v5, v6, p3, p4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    sub-int v4, p2, p1

    const/4 v5, 0x0

    invoke-static {p3, v5, v4}, Landroid/text/AndroidCharacter;->mirror([CII)Z

    sub-int v1, p2, p1

    sub-int v4, p2, p1

    div-int/lit8 v2, v4, 0x2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    add-int v4, p4, v0

    aget-char v3, p3, v4

    add-int v4, p4, v0

    add-int v5, p4, v1

    sub-int/2addr v5, v0

    add-int/lit8 v5, v5, -0x1

    aget-char v5, p3, v5

    aput-char v5, p3, v4

    add-int v4, p4, v1

    sub-int/2addr v4, v0

    add-int/lit8 v4, v4, -0x1

    aput-char v3, p3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public length()I
    .locals 2

    iget v0, p0, Landroid/text/TextUtils$Reverser;->mEnd:I

    iget v1, p0, Landroid/text/TextUtils$Reverser;->mStart:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 2

    sub-int v1, p2, p1

    new-array v0, v1, [C

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/text/TextUtils$Reverser;->getChars(II[CI)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Landroid/text/TextUtils$Reverser;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/text/TextUtils$Reverser;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
