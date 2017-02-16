.class public final Lsun/util/locale/BaseLocale;
.super Ljava/lang/Object;
.source "BaseLocale.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/util/locale/BaseLocale$Cache;,
        Lsun/util/locale/BaseLocale$Key;
    }
.end annotation


# static fields
.field private static final CACHE:Lsun/util/locale/BaseLocale$Cache;

.field public static final SEP:Ljava/lang/String; = "_"


# instance fields
.field private volatile hash:I

.field private final language:Ljava/lang/String;

.field private final region:Ljava/lang/String;

.field private final script:Ljava/lang/String;

.field private final variant:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lsun/util/locale/BaseLocale$Cache;

    invoke-direct {v0}, Lsun/util/locale/BaseLocale$Cache;-><init>()V

    sput-object v0, Lsun/util/locale/BaseLocale;->CACHE:Lsun/util/locale/BaseLocale$Cache;

    .line 36
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "language"    # Ljava/lang/String;
    .param p2, "region"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lsun/util/locale/BaseLocale;->hash:I

    .line 51
    iput-object p1, p0, Lsun/util/locale/BaseLocale;->language:Ljava/lang/String;

    .line 52
    const-string/jumbo v0, ""

    iput-object v0, p0, Lsun/util/locale/BaseLocale;->script:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Lsun/util/locale/BaseLocale;->region:Ljava/lang/String;

    .line 54
    const-string/jumbo v0, ""

    iput-object v0, p0, Lsun/util/locale/BaseLocale;->variant:Ljava/lang/String;

    .line 50
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "language"    # Ljava/lang/String;
    .param p2, "script"    # Ljava/lang/String;
    .param p3, "region"    # Ljava/lang/String;
    .param p4, "variant"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lsun/util/locale/BaseLocale;->hash:I

    .line 58
    if-eqz p1, :cond_0

    invoke-static {p1}, Lsun/util/locale/LocaleUtils;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lsun/util/locale/BaseLocale;->language:Ljava/lang/String;

    .line 59
    if-eqz p2, :cond_1

    invoke-static {p2}, Lsun/util/locale/LocaleUtils;->toTitleString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lsun/util/locale/BaseLocale;->script:Ljava/lang/String;

    .line 60
    if-eqz p3, :cond_2

    invoke-static {p3}, Lsun/util/locale/LocaleUtils;->toUpperString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lsun/util/locale/BaseLocale;->region:Ljava/lang/String;

    .line 61
    if-eqz p4, :cond_3

    invoke-virtual {p4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Lsun/util/locale/BaseLocale;->variant:Ljava/lang/String;

    .line 57
    return-void

    .line 58
    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0

    .line 59
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_1

    .line 60
    :cond_2
    const-string/jumbo v0, ""

    goto :goto_2

    .line 61
    :cond_3
    const-string/jumbo v0, ""

    goto :goto_3
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsun/util/locale/BaseLocale;)V
    .locals 0
    .param p1, "language"    # Ljava/lang/String;
    .param p2, "script"    # Ljava/lang/String;
    .param p3, "region"    # Ljava/lang/String;
    .param p4, "variant"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lsun/util/locale/BaseLocale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static createInstance(Ljava/lang/String;Ljava/lang/String;)Lsun/util/locale/BaseLocale;
    .locals 4
    .param p0, "language"    # Ljava/lang/String;
    .param p1, "region"    # Ljava/lang/String;

    .prologue
    .line 67
    new-instance v0, Lsun/util/locale/BaseLocale;

    invoke-direct {v0, p0, p1}, Lsun/util/locale/BaseLocale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .local v0, "base":Lsun/util/locale/BaseLocale;
    sget-object v1, Lsun/util/locale/BaseLocale;->CACHE:Lsun/util/locale/BaseLocale$Cache;

    new-instance v2, Lsun/util/locale/BaseLocale$Key;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3}, Lsun/util/locale/BaseLocale$Key;-><init>(Ljava/lang/String;Ljava/lang/String;Lsun/util/locale/BaseLocale$Key;)V

    invoke-virtual {v1, v2, v0}, Lsun/util/locale/BaseLocale$Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lsun/util/locale/BaseLocale;
    .locals 3
    .param p0, "language"    # Ljava/lang/String;
    .param p1, "script"    # Ljava/lang/String;
    .param p2, "region"    # Ljava/lang/String;
    .param p3, "variant"    # Ljava/lang/String;

    .prologue
    .line 75
    if-eqz p0, :cond_0

    .line 76
    const-string/jumbo v2, "he"

    invoke-static {p0, v2}, Lsun/util/locale/LocaleUtils;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 77
    const-string/jumbo p0, "iw"

    .line 85
    :cond_0
    :goto_0
    new-instance v1, Lsun/util/locale/BaseLocale$Key;

    invoke-direct {v1, p0, p1, p2, p3}, Lsun/util/locale/BaseLocale$Key;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .local v1, "key":Lsun/util/locale/BaseLocale$Key;
    sget-object v2, Lsun/util/locale/BaseLocale;->CACHE:Lsun/util/locale/BaseLocale$Cache;

    invoke-virtual {v2, v1}, Lsun/util/locale/BaseLocale$Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/util/locale/BaseLocale;

    .line 87
    .local v0, "baseLocale":Lsun/util/locale/BaseLocale;
    return-object v0

    .line 78
    .end local v0    # "baseLocale":Lsun/util/locale/BaseLocale;
    .end local v1    # "key":Lsun/util/locale/BaseLocale$Key;
    :cond_1
    const-string/jumbo v2, "yi"

    invoke-static {p0, v2}, Lsun/util/locale/LocaleUtils;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 79
    const-string/jumbo p0, "ji"

    goto :goto_0

    .line 80
    :cond_2
    const-string/jumbo v2, "id"

    invoke-static {p0, v2}, Lsun/util/locale/LocaleUtils;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 81
    const-string/jumbo p0, "in"

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 108
    if-ne p0, p1, :cond_0

    .line 109
    return v1

    .line 111
    :cond_0
    instance-of v3, p1, Lsun/util/locale/BaseLocale;

    if-nez v3, :cond_1

    .line 112
    return v2

    :cond_1
    move-object v0, p1

    .line 114
    check-cast v0, Lsun/util/locale/BaseLocale;

    .line 115
    .local v0, "other":Lsun/util/locale/BaseLocale;
    iget-object v3, p0, Lsun/util/locale/BaseLocale;->language:Ljava/lang/String;

    iget-object v4, v0, Lsun/util/locale/BaseLocale;->language:Ljava/lang/String;

    if-ne v3, v4, :cond_3

    .line 116
    iget-object v3, p0, Lsun/util/locale/BaseLocale;->script:Ljava/lang/String;

    iget-object v4, v0, Lsun/util/locale/BaseLocale;->script:Ljava/lang/String;

    if-ne v3, v4, :cond_3

    .line 117
    iget-object v3, p0, Lsun/util/locale/BaseLocale;->region:Ljava/lang/String;

    iget-object v4, v0, Lsun/util/locale/BaseLocale;->region:Ljava/lang/String;

    if-ne v3, v4, :cond_3

    .line 118
    iget-object v3, p0, Lsun/util/locale/BaseLocale;->variant:Ljava/lang/String;

    iget-object v4, v0, Lsun/util/locale/BaseLocale;->variant:Ljava/lang/String;

    if-ne v3, v4, :cond_2

    .line 115
    :goto_0
    return v1

    :cond_2
    move v1, v2

    .line 118
    goto :goto_0

    :cond_3
    move v1, v2

    .line 115
    goto :goto_0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lsun/util/locale/BaseLocale;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lsun/util/locale/BaseLocale;->region:Ljava/lang/String;

    return-object v0
.end method

.method public getScript()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lsun/util/locale/BaseLocale;->script:Ljava/lang/String;

    return-object v0
.end method

.method public getVariant()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lsun/util/locale/BaseLocale;->variant:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 154
    iget v0, p0, Lsun/util/locale/BaseLocale;->hash:I

    .line 155
    .local v0, "h":I
    if-nez v0, :cond_0

    .line 157
    iget-object v1, p0, Lsun/util/locale/BaseLocale;->language:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 158
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lsun/util/locale/BaseLocale;->script:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 159
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lsun/util/locale/BaseLocale;->region:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 160
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lsun/util/locale/BaseLocale;->variant:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 161
    iput v0, p0, Lsun/util/locale/BaseLocale;->hash:I

    .line 163
    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .local v0, "buf":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lsun/util/locale/BaseLocale;->language:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 125
    const-string/jumbo v1, "language="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    iget-object v1, p0, Lsun/util/locale/BaseLocale;->language:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    :cond_0
    iget-object v1, p0, Lsun/util/locale/BaseLocale;->script:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 129
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 130
    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    :cond_1
    const-string/jumbo v1, "script="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    iget-object v1, p0, Lsun/util/locale/BaseLocale;->script:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    :cond_2
    iget-object v1, p0, Lsun/util/locale/BaseLocale;->region:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 136
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 137
    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    :cond_3
    const-string/jumbo v1, "region="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    iget-object v1, p0, Lsun/util/locale/BaseLocale;->region:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    :cond_4
    iget-object v1, p0, Lsun/util/locale/BaseLocale;->variant:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_6

    .line 143
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 144
    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    :cond_5
    const-string/jumbo v1, "variant="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    iget-object v1, p0, Lsun/util/locale/BaseLocale;->variant:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
