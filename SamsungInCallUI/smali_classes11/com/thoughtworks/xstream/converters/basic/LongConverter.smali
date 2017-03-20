.class public Lcom/thoughtworks/xstream/converters/basic/LongConverter;
.super Lcom/thoughtworks/xstream/converters/basic/AbstractSingleValueConverter;
.source "LongConverter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/thoughtworks/xstream/converters/basic/AbstractSingleValueConverter;-><init>()V

    return-void
.end method


# virtual methods
.method public canConvert(Ljava/lang/Class;)Z
    .locals 1
    .param p1, "type"    # Ljava/lang/Class;

    .prologue
    .line 22
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Ljava/lang/Long;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public fromString(Ljava/lang/String;)Ljava/lang/Object;
    .locals 12
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 27
    .local v4, "len":I
    if-nez v4, :cond_0

    .line 28
    new-instance v5, Ljava/lang/NumberFormatException;

    const-string v10, "For input string: \"\""

    invoke-direct {v5, v10}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 30
    :cond_0
    const/16 v5, 0x11

    if-ge v4, v5, :cond_1

    .line 31
    invoke-static {p1}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    .line 53
    :goto_0
    return-object v5

    .line 33
    :cond_1
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 34
    .local v0, "c0":C
    const/16 v5, 0x30

    if-eq v0, v5, :cond_2

    const/16 v5, 0x23

    if-eq v0, v5, :cond_2

    .line 35
    invoke-static {p1}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    goto :goto_0

    .line 37
    :cond_2
    const/4 v5, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 40
    .local v1, "c1":C
    const/16 v5, 0x23

    if-ne v0, v5, :cond_3

    const/16 v5, 0x11

    if-ne v4, v5, :cond_3

    .line 41
    const/4 v5, 0x1

    const/16 v10, 0x9

    invoke-virtual {p1, v5, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/16 v10, 0x10

    invoke-static {v5, v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v10

    const/16 v5, 0x20

    shl-long v2, v10, v5

    .line 42
    .local v2, "high":J
    const/16 v5, 0x9

    const/16 v10, 0x11

    invoke-virtual {p1, v5, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/16 v10, 0x10

    invoke-static {v5, v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v6

    .line 52
    .local v6, "low":J
    :goto_1
    or-long v8, v2, v6

    .line 53
    .local v8, "num":J
    new-instance v5, Ljava/lang/Long;

    invoke-direct {v5, v8, v9}, Ljava/lang/Long;-><init>(J)V

    goto :goto_0

    .line 43
    .end local v2    # "high":J
    .end local v6    # "low":J
    .end local v8    # "num":J
    :cond_3
    const/16 v5, 0x78

    if-eq v1, v5, :cond_4

    const/16 v5, 0x58

    if-ne v1, v5, :cond_5

    :cond_4
    const/16 v5, 0x12

    if-ne v4, v5, :cond_5

    .line 44
    const/4 v5, 0x2

    const/16 v10, 0xa

    invoke-virtual {p1, v5, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/16 v10, 0x10

    invoke-static {v5, v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v10

    const/16 v5, 0x20

    shl-long v2, v10, v5

    .line 45
    .restart local v2    # "high":J
    const/16 v5, 0xa

    const/16 v10, 0x12

    invoke-virtual {p1, v5, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/16 v10, 0x10

    invoke-static {v5, v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v6

    .restart local v6    # "low":J
    goto :goto_1

    .line 46
    .end local v2    # "high":J
    .end local v6    # "low":J
    :cond_5
    const/16 v5, 0x17

    if-ne v4, v5, :cond_6

    const/16 v5, 0x31

    if-ne v1, v5, :cond_6

    .line 47
    const/4 v5, 0x1

    const/16 v10, 0xc

    invoke-virtual {p1, v5, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/16 v10, 0x8

    invoke-static {v5, v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v10

    const/16 v5, 0x21

    shl-long v2, v10, v5

    .line 48
    .restart local v2    # "high":J
    const/16 v5, 0xc

    const/16 v10, 0x17

    invoke-virtual {p1, v5, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/16 v10, 0x8

    invoke-static {v5, v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v6

    .restart local v6    # "low":J
    goto :goto_1

    .line 50
    .end local v2    # "high":J
    .end local v6    # "low":J
    :cond_6
    invoke-static {p1}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    goto/16 :goto_0
.end method
