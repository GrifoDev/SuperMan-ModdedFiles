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
    .param p1, "attribute"    # Ljava/text/Format$Field;

    .prologue
    invoke-direct {p0, p1}, Ljava/text/FieldPosition;->matchesField(Ljava/text/Format$Field;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Ljava/text/FieldPosition;Ljava/text/Format$Field;I)Z
    .locals 1
    .param p1, "attribute"    # Ljava/text/Format$Field;
    .param p2, "field"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/text/FieldPosition;->matchesField(Ljava/text/Format$Field;I)Z

    move-result v0

    return v0
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "field"    # I

    .prologue
    const/4 v0, 0x0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput v0, p0, Ljava/text/FieldPosition;->field:I

    .line 85
    iput v0, p0, Ljava/text/FieldPosition;->endIndex:I

    .line 91
    iput v0, p0, Ljava/text/FieldPosition;->beginIndex:I

    .line 109
    iput p1, p0, Ljava/text/FieldPosition;->field:I

    .line 108
    return-void
.end method

.method public constructor <init>(Ljava/text/Format$Field;)V
    .locals 1
    .param p1, "attribute"    # Ljava/text/Format$Field;

    .prologue
    .line 122
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Ljava/text/FieldPosition;-><init>(Ljava/text/Format$Field;I)V

    .line 121
    return-void
.end method

.method public constructor <init>(Ljava/text/Format$Field;I)V
    .locals 1
    .param p1, "attribute"    # Ljava/text/Format$Field;
    .param p2, "fieldID"    # I

    .prologue
    const/4 v0, 0x0

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput v0, p0, Ljava/text/FieldPosition;->field:I

    .line 85
    iput v0, p0, Ljava/text/FieldPosition;->endIndex:I

    .line 91
    iput v0, p0, Ljava/text/FieldPosition;->beginIndex:I

    .line 142
    iput-object p1, p0, Ljava/text/FieldPosition;->attribute:Ljava/text/Format$Field;

    .line 143
    iput p2, p0, Ljava/text/FieldPosition;->field:I

    .line 141
    return-void
.end method

.method private matchesField(Ljava/text/Format$Field;)Z
    .locals 1
    .param p1, "attribute"    # Ljava/text/Format$Field;

    .prologue
    .line 253
    iget-object v0, p0, Ljava/text/FieldPosition;->attribute:Ljava/text/Format$Field;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Ljava/text/FieldPosition;->attribute:Ljava/text/Format$Field;

    invoke-virtual {v0, p1}, Ljava/text/Format$Field;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 256
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private matchesField(Ljava/text/Format$Field;I)Z
    .locals 1
    .param p1, "attribute"    # Ljava/text/Format$Field;
    .param p2, "field"    # I

    .prologue
    .line 265
    iget-object v0, p0, Ljava/text/FieldPosition;->attribute:Ljava/text/Format$Field;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Ljava/text/FieldPosition;->attribute:Ljava/text/Format$Field;

    invoke-virtual {v0, p1}, Ljava/text/Format$Field;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 268
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
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 211
    if-nez p1, :cond_0

    return v1

    .line 212
    :cond_0
    instance-of v2, p1, Ljava/text/FieldPosition;

    if-nez v2, :cond_1

    .line 213
    return v1

    :cond_1
    move-object v0, p1

    .line 214
    check-cast v0, Ljava/text/FieldPosition;

    .line 215
    .local v0, "other":Ljava/text/FieldPosition;
    iget-object v2, p0, Ljava/text/FieldPosition;->attribute:Ljava/text/Format$Field;

    if-nez v2, :cond_2

    .line 216
    iget-object v2, v0, Ljava/text/FieldPosition;->attribute:Ljava/text/Format$Field;

    if-eqz v2, :cond_3

    .line 217
    return v1

    .line 220
    :cond_2
    iget-object v2, p0, Ljava/text/FieldPosition;->attribute:Ljava/text/Format$Field;

    iget-object v3, v0, Ljava/text/FieldPosition;->attribute:Ljava/text/Format$Field;

    invoke-virtual {v2, v3}, Ljava/text/Format$Field;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 221
    return v1

    .line 223
    :cond_3
    iget v2, p0, Ljava/text/FieldPosition;->beginIndex:I

    iget v3, v0, Ljava/text/FieldPosition;->beginIndex:I

    if-ne v2, v3, :cond_4

    .line 224
    iget v2, p0, Ljava/text/FieldPosition;->endIndex:I

    iget v3, v0, Ljava/text/FieldPosition;->endIndex:I

    if-ne v2, v3, :cond_4

    .line 225
    iget v2, p0, Ljava/text/FieldPosition;->field:I

    iget v3, v0, Ljava/text/FieldPosition;->field:I

    if-ne v2, v3, :cond_4

    const/4 v1, 0x1

    .line 223
    :cond_4
    return v1
.end method

.method public getBeginIndex()I
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Ljava/text/FieldPosition;->beginIndex:I

    return v0
.end method

.method public getEndIndex()I
    .locals 1

    .prologue
    .line 177
    iget v0, p0, Ljava/text/FieldPosition;->endIndex:I

    return v0
.end method

.method public getField()I
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Ljava/text/FieldPosition;->field:I

    return v0
.end method

.method public getFieldAttribute()Ljava/text/Format$Field;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Ljava/text/FieldPosition;->attribute:Ljava/text/Format$Field;

    return-object v0
.end method

.method getFieldDelegate()Ljava/text/Format$FieldDelegate;
    .locals 2

    .prologue
    .line 203
    new-instance v0, Ljava/text/FieldPosition$Delegate;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/text/FieldPosition$Delegate;-><init>(Ljava/text/FieldPosition;Ljava/text/FieldPosition$Delegate;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 233
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
    .param p1, "bi"    # I

    .prologue
    .line 185
    iput p1, p0, Ljava/text/FieldPosition;->beginIndex:I

    .line 184
    return-void
.end method

.method public setEndIndex(I)V
    .locals 0
    .param p1, "ei"    # I

    .prologue
    .line 193
    iput p1, p0, Ljava/text/FieldPosition;->endIndex:I

    .line 192
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/text/FieldPosition;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 242
    const-string/jumbo v1, "[field="

    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 242
    iget v1, p0, Ljava/text/FieldPosition;->field:I

    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 242
    const-string/jumbo v1, ",attribute="

    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 242
    iget-object v1, p0, Ljava/text/FieldPosition;->attribute:Ljava/text/Format$Field;

    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 243
    const-string/jumbo v1, ",beginIndex="

    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 243
    iget v1, p0, Ljava/text/FieldPosition;->beginIndex:I

    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 244
    const-string/jumbo v1, ",endIndex="

    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 244
    iget v1, p0, Ljava/text/FieldPosition;->endIndex:I

    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 244
    const/16 v1, 0x5d

    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
