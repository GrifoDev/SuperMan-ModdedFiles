.class final Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;
.super Ljava/lang/Object;
.source "InternalLocaleBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/util/locale/InternalLocaleBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CaseInsensitiveString"
.end annotation


# instance fields
.field private final lowerStr:Ljava/lang/String;

.field private final str:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 671
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 672
    iput-object p1, p0, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;->str:Ljava/lang/String;

    .line 673
    invoke-static {p1}, Lsun/util/locale/LocaleUtils;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;->lowerStr:Ljava/lang/String;

    .line 671
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 687
    if-ne p0, p1, :cond_0

    .line 688
    const/4 v0, 0x1

    return v0

    .line 690
    :cond_0
    instance-of v0, p1, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;

    if-nez v0, :cond_1

    .line 691
    const/4 v0, 0x0

    return v0

    .line 693
    :cond_1
    iget-object v0, p0, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;->lowerStr:Ljava/lang/String;

    nop

    nop

    .end local p1    # "obj":Ljava/lang/Object;
    iget-object v1, p1, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;->lowerStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 682
    iget-object v0, p0, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;->lowerStr:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public value()Ljava/lang/String;
    .locals 1

    .prologue
    .line 677
    iget-object v0, p0, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;->str:Ljava/lang/String;

    return-object v0
.end method
