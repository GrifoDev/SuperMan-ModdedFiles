.class public Ljava/text/FieldPosition;
.super Ljava/lang/Object;
.source "FieldPosition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/text/FieldPosition$Delegate;
    }
.end annotation


# instance fields
.field private attribute:Ljava/text/Format$Field;

.field beginIndex:I

.field endIndex:I

.field field:I


# direct methods
.method static synthetic -wrap0(Ljava/text/FieldPosition;Ljava/text/Format$Field;)Z
    .locals 1

    invoke-direct {p0, p1}, Ljava/text/FieldPosition;->matchesField(Ljava/text/Format$Field;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Ljava/text/FieldPosition;Ljava/text/Format$Field;I)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Ljava/text/FieldPosition;->matchesField(Ljava/text/Format$Field;I)Z

    move-result v0

    return v0
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Ljava/text/FieldPosition;->field:I

    iput v0, p0, Ljava/text/FieldPosition;->endIndex:I

    iput v0, p0, Ljava/text/FieldPosition;->beginIndex:I

    iput p1, p0, Ljava/text/FieldPosition;->field:I

    return-void
.end method

.method public constructor <init>(Ljava/text/Format$Field;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Ljava/text/FieldPosition;-><init>(Ljava/text/Format$Field;I)V

    return-void
.end method

.method public constructor <init>(Ljava/text/Format$Field;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Ljava/text/FieldPosition;->field:I

    iput v0, p0, Ljava/text/FieldPosition;->endIndex:I

    iput v0, p0, Ljava/text/FieldPosition;->beginIndex:I

    iput-object p1, p0, Ljava/text/FieldPosition;->attribute:Ljava/text/Format$Field;

    iput p2, p0, Ljava/text/FieldPosition;->field:I

    return-void
.end method

.method private matchesField(Ljava/text/Format$Field;)Z
    .locals 1

    iget-object v0, p0, Ljava/text/FieldPosition;->attribute:Ljava/text/Format$Field;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/text/FieldPosition;->attribute:Ljava/text/Format$Field;

    invoke-virtual {v0, p1}, Ljava/text/Format$Field;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private matchesField(Ljava/text/Format$Field;I)Z
    .locals 1

    iget-object v0, p0, Ljava/text/FieldPosition;->attribute:Ljava/text/Format$Field;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/text/FieldPosition;->attribute:Ljava/text/Format$Field;

    invoke-virtual {v0, p1}, Ljava/text/Format$Field;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_0
    iget v0, p0, Ljava/text/FieldPosition;->field:I

    if-ne p2, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return v1

    :cond_0
    instance-of v2, p1, Ljava/text/FieldPosition;

    if-nez v2, :cond_1

    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Ljava/text/FieldPosition;

    iget-object v2, p0, Ljava/text/FieldPosition;->attribute:Ljava/text/Format$Field;

    if-nez v2, :cond_2

    iget-object v2, v0, Ljava/text/FieldPosition;->attribute:Ljava/text/Format$Field;

    if-eqz v2, :cond_3

    return v1

    :cond_2
    iget-object v2, p0, Ljava/text/FieldPosition;->attribute:Ljava/text/Format$Field;

    iget-object v3, v0, Ljava/text/FieldPosition;->attribute:Ljava/text/Format$Field;

    invoke-virtual {v2, v3}, Ljava/text/Format$Field;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget v2, p0, Ljava/text/FieldPosition;->beginIndex:I

    iget v3, v0, Ljava/text/FieldPosition;->beginIndex:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Ljava/text/FieldPosition;->endIndex:I

    iget v3, v0, Ljava/text/FieldPosition;->endIndex:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Ljava/text/FieldPosition;->field:I

    iget v3, v0, Ljava/text/FieldPosition;->field:I

    if-ne v2, v3, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method public getBeginIndex()I
    .locals 1

    iget v0, p0, Ljava/text/FieldPosition;->beginIndex:I

    return v0
.end method

.method public getEndIndex()I
    .locals 1

    iget v0, p0, Ljava/text/FieldPosition;->endIndex:I

    return v0
.end method

.method public getField()I
    .locals 1

    iget v0, p0, Ljava/text/FieldPosition;->field:I

    return v0
.end method

.method public getFieldAttribute()Ljava/text/Format$Field;
    .locals 1

    iget-object v0, p0, Ljava/text/FieldPosition;->attribute:Ljava/text/Format$Field;

    return-object v0
.end method

.method getFieldDelegate()Ljava/text/Format$FieldDelegate;
    .locals 2

    new-instance v0, Ljava/text/FieldPosition$Delegate;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/text/FieldPosition$Delegate;-><init>(Ljava/text/FieldPosition;Ljava/text/FieldPosition$Delegate;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Ljava/text/FieldPosition;->field:I

    shl-int/lit8 v0, v0, 0x18

    iget v1, p0, Ljava/text/FieldPosition;->beginIndex:I

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iget v1, p0, Ljava/text/FieldPosition;->endIndex:I

    or-int/2addr v0, v1

    return v0
.end method

.method public setBeginIndex(I)V
    .locals 0

    iput p1, p0, Ljava/text/FieldPosition;->beginIndex:I

    return-void
.end method

.method public setEndIndex(I)V
    .locals 0

    iput p1, p0, Ljava/text/FieldPosition;->endIndex:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/text/FieldPosition;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "[field="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/text/FieldPosition;->field:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",attribute="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/text/FieldPosition;->attribute:Ljava/text/Format$Field;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",beginIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/text/FieldPosition;->beginIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",endIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/text/FieldPosition;->endIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
