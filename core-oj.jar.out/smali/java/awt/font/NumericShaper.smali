.class public final Ljava/awt/font/NumericShaper;
.super Ljava/lang/Object;
.source "NumericShaper.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/awt/font/NumericShaper$Range;
    }
.end annotation


# static fields
.field public static final ALL_RANGES:I = 0x7ffff

.field public static final ARABIC:I = 0x2

.field private static final ARABIC_KEY:I = 0x1

.field public static final BENGALI:I = 0x10

.field private static final BENGALI_KEY:I = 0x4

.field private static final BSEARCH_THRESHOLD:I = 0x3

.field private static final CONTEXTUAL_MASK:I = -0x80000000

.field public static final DEVANAGARI:I = 0x8

.field private static final DEVANAGARI_KEY:I = 0x3

.field public static final EASTERN_ARABIC:I = 0x4

.field private static final EASTERN_ARABIC_KEY:I = 0x2

.field public static final ETHIOPIC:I = 0x10000

.field private static final ETHIOPIC_KEY:I = 0x10

.field public static final EUROPEAN:I = 0x1

.field private static final EUROPEAN_KEY:I = 0x0

.field public static final GUJARATI:I = 0x40

.field private static final GUJARATI_KEY:I = 0x6

.field public static final GURMUKHI:I = 0x20

.field private static final GURMUKHI_KEY:I = 0x5

.field public static final KANNADA:I = 0x400

.field private static final KANNADA_KEY:I = 0xa

.field public static final KHMER:I = 0x20000

.field private static final KHMER_KEY:I = 0x11

.field public static final LAO:I = 0x2000

.field private static final LAO_KEY:I = 0xd

.field public static final MALAYALAM:I = 0x800

.field private static final MALAYALAM_KEY:I = 0xb

.field public static final MONGOLIAN:I = 0x40000

.field private static final MONGOLIAN_KEY:I = 0x12

.field public static final MYANMAR:I = 0x8000

.field private static final MYANMAR_KEY:I = 0xf

.field private static final NUM_KEYS:I = 0x13

.field public static final ORIYA:I = 0x80

.field private static final ORIYA_KEY:I = 0x7

.field public static final TAMIL:I = 0x100

.field private static final TAMIL_KEY:I = 0x8

.field public static final TELUGU:I = 0x200

.field private static final TELUGU_KEY:I = 0x9

.field public static final THAI:I = 0x1000

.field private static final THAI_KEY:I = 0xc

.field public static final TIBETAN:I = 0x4000

.field private static final TIBETAN_KEY:I = 0xe

.field private static final bases:[C

.field private static final contexts:[C

.field private static ctCache:I = 0x0

.field private static ctCacheLimit:I = 0x0

.field private static final serialVersionUID:J = -0x6f5695fe5d200b84L

.field private static strongTable:[I


# instance fields
.field private volatile transient currentRange:Ljava/awt/font/NumericShaper$Range;

.field private key:I

.field private mask:I

.field private transient rangeArray:[Ljava/awt/font/NumericShaper$Range;

.field private transient rangeSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/awt/font/NumericShaper$Range;",
            ">;"
        }
    .end annotation
.end field

.field private shapingRange:Ljava/awt/font/NumericShaper$Range;

.field private volatile transient stCache:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x13

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Ljava/awt/font/NumericShaper;->bases:[C

    const/16 v0, 0x27

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Ljava/awt/font/NumericShaper;->contexts:[C

    const/4 v0, 0x0

    sput v0, Ljava/awt/font/NumericShaper;->ctCache:I

    sget-object v0, Ljava/awt/font/NumericShaper;->contexts:[C

    array-length v0, v0

    add-int/lit8 v0, v0, -0x2

    sput v0, Ljava/awt/font/NumericShaper;->ctCacheLimit:I

    const/16 v0, 0x234

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Ljava/awt/font/NumericShaper;->strongTable:[I

    return-void

    :array_0
    .array-data 2
        0x0s
        0x630s
        0x6c0s
        0x936s
        0x9b6s
        0xa36s
        0xab6s
        0xb36s
        0xbb6s
        0xc36s
        0xcb6s
        0xd36s
        0xe20s
        0xea0s
        0xef0s
        0x1010s
        0x1338s
        0x17b0s
        0x17e0s
    .end array-data

    nop

    :array_1
    .array-data 2
        0x0s
        0x300s
        0x600s
        0x780s
        0x600s
        0x780s
        0x900s
        0x980s
        0x980s
        0xa00s
        0xa00s
        0xa80s
        0xa80s
        0xb00s
        0xb00s
        0xb80s
        0xb80s
        0xc00s
        0xc00s
        0xc80s
        0xc80s
        0xd00s
        0xd00s
        0xd80s
        0xe00s
        0xe80s
        0xe80s
        0xf00s
        0xf00s
        0x1000s
        0x1000s
        0x1080s
        0x1200s
        0x1380s
        0x1780s
        0x1800s
        0x1800s
        0x1900s
        -0x1s
    .end array-data

    nop

    :array_2
    .array-data 4
        0x0
        0x41
        0x5b
        0x61
        0x7b
        0xaa
        0xab
        0xb5
        0xb6
        0xba
        0xbb
        0xc0
        0xd7
        0xd8
        0xf7
        0xf8
        0x2b9
        0x2bb
        0x2c2
        0x2d0
        0x2d2
        0x2e0
        0x2e5
        0x2ee
        0x2ef
        0x370
        0x374
        0x376
        0x37e
        0x386
        0x387
        0x388
        0x3f6
        0x3f7
        0x483
        0x48a
        0x58a
        0x5be
        0x5bf
        0x5c0
        0x5c1
        0x5c3
        0x5c4
        0x5c6
        0x5c7
        0x5d0
        0x600
        0x608
        0x609
        0x60b
        0x60c
        0x60d
        0x60e
        0x61b
        0x64b
        0x66d
        0x670
        0x671
        0x6d6
        0x6e5
        0x6e7
        0x6ee
        0x6f0
        0x6fa
        0x70f
        0x710
        0x711
        0x712
        0x730
        0x74d
        0x7a6
        0x7b1
        0x7eb
        0x7f4
        0x7f6
        0x7fa
        0x816
        0x81a
        0x81b
        0x824
        0x825
        0x828
        0x829
        0x830
        0x859
        0x85e
        0x900
        0x903
        0x93a
        0x93b
        0x93c
        0x93d
        0x941
        0x949
        0x94d
        0x94e
        0x951
        0x958
        0x962
        0x964
        0x981
        0x982
        0x9bc
        0x9bd
        0x9c1
        0x9c7
        0x9cd
        0x9ce
        0x9e2
        0x9e6
        0x9f2
        0x9f4
        0x9fb
        0xa03
        0xa3c
        0xa3e
        0xa41
        0xa59
        0xa70
        0xa72
        0xa75
        0xa83
        0xabc
        0xabd
        0xac1
        0xac9
        0xacd
        0xad0
        0xae2
        0xae6
        0xaf1
        0xb02
        0xb3c
        0xb3d
        0xb3f
        0xb40
        0xb41
        0xb47
        0xb4d
        0xb57
        0xb62
        0xb66
        0xb82
        0xb83
        0xbc0
        0xbc1
        0xbcd
        0xbd0
        0xbf3
        0xc01
        0xc3e
        0xc41
        0xc46
        0xc58
        0xc62
        0xc66
        0xc78
        0xc7f
        0xcbc
        0xcbd
        0xccc
        0xcd5
        0xce2
        0xce6
        0xd41
        0xd46
        0xd4d
        0xd4e
        0xd62
        0xd66
        0xdca
        0xdcf
        0xdd2
        0xdd8
        0xe31
        0xe32
        0xe34
        0xe40
        0xe47
        0xe4f
        0xeb1
        0xeb2
        0xeb4
        0xebd
        0xec8
        0xed0
        0xf18
        0xf1a
        0xf35
        0xf36
        0xf37
        0xf38
        0xf39
        0xf3e
        0xf71
        0xf7f
        0xf80
        0xf85
        0xf86
        0xf88
        0xf8d
        0xfbe
        0xfc6
        0xfc7
        0x102d
        0x1031
        0x1032
        0x1038
        0x1039
        0x103b
        0x103d
        0x103f
        0x1058
        0x105a
        0x105e
        0x1061
        0x1071
        0x1075
        0x1082
        0x1083
        0x1085
        0x1087
        0x108d
        0x108e
        0x109d
        0x109e
        0x135d
        0x1360
        0x1390
        0x13a0
        0x1400
        0x1401
        0x1680
        0x1681
        0x169b
        0x16a0
        0x1712
        0x1720
        0x1732
        0x1735
        0x1752
        0x1760
        0x1772
        0x1780
        0x17b7
        0x17be
        0x17c6
        0x17c7
        0x17c9
        0x17d4
        0x17db
        0x17dc
        0x17dd
        0x17e0
        0x17f0
        0x1810
        0x18a9
        0x18aa
        0x1920
        0x1923
        0x1927
        0x1929
        0x1932
        0x1933
        0x1939
        0x1946
        0x19de
        0x1a00
        0x1a17
        0x1a19
        0x1a56
        0x1a57
        0x1a58
        0x1a61
        0x1a62
        0x1a63
        0x1a65
        0x1a6d
        0x1a73
        0x1a80
        0x1b00
        0x1b04
        0x1b34
        0x1b35
        0x1b36
        0x1b3b
        0x1b3c
        0x1b3d
        0x1b42
        0x1b43
        0x1b6b
        0x1b74
        0x1b80
        0x1b82
        0x1ba2
        0x1ba6
        0x1ba8
        0x1baa
        0x1be6    # 1.0008E-41f
        0x1be7    # 1.001E-41f
        0x1be8
        0x1bea
        0x1bed
        0x1bee
        0x1bef
        0x1bf2
        0x1c2c
        0x1c34
        0x1c36
        0x1c3b
        0x1cd0
        0x1cd3
        0x1cd4
        0x1ce1
        0x1ce2
        0x1ce9
        0x1ced
        0x1cee
        0x1dc0
        0x1e00
        0x1fbd
        0x1fbe
        0x1fbf
        0x1fc2
        0x1fcd
        0x1fd0
        0x1fdd
        0x1fe0
        0x1fed
        0x1ff2
        0x1ffd
        0x200e
        0x2010
        0x2071
        0x2074
        0x207f
        0x2080
        0x2090
        0x20a0
        0x2102
        0x2103
        0x2107
        0x2108
        0x210a
        0x2114
        0x2115
        0x2116
        0x2119
        0x211e
        0x2124
        0x2125
        0x2126
        0x2127
        0x2128
        0x2129
        0x212a
        0x212e
        0x212f
        0x213a
        0x213c
        0x2140
        0x2145
        0x214a
        0x214e
        0x2150
        0x2160
        0x2189
        0x2336
        0x237b
        0x2395
        0x2396
        0x249c
        0x24ea
        0x26ac
        0x26ad
        0x2800
        0x2900
        0x2c00
        0x2ce5
        0x2ceb
        0x2cef
        0x2d00
        0x2d7f
        0x2d80
        0x2de0
        0x3005
        0x3008
        0x3021
        0x302a
        0x3031
        0x3036
        0x3038
        0x303d
        0x3041
        0x3099
        0x309d
        0x30a0
        0x30a1
        0x30fb
        0x30fc
        0x31c0
        0x31f0
        0x321d
        0x3220
        0x3250
        0x3260
        0x327c
        0x327f
        0x32b1
        0x32c0
        0x32cc
        0x32d0
        0x3377
        0x337b
        0x33de
        0x33e0
        0x33ff
        0x3400
        0x4dc0
        0x4e00
        0xa490
        0xa4d0
        0xa60d
        0xa610
        0xa66f
        0xa680
        0xa6f0
        0xa6f2
        0xa700
        0xa722
        0xa788
        0xa789
        0xa802
        0xa803
        0xa806
        0xa807
        0xa80b
        0xa80c
        0xa825
        0xa827
        0xa828
        0xa830
        0xa838
        0xa840
        0xa874
        0xa880
        0xa8c4
        0xa8ce
        0xa8e0
        0xa8f2
        0xa926
        0xa92e
        0xa947
        0xa952
        0xa980
        0xa983
        0xa9b3
        0xa9b4
        0xa9b6
        0xa9ba
        0xa9bc
        0xa9bd
        0xaa29
        0xaa2f
        0xaa31
        0xaa33
        0xaa35
        0xaa40
        0xaa43
        0xaa44
        0xaa4c
        0xaa4d
        0xaab0
        0xaab1
        0xaab2
        0xaab5
        0xaab7
        0xaab9
        0xaabe
        0xaac0
        0xaac1
        0xaac2
        0xabe5
        0xabe6
        0xabe8
        0xabe9
        0xabed
        0xabf0
        0xfb1e
        0xfb1f
        0xfb29
        0xfb2a
        0xfd3e
        0xfd50
        0xfdfd
        0xfe70
        0xfeff
        0xff21
        0xff3b
        0xff41
        0xff5b
        0xff66
        0xffe0
        0x10000
        0x10101
        0x10102
        0x10140
        0x101d0
        0x101fd
        0x10280
        0x1091f
        0x10920
        0x10a01
        0x10a10
        0x10a38
        0x10a40
        0x10b39
        0x10b40
        0x10e60
        0x11000
        0x11001
        0x11002
        0x11038
        0x11047
        0x11052
        0x11066
        0x11080
        0x11082
        0x110b3
        0x110b7
        0x110b9
        0x110bb
        0x1d167
        0x1d16a
        0x1d173
        0x1d183
        0x1d185
        0x1d18c
        0x1d1aa
        0x1d1ae
        0x1d200
        0x1d360
        0x1d6db
        0x1d6dc
        0x1d715
        0x1d716
        0x1d74f
        0x1d750
        0x1d789
        0x1d78a
        0x1d7c3
        0x1d7c4
        0x1d7ce
        0x1f110
        0x1f300
        0x1f48c
        0x1f48d
        0x1f524
        0x1f525
        0x20000
        0xe0001
        0xf0000
        0x10fffe
        0x10ffff
    .end array-data
.end method

.method private constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/awt/font/NumericShaper$Range;->EUROPEAN:Ljava/awt/font/NumericShaper$Range;

    iput-object v0, p0, Ljava/awt/font/NumericShaper;->currentRange:Ljava/awt/font/NumericShaper$Range;

    const/4 v0, 0x0

    iput v0, p0, Ljava/awt/font/NumericShaper;->stCache:I

    iput p1, p0, Ljava/awt/font/NumericShaper;->key:I

    iput p2, p0, Ljava/awt/font/NumericShaper;->mask:I

    return-void
.end method

.method private constructor <init>(Ljava/awt/font/NumericShaper$Range;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/awt/font/NumericShaper$Range;",
            "Ljava/util/Set",
            "<",
            "Ljava/awt/font/NumericShaper$Range;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/awt/font/NumericShaper$Range;->EUROPEAN:Ljava/awt/font/NumericShaper$Range;

    iput-object v0, p0, Ljava/awt/font/NumericShaper;->currentRange:Ljava/awt/font/NumericShaper$Range;

    const/4 v0, 0x0

    iput v0, p0, Ljava/awt/font/NumericShaper;->stCache:I

    iput-object p1, p0, Ljava/awt/font/NumericShaper;->shapingRange:Ljava/awt/font/NumericShaper$Range;

    invoke-static {p2}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Ljava/awt/font/NumericShaper;->rangeSet:Ljava/util/Set;

    iget-object v0, p0, Ljava/awt/font/NumericShaper;->rangeSet:Ljava/util/Set;

    sget-object v1, Ljava/awt/font/NumericShaper$Range;->EASTERN_ARABIC:Ljava/awt/font/NumericShaper$Range;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/awt/font/NumericShaper;->rangeSet:Ljava/util/Set;

    sget-object v1, Ljava/awt/font/NumericShaper$Range;->ARABIC:Ljava/awt/font/NumericShaper$Range;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/awt/font/NumericShaper;->rangeSet:Ljava/util/Set;

    sget-object v1, Ljava/awt/font/NumericShaper$Range;->ARABIC:Ljava/awt/font/NumericShaper$Range;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Ljava/awt/font/NumericShaper;->rangeSet:Ljava/util/Set;

    sget-object v1, Ljava/awt/font/NumericShaper$Range;->TAI_THAM_THAM:Ljava/awt/font/NumericShaper$Range;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljava/awt/font/NumericShaper;->rangeSet:Ljava/util/Set;

    sget-object v1, Ljava/awt/font/NumericShaper$Range;->TAI_THAM_HORA:Ljava/awt/font/NumericShaper$Range;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljava/awt/font/NumericShaper;->rangeSet:Ljava/util/Set;

    sget-object v1, Ljava/awt/font/NumericShaper$Range;->TAI_THAM_HORA:Ljava/awt/font/NumericShaper$Range;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Ljava/awt/font/NumericShaper;->rangeSet:Ljava/util/Set;

    iget-object v1, p0, Ljava/awt/font/NumericShaper;->rangeSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/awt/font/NumericShaper$Range;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/awt/font/NumericShaper$Range;

    iput-object v0, p0, Ljava/awt/font/NumericShaper;->rangeArray:[Ljava/awt/font/NumericShaper$Range;

    iget-object v0, p0, Ljava/awt/font/NumericShaper;->rangeArray:[Ljava/awt/font/NumericShaper$Range;

    array-length v0, v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_2

    iget-object v0, p0, Ljava/awt/font/NumericShaper;->rangeArray:[Ljava/awt/font/NumericShaper$Range;

    new-instance v1, Ljava/awt/font/NumericShaper$1;

    invoke-direct {v1, p0}, Ljava/awt/font/NumericShaper$1;-><init>(Ljava/awt/font/NumericShaper;)V

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    :cond_2
    return-void
.end method

.method private checkParams([CII)V
    .locals 3

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "text is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-ltz p2, :cond_1

    array-length v0, p1

    if-le p2, v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "bad start or count for text of length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    add-int v0, p2, p3

    if-ltz v0, :cond_1

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_1

    return-void
.end method

.method private static getContextKey(C)I
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Ljava/awt/font/NumericShaper;->contexts:[C

    sget v2, Ljava/awt/font/NumericShaper;->ctCache:I

    aget-char v1, v1, v2

    if-ge p0, v1, :cond_0

    :goto_0
    sget v1, Ljava/awt/font/NumericShaper;->ctCache:I

    if-lez v1, :cond_1

    sget-object v1, Ljava/awt/font/NumericShaper;->contexts:[C

    sget v2, Ljava/awt/font/NumericShaper;->ctCache:I

    aget-char v1, v1, v2

    if-ge p0, v1, :cond_1

    sget v1, Ljava/awt/font/NumericShaper;->ctCache:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Ljava/awt/font/NumericShaper;->ctCache:I

    goto :goto_0

    :cond_0
    sget-object v1, Ljava/awt/font/NumericShaper;->contexts:[C

    sget v2, Ljava/awt/font/NumericShaper;->ctCache:I

    add-int/lit8 v2, v2, 0x1

    aget-char v1, v1, v2

    if-lt p0, v1, :cond_1

    :goto_1
    sget v1, Ljava/awt/font/NumericShaper;->ctCache:I

    sget v2, Ljava/awt/font/NumericShaper;->ctCacheLimit:I

    if-ge v1, v2, :cond_1

    sget-object v1, Ljava/awt/font/NumericShaper;->contexts:[C

    sget v2, Ljava/awt/font/NumericShaper;->ctCache:I

    add-int/lit8 v2, v2, 0x1

    aget-char v1, v1, v2

    if-lt p0, v1, :cond_1

    sget v1, Ljava/awt/font/NumericShaper;->ctCache:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Ljava/awt/font/NumericShaper;->ctCache:I

    goto :goto_1

    :cond_1
    sget v1, Ljava/awt/font/NumericShaper;->ctCache:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_2

    sget v0, Ljava/awt/font/NumericShaper;->ctCache:I

    div-int/lit8 v0, v0, 0x2

    :cond_2
    return v0
.end method

.method public static getContextualShaper(I)Ljava/awt/font/NumericShaper;
    .locals 2

    const/high16 v0, -0x80000000

    or-int/2addr p0, v0

    new-instance v0, Ljava/awt/font/NumericShaper;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Ljava/awt/font/NumericShaper;-><init>(II)V

    return-object v0
.end method

.method public static getContextualShaper(II)Ljava/awt/font/NumericShaper;
    .locals 2

    invoke-static {p1}, Ljava/awt/font/NumericShaper;->getKeyFromMask(I)I

    move-result v0

    const/high16 v1, -0x80000000

    or-int/2addr p0, v1

    new-instance v1, Ljava/awt/font/NumericShaper;

    invoke-direct {v1, v0, p0}, Ljava/awt/font/NumericShaper;-><init>(II)V

    return-object v1
.end method

.method public static getContextualShaper(Ljava/util/Set;)Ljava/awt/font/NumericShaper;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/awt/font/NumericShaper$Range;",
            ">;)",
            "Ljava/awt/font/NumericShaper;"
        }
    .end annotation

    new-instance v0, Ljava/awt/font/NumericShaper;

    sget-object v1, Ljava/awt/font/NumericShaper$Range;->EUROPEAN:Ljava/awt/font/NumericShaper$Range;

    invoke-direct {v0, v1, p0}, Ljava/awt/font/NumericShaper;-><init>(Ljava/awt/font/NumericShaper$Range;Ljava/util/Set;)V

    const/high16 v1, -0x80000000

    iput v1, v0, Ljava/awt/font/NumericShaper;->mask:I

    return-object v0
.end method

.method public static getContextualShaper(Ljava/util/Set;Ljava/awt/font/NumericShaper$Range;)Ljava/awt/font/NumericShaper;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/awt/font/NumericShaper$Range;",
            ">;",
            "Ljava/awt/font/NumericShaper$Range;",
            ")",
            "Ljava/awt/font/NumericShaper;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    :cond_0
    new-instance v0, Ljava/awt/font/NumericShaper;

    invoke-direct {v0, p1, p0}, Ljava/awt/font/NumericShaper;-><init>(Ljava/awt/font/NumericShaper$Range;Ljava/util/Set;)V

    const/high16 v1, -0x80000000

    iput v1, v0, Ljava/awt/font/NumericShaper;->mask:I

    return-object v0
.end method

.method private static getHighBit(I)I
    .locals 2

    if-gtz p0, :cond_0

    const/16 v1, -0x20

    return v1

    :cond_0
    const/4 v0, 0x0

    const/high16 v1, 0x10000

    if-lt p0, v1, :cond_1

    shr-int/lit8 p0, p0, 0x10

    const/16 v0, 0x10

    :cond_1
    const/16 v1, 0x100

    if-lt p0, v1, :cond_2

    shr-int/lit8 p0, p0, 0x8

    add-int/lit8 v0, v0, 0x8

    :cond_2
    const/16 v1, 0x10

    if-lt p0, v1, :cond_3

    shr-int/lit8 p0, p0, 0x4

    add-int/lit8 v0, v0, 0x4

    :cond_3
    const/4 v1, 0x4

    if-lt p0, v1, :cond_4

    shr-int/lit8 p0, p0, 0x2

    add-int/lit8 v0, v0, 0x2

    :cond_4
    const/4 v1, 0x2

    if-lt p0, v1, :cond_5

    add-int/lit8 v0, v0, 0x1

    :cond_5
    return v0
.end method

.method private static getKeyFromMask(I)I
    .locals 4

    const/16 v3, 0x13

    const/4 v2, 0x1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    shl-int v1, v2, v0

    and-int/2addr v1, p0

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-eq v0, v3, :cond_1

    shl-int v1, v2, v0

    not-int v1, v1

    and-int/2addr v1, p0

    if-eqz v1, :cond_2

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "invalid shaper: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    return v0
.end method

.method public static getShaper(I)Ljava/awt/font/NumericShaper;
    .locals 2

    invoke-static {p0}, Ljava/awt/font/NumericShaper;->getKeyFromMask(I)I

    move-result v0

    new-instance v1, Ljava/awt/font/NumericShaper;

    invoke-direct {v1, v0, p0}, Ljava/awt/font/NumericShaper;-><init>(II)V

    return-object v1
.end method

.method public static getShaper(Ljava/awt/font/NumericShaper$Range;)Ljava/awt/font/NumericShaper;
    .locals 2

    new-instance v0, Ljava/awt/font/NumericShaper;

    invoke-static {p0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/awt/font/NumericShaper;-><init>(Ljava/awt/font/NumericShaper$Range;Ljava/util/Set;)V

    return-object v0
.end method

.method private isStrongDirectional(C)Z
    .locals 5

    iget v0, p0, Ljava/awt/font/NumericShaper;->stCache:I

    sget-object v2, Ljava/awt/font/NumericShaper;->strongTable:[I

    aget v2, v2, v0

    if-ge p1, v2, :cond_1

    sget-object v2, Ljava/awt/font/NumericShaper;->strongTable:[I

    const/4 v3, 0x0

    invoke-static {p1, v2, v3, v0}, Ljava/awt/font/NumericShaper;->search(I[III)I

    move-result v0

    :cond_0
    :goto_0
    and-int/lit8 v2, v0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    const/4 v1, 0x1

    :goto_1
    iput v0, p0, Ljava/awt/font/NumericShaper;->stCache:I

    return v1

    :cond_1
    sget-object v2, Ljava/awt/font/NumericShaper;->strongTable:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    if-lt p1, v2, :cond_0

    sget-object v2, Ljava/awt/font/NumericShaper;->strongTable:[I

    add-int/lit8 v3, v0, 0x1

    sget-object v4, Ljava/awt/font/NumericShaper;->strongTable:[I

    array-length v4, v4

    sub-int/2addr v4, v0

    add-int/lit8 v4, v4, -0x1

    invoke-static {p1, v2, v3, v4}, Ljava/awt/font/NumericShaper;->search(I[III)I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private rangeForCodePoint(I)Ljava/awt/font/NumericShaper$Range;
    .locals 8

    iget-object v6, p0, Ljava/awt/font/NumericShaper;->currentRange:Ljava/awt/font/NumericShaper$Range;

    invoke-static {v6, p1}, Ljava/awt/font/NumericShaper$Range;->-wrap0(Ljava/awt/font/NumericShaper$Range;I)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Ljava/awt/font/NumericShaper;->currentRange:Ljava/awt/font/NumericShaper$Range;

    return-object v6

    :cond_0
    iget-object v5, p0, Ljava/awt/font/NumericShaper;->rangeArray:[Ljava/awt/font/NumericShaper$Range;

    array-length v6, v5

    const/4 v7, 0x3

    if-le v6, v7, :cond_3

    const/4 v2, 0x0

    array-length v6, v5

    add-int/lit8 v0, v6, -0x1

    :goto_0
    if-gt v2, v0, :cond_5

    add-int v6, v2, v0

    div-int/lit8 v3, v6, 0x2

    aget-object v4, v5, v3

    invoke-static {v4}, Ljava/awt/font/NumericShaper$Range;->-get2(Ljava/awt/font/NumericShaper$Range;)I

    move-result v6

    if-ge p1, v6, :cond_1

    add-int/lit8 v0, v3, -0x1

    goto :goto_0

    :cond_1
    invoke-static {v4}, Ljava/awt/font/NumericShaper$Range;->-get1(Ljava/awt/font/NumericShaper$Range;)I

    move-result v6

    if-lt p1, v6, :cond_2

    add-int/lit8 v2, v3, 0x1

    goto :goto_0

    :cond_2
    iput-object v4, p0, Ljava/awt/font/NumericShaper;->currentRange:Ljava/awt/font/NumericShaper$Range;

    return-object v4

    :cond_3
    const/4 v1, 0x0

    :goto_1
    array-length v6, v5

    if-ge v1, v6, :cond_5

    aget-object v6, v5, v1

    invoke-static {v6, p1}, Ljava/awt/font/NumericShaper$Range;->-wrap0(Ljava/awt/font/NumericShaper$Range;I)Z

    move-result v6

    if-eqz v6, :cond_4

    aget-object v6, v5, v1

    return-object v6

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    sget-object v6, Ljava/awt/font/NumericShaper$Range;->EUROPEAN:Ljava/awt/font/NumericShaper$Range;

    return-object v6
.end method

.method private static search(I[III)I
    .locals 6

    const/4 v5, 0x1

    invoke-static {p3}, Ljava/awt/font/NumericShaper;->getHighBit(I)I

    move-result v4

    shl-int v2, v5, v4

    sub-int v0, p3, v2

    move v3, v2

    move v1, p2

    add-int v4, p2, v0

    aget v4, p1, v4

    if-lt p0, v4, :cond_0

    add-int v1, p2, v0

    :cond_0
    :goto_0
    if-le v3, v5, :cond_1

    shr-int/lit8 v3, v3, 0x1

    add-int v4, v1, v3

    aget v4, p1, v4

    if-lt p0, v4, :cond_0

    add-int/2addr v1, v3

    goto :goto_0

    :cond_1
    return v1
.end method

.method private declared-synchronized shapeContextually([CIII)V
    .locals 10

    monitor-enter p0

    :try_start_0
    iget v7, p0, Ljava/awt/font/NumericShaper;->mask:I

    const/4 v8, 0x1

    shl-int/2addr v8, p4

    and-int/2addr v7, v8

    if-nez v7, :cond_0

    const/4 p4, 0x0

    :cond_0
    move v4, p4

    sget-object v7, Ljava/awt/font/NumericShaper;->bases:[C

    aget-char v0, v7, p4

    const/16 v7, 0x10

    if-ne p4, v7, :cond_5

    const/16 v5, 0x31

    :goto_0
    const-class v8, Ljava/awt/font/NumericShaper;

    monitor-enter v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move v3, p2

    add-int v2, p2, p3

    :goto_1
    if-ge v3, v2, :cond_a

    :try_start_1
    aget-char v1, p1, v3

    if-lt v1, v5, :cond_1

    const/16 v7, 0x39

    if-gt v1, v7, :cond_1

    add-int v7, v1, v0

    int-to-char v7, v7

    aput-char v7, p1, v3

    :cond_1
    invoke-direct {p0, v1}, Ljava/awt/font/NumericShaper;->isStrongDirectional(C)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {v1}, Ljava/awt/font/NumericShaper;->getContextKey(C)I

    move-result v6

    if-eq v6, v4, :cond_4

    move v4, v6

    move p4, v6

    iget v7, p0, Ljava/awt/font/NumericShaper;->mask:I

    and-int/lit8 v7, v7, 0x4

    if-eqz v7, :cond_6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_2

    const/4 v7, 0x2

    if-ne v6, v7, :cond_6

    :cond_2
    const/4 p4, 0x2

    :cond_3
    :goto_2
    sget-object v7, Ljava/awt/font/NumericShaper;->bases:[C

    aget-char v0, v7, p4

    const/16 v7, 0x10

    if-ne p4, v7, :cond_9

    const/16 v5, 0x31

    :cond_4
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    const/16 v5, 0x30

    goto :goto_0

    :cond_6
    iget v7, p0, Ljava/awt/font/NumericShaper;->mask:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_8

    const/4 v7, 0x1

    if-eq v6, v7, :cond_7

    const/4 v7, 0x2

    if-ne v6, v7, :cond_8

    :cond_7
    const/4 p4, 0x1

    goto :goto_2

    :cond_8
    iget v7, p0, Ljava/awt/font/NumericShaper;->mask:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v9, 0x1

    shl-int/2addr v9, v6

    and-int/2addr v7, v9

    if-nez v7, :cond_3

    const/4 p4, 0x0

    goto :goto_2

    :cond_9
    const/16 v5, 0x30

    goto :goto_3

    :cond_a
    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v7

    :try_start_3
    monitor-exit v8

    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method private shapeContextually([CIILjava/awt/font/NumericShaper$Range;)V
    .locals 7

    if-eqz p4, :cond_1

    iget-object v6, p0, Ljava/awt/font/NumericShaper;->rangeSet:Ljava/util/Set;

    invoke-interface {v6, p4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    :goto_0
    move-object v4, p4

    invoke-static {p4}, Ljava/awt/font/NumericShaper$Range;->-wrap1(Ljava/awt/font/NumericShaper$Range;)I

    move-result v0

    invoke-virtual {p4}, Ljava/awt/font/NumericShaper$Range;->getNumericBase()C

    move-result v6

    add-int/lit8 v6, v6, 0x30

    int-to-char v5, v6

    add-int v2, p2, p3

    move v3, p2

    :goto_1
    if-ge v3, v2, :cond_3

    aget-char v1, p1, v3

    if-lt v1, v5, :cond_2

    const/16 v6, 0x39

    if-gt v1, v6, :cond_2

    add-int v6, v1, v0

    int-to-char v6, v6

    aput-char v6, p1, v3

    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    sget-object p4, Ljava/awt/font/NumericShaper$Range;->EUROPEAN:Ljava/awt/font/NumericShaper$Range;

    goto :goto_0

    :cond_2
    invoke-direct {p0, v1}, Ljava/awt/font/NumericShaper;->isStrongDirectional(C)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-direct {p0, v1}, Ljava/awt/font/NumericShaper;->rangeForCodePoint(I)Ljava/awt/font/NumericShaper$Range;

    move-result-object p4

    if-eq p4, v4, :cond_0

    move-object v4, p4

    invoke-static {p4}, Ljava/awt/font/NumericShaper$Range;->-wrap1(Ljava/awt/font/NumericShaper$Range;)I

    move-result v0

    invoke-virtual {p4}, Ljava/awt/font/NumericShaper$Range;->getNumericBase()C

    move-result v6

    add-int/lit8 v6, v6, 0x30

    int-to-char v5, v6

    goto :goto_2

    :cond_3
    return-void
.end method

.method private shapeNonContextually([CII)V
    .locals 7

    const/16 v4, 0x30

    iget-object v5, p0, Ljava/awt/font/NumericShaper;->shapingRange:Ljava/awt/font/NumericShaper$Range;

    if-eqz v5, :cond_2

    iget-object v5, p0, Ljava/awt/font/NumericShaper;->shapingRange:Ljava/awt/font/NumericShaper$Range;

    invoke-static {v5}, Ljava/awt/font/NumericShaper$Range;->-wrap1(Ljava/awt/font/NumericShaper$Range;)I

    move-result v0

    iget-object v5, p0, Ljava/awt/font/NumericShaper;->shapingRange:Ljava/awt/font/NumericShaper$Range;

    invoke-virtual {v5}, Ljava/awt/font/NumericShaper$Range;->getNumericBase()C

    move-result v5

    add-int/lit8 v5, v5, 0x30

    int-to-char v4, v5

    :cond_0
    :goto_0
    move v3, p2

    add-int v2, p2, p3

    :goto_1
    if-ge v3, v2, :cond_3

    aget-char v1, p1, v3

    if-lt v1, v4, :cond_1

    const/16 v5, 0x39

    if-gt v1, v5, :cond_1

    add-int v5, v1, v0

    int-to-char v5, v5

    aput-char v5, p1, v3

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    sget-object v5, Ljava/awt/font/NumericShaper;->bases:[C

    iget v6, p0, Ljava/awt/font/NumericShaper;->key:I

    aget-char v0, v5, v6

    iget v5, p0, Ljava/awt/font/NumericShaper;->key:I

    const/16 v6, 0x10

    if-ne v5, v6, :cond_0

    const/16 v5, 0x31

    int-to-char v4, v5

    goto :goto_0

    :cond_3
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Ljava/awt/font/NumericShaper;->shapingRange:Ljava/awt/font/NumericShaper$Range;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljava/awt/font/NumericShaper;->shapingRange:Ljava/awt/font/NumericShaper$Range;

    invoke-static {v1}, Ljava/awt/font/NumericShaper$Range;->-wrap2(Ljava/awt/font/NumericShaper$Range;)I

    move-result v0

    if-ltz v0, :cond_0

    iput v0, p0, Ljava/awt/font/NumericShaper;->key:I

    :cond_0
    iget-object v1, p0, Ljava/awt/font/NumericShaper;->rangeSet:Ljava/util/Set;

    if-eqz v1, :cond_1

    iget v1, p0, Ljava/awt/font/NumericShaper;->mask:I

    iget-object v2, p0, Ljava/awt/font/NumericShaper;->rangeSet:Ljava/util/Set;

    invoke-static {v2}, Ljava/awt/font/NumericShaper$Range;->-wrap3(Ljava/util/Set;)I

    move-result v2

    or-int/2addr v1, v2

    iput v1, p0, Ljava/awt/font/NumericShaper;->mask:I

    :cond_1
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 9

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz p1, :cond_8

    :try_start_0
    move-object v0, p1

    check-cast v0, Ljava/awt/font/NumericShaper;

    move-object v2, v0

    iget-object v7, p0, Ljava/awt/font/NumericShaper;->rangeSet:Ljava/util/Set;

    if-eqz v7, :cond_4

    iget-object v7, v2, Ljava/awt/font/NumericShaper;->rangeSet:Ljava/util/Set;

    if-eqz v7, :cond_2

    invoke-virtual {p0}, Ljava/awt/font/NumericShaper;->isContextual()Z

    move-result v7

    invoke-virtual {v2}, Ljava/awt/font/NumericShaper;->isContextual()Z

    move-result v8

    if-ne v7, v8, :cond_1

    iget-object v7, p0, Ljava/awt/font/NumericShaper;->rangeSet:Ljava/util/Set;

    iget-object v8, v2, Ljava/awt/font/NumericShaper;->rangeSet:Ljava/util/Set;

    invoke-interface {v7, v8}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Ljava/awt/font/NumericShaper;->shapingRange:Ljava/awt/font/NumericShaper$Range;

    iget-object v8, v2, Ljava/awt/font/NumericShaper;->shapingRange:Ljava/awt/font/NumericShaper$Range;

    if-ne v7, v8, :cond_0

    :goto_0
    return v5

    :cond_0
    move v5, v6

    goto :goto_0

    :cond_1
    move v5, v6

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/awt/font/NumericShaper;->isContextual()Z

    move-result v7

    invoke-virtual {v2}, Ljava/awt/font/NumericShaper;->isContextual()Z

    move-result v8

    if-ne v7, v8, :cond_3

    iget-object v7, p0, Ljava/awt/font/NumericShaper;->rangeSet:Ljava/util/Set;

    iget v8, v2, Ljava/awt/font/NumericShaper;->mask:I

    invoke-static {v8}, Ljava/awt/font/NumericShaper$Range;->-wrap5(I)Ljava/util/Set;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Ljava/awt/font/NumericShaper;->shapingRange:Ljava/awt/font/NumericShaper$Range;

    iget v8, v2, Ljava/awt/font/NumericShaper;->key:I

    invoke-static {v8}, Ljava/awt/font/NumericShaper$Range;->-wrap4(I)Ljava/awt/font/NumericShaper$Range;

    move-result-object v8

    if-ne v7, v8, :cond_3

    move v6, v5

    :cond_3
    return v6

    :cond_4
    iget-object v7, v2, Ljava/awt/font/NumericShaper;->rangeSet:Ljava/util/Set;

    if-eqz v7, :cond_6

    iget v7, p0, Ljava/awt/font/NumericShaper;->mask:I

    invoke-static {v7}, Ljava/awt/font/NumericShaper$Range;->-wrap5(I)Ljava/util/Set;

    move-result-object v3

    iget v7, p0, Ljava/awt/font/NumericShaper;->key:I

    invoke-static {v7}, Ljava/awt/font/NumericShaper$Range;->-wrap4(I)Ljava/awt/font/NumericShaper$Range;

    move-result-object v4

    invoke-virtual {p0}, Ljava/awt/font/NumericShaper;->isContextual()Z

    move-result v7

    invoke-virtual {v2}, Ljava/awt/font/NumericShaper;->isContextual()Z

    move-result v8

    if-ne v7, v8, :cond_5

    iget-object v7, v2, Ljava/awt/font/NumericShaper;->rangeSet:Ljava/util/Set;

    invoke-interface {v3, v7}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, v2, Ljava/awt/font/NumericShaper;->shapingRange:Ljava/awt/font/NumericShaper$Range;

    if-ne v4, v7, :cond_5

    move v6, v5

    :cond_5
    return v6

    :cond_6
    iget v7, v2, Ljava/awt/font/NumericShaper;->mask:I

    iget v8, p0, Ljava/awt/font/NumericShaper;->mask:I

    if-ne v7, v8, :cond_7

    iget v7, v2, Ljava/awt/font/NumericShaper;->key:I

    iget v8, p0, Ljava/awt/font/NumericShaper;->key:I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v7, v8, :cond_7

    move v6, v5

    :cond_7
    return v6

    :catch_0
    move-exception v1

    :cond_8
    return v6
.end method

.method public getRangeSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/awt/font/NumericShaper$Range;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ljava/awt/font/NumericShaper;->rangeSet:Ljava/util/Set;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/awt/font/NumericShaper;->rangeSet:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0

    :cond_0
    iget v0, p0, Ljava/awt/font/NumericShaper;->mask:I

    invoke-static {v0}, Ljava/awt/font/NumericShaper$Range;->-wrap5(I)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getRanges()I
    .locals 2

    iget v0, p0, Ljava/awt/font/NumericShaper;->mask:I

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Ljava/awt/font/NumericShaper;->mask:I

    iget-object v1, p0, Ljava/awt/font/NumericShaper;->rangeSet:Ljava/util/Set;

    if-eqz v1, :cond_0

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    iget-object v1, p0, Ljava/awt/font/NumericShaper;->rangeSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public isContextual()Z
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Ljava/awt/font/NumericShaper;->mask:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public shape([CII)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Ljava/awt/font/NumericShaper;->checkParams([CII)V

    invoke-virtual {p0}, Ljava/awt/font/NumericShaper;->isContextual()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljava/awt/font/NumericShaper;->rangeSet:Ljava/util/Set;

    if-nez v0, :cond_0

    iget v0, p0, Ljava/awt/font/NumericShaper;->key:I

    invoke-direct {p0, p1, p2, p3, v0}, Ljava/awt/font/NumericShaper;->shapeContextually([CIII)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Ljava/awt/font/NumericShaper;->shapingRange:Ljava/awt/font/NumericShaper$Range;

    invoke-direct {p0, p1, p2, p3, v0}, Ljava/awt/font/NumericShaper;->shapeContextually([CIILjava/awt/font/NumericShaper$Range;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Ljava/awt/font/NumericShaper;->shapeNonContextually([CII)V

    goto :goto_0
.end method

.method public shape([CIII)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Ljava/awt/font/NumericShaper;->checkParams([CII)V

    invoke-virtual {p0}, Ljava/awt/font/NumericShaper;->isContextual()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p4}, Ljava/awt/font/NumericShaper;->getKeyFromMask(I)I

    move-result v0

    iget-object v1, p0, Ljava/awt/font/NumericShaper;->rangeSet:Ljava/util/Set;

    if-nez v1, :cond_0

    invoke-direct {p0, p1, p2, p3, v0}, Ljava/awt/font/NumericShaper;->shapeContextually([CIII)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Ljava/awt/font/NumericShaper$Range;->values()[Ljava/awt/font/NumericShaper$Range;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-direct {p0, p1, p2, p3, v1}, Ljava/awt/font/NumericShaper;->shapeContextually([CIILjava/awt/font/NumericShaper$Range;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Ljava/awt/font/NumericShaper;->shapeNonContextually([CII)V

    goto :goto_0
.end method

.method public shape([CIILjava/awt/font/NumericShaper$Range;)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Ljava/awt/font/NumericShaper;->checkParams([CII)V

    if-nez p4, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "context is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {p0}, Ljava/awt/font/NumericShaper;->isContextual()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Ljava/awt/font/NumericShaper;->rangeSet:Ljava/util/Set;

    if-eqz v1, :cond_1

    invoke-direct {p0, p1, p2, p3, p4}, Ljava/awt/font/NumericShaper;->shapeContextually([CIILjava/awt/font/NumericShaper$Range;)V

    :goto_0
    return-void

    :cond_1
    invoke-static {p4}, Ljava/awt/font/NumericShaper$Range;->-wrap2(Ljava/awt/font/NumericShaper$Range;)I

    move-result v0

    if-ltz v0, :cond_2

    invoke-direct {p0, p1, p2, p3, v0}, Ljava/awt/font/NumericShaper;->shapeContextually([CIII)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Ljava/awt/font/NumericShaper;->shapingRange:Ljava/awt/font/NumericShaper$Range;

    invoke-direct {p0, p1, p2, p3, v1}, Ljava/awt/font/NumericShaper;->shapeContextually([CIILjava/awt/font/NumericShaper$Range;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1, p2, p3}, Ljava/awt/font/NumericShaper;->shapeNonContextually([CII)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "[contextual:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/awt/font/NumericShaper;->isContextual()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/awt/font/NumericShaper;->isContextual()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, ", context:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Ljava/awt/font/NumericShaper;->shapingRange:Ljava/awt/font/NumericShaper$Range;

    if-nez v4, :cond_2

    invoke-static {}, Ljava/awt/font/NumericShaper$Range;->values()[Ljava/awt/font/NumericShaper$Range;

    move-result-object v4

    iget v5, p0, Ljava/awt/font/NumericShaper;->key:I

    aget-object v4, v4, v5

    :goto_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v4, p0, Ljava/awt/font/NumericShaper;->rangeSet:Ljava/util/Set;

    if-nez v4, :cond_4

    const-string/jumbo v4, ", range(s): "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_1
    const/16 v4, 0x13

    if-ge v2, v4, :cond_5

    iget v4, p0, Ljava/awt/font/NumericShaper;->mask:I

    const/4 v5, 0x1

    shl-int/2addr v5, v2

    and-int/2addr v4, v5

    if-eqz v4, :cond_1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    :goto_2
    invoke-static {}, Ljava/awt/font/NumericShaper$Range;->values()[Ljava/awt/font/NumericShaper$Range;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    iget-object v4, p0, Ljava/awt/font/NumericShaper;->shapingRange:Ljava/awt/font/NumericShaper$Range;

    goto :goto_0

    :cond_3
    const-string/jumbo v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    const-string/jumbo v4, ", range set: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Ljava/awt/font/NumericShaper;->rangeSet:Ljava/util/Set;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_5
    const/16 v4, 0x5d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
