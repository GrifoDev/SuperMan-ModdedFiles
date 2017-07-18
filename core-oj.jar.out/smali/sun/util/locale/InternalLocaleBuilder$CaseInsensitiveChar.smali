.class final Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;
.super Ljava/lang/Object;
.source "InternalLocaleBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/util/locale/InternalLocaleBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CaseInsensitiveChar"
.end annotation


# instance fields
.field private final ch:C

.field private final lowerCh:C


# direct methods
.method constructor <init>(C)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-char p1, p0, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;->ch:C

    iget-char v0, p0, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;->ch:C

    invoke-static {v0}, Lsun/util/locale/LocaleUtils;->toLower(C)C

    move-result v0

    iput-char v0, p0, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;->lowerCh:C

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-direct {p0, v0}, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;-><init>(C)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;)V
    .locals 0

    invoke-direct {p0, p1}, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v2, p1, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;

    if-nez v2, :cond_1

    return v1

    :cond_1
    iget-char v2, p0, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;->lowerCh:C

    check-cast p1, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;

    iget-char v3, p1, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;->lowerCh:C

    if-ne v2, v3, :cond_2

    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget-char v0, p0, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;->lowerCh:C

    return v0
.end method

.method public value()C
    .locals 1

    iget-char v0, p0, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;->ch:C

    return v0
.end method
