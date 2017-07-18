.class public Lsun/net/RegisteredDomain;
.super Ljava/lang/Object;
.source "RegisteredDomain.java"


# static fields
.field private static arSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static jp2Set:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static jpSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static omSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static top1Set:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static top2Set:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static top3Map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set;",
            ">;"
        }
    .end annotation
.end field

.field private static top3Set:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static top4Set:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static top5Set:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static topMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set;",
            ">;"
        }
    .end annotation
.end field

.field private static ukSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static usStateSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static usSubStateSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x4a

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "asia"

    aput-object v2, v1, v6

    const-string/jumbo v2, "biz"

    aput-object v2, v1, v7

    const-string/jumbo v2, "cat"

    aput-object v2, v1, v8

    const-string/jumbo v2, "coop"

    aput-object v2, v1, v9

    const-string/jumbo v2, "edu"

    aput-object v2, v1, v10

    const-string/jumbo v2, "info"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const-string/jumbo v2, "gov"

    const/4 v3, 0x6

    aput-object v2, v1, v3

    const-string/jumbo v2, "jobs"

    const/4 v3, 0x7

    aput-object v2, v1, v3

    const-string/jumbo v2, "travel"

    const/16 v3, 0x8

    aput-object v2, v1, v3

    const-string/jumbo v2, "am"

    const/16 v3, 0x9

    aput-object v2, v1, v3

    const-string/jumbo v2, "aq"

    const/16 v3, 0xa

    aput-object v2, v1, v3

    const-string/jumbo v2, "ax"

    const/16 v3, 0xb

    aput-object v2, v1, v3

    const-string/jumbo v2, "cc"

    const/16 v3, 0xc

    aput-object v2, v1, v3

    const-string/jumbo v2, "cf"

    const/16 v3, 0xd

    aput-object v2, v1, v3

    const-string/jumbo v2, "cg"

    const/16 v3, 0xe

    aput-object v2, v1, v3

    const-string/jumbo v2, "ch"

    const/16 v3, 0xf

    aput-object v2, v1, v3

    const-string/jumbo v2, "cv"

    const/16 v3, 0x10

    aput-object v2, v1, v3

    const-string/jumbo v2, "cz"

    const/16 v3, 0x11

    aput-object v2, v1, v3

    const-string/jumbo v2, "de"

    const/16 v3, 0x12

    aput-object v2, v1, v3

    const-string/jumbo v2, "dj"

    const/16 v3, 0x13

    aput-object v2, v1, v3

    const-string/jumbo v2, "dk"

    const/16 v3, 0x14

    aput-object v2, v1, v3

    const-string/jumbo v2, "fm"

    const/16 v3, 0x15

    aput-object v2, v1, v3

    const-string/jumbo v2, "fo"

    const/16 v3, 0x16

    aput-object v2, v1, v3

    const-string/jumbo v2, "ga"

    const/16 v3, 0x17

    aput-object v2, v1, v3

    const-string/jumbo v2, "gd"

    const/16 v3, 0x18

    aput-object v2, v1, v3

    const-string/jumbo v2, "gf"

    const/16 v3, 0x19

    aput-object v2, v1, v3

    const-string/jumbo v2, "gl"

    const/16 v3, 0x1a

    aput-object v2, v1, v3

    const-string/jumbo v2, "gm"

    const/16 v3, 0x1b

    aput-object v2, v1, v3

    const-string/jumbo v2, "gq"

    const/16 v3, 0x1c

    aput-object v2, v1, v3

    const-string/jumbo v2, "gs"

    const/16 v3, 0x1d

    aput-object v2, v1, v3

    const-string/jumbo v2, "gw"

    const/16 v3, 0x1e

    aput-object v2, v1, v3

    const-string/jumbo v2, "hm"

    const/16 v3, 0x1f

    aput-object v2, v1, v3

    const-string/jumbo v2, "li"

    const/16 v3, 0x20

    aput-object v2, v1, v3

    const-string/jumbo v2, "lu"

    const/16 v3, 0x21

    aput-object v2, v1, v3

    const-string/jumbo v2, "md"

    const/16 v3, 0x22

    aput-object v2, v1, v3

    const-string/jumbo v2, "mh"

    const/16 v3, 0x23

    aput-object v2, v1, v3

    const-string/jumbo v2, "mil"

    const/16 v3, 0x24

    aput-object v2, v1, v3

    const-string/jumbo v2, "mobi"

    const/16 v3, 0x25

    aput-object v2, v1, v3

    const-string/jumbo v2, "mq"

    const/16 v3, 0x26

    aput-object v2, v1, v3

    const-string/jumbo v2, "ms"

    const/16 v3, 0x27

    aput-object v2, v1, v3

    const-string/jumbo v2, "ms"

    const/16 v3, 0x28

    aput-object v2, v1, v3

    const-string/jumbo v2, "ne"

    const/16 v3, 0x29

    aput-object v2, v1, v3

    const-string/jumbo v2, "nl"

    const/16 v3, 0x2a

    aput-object v2, v1, v3

    const-string/jumbo v2, "nu"

    const/16 v3, 0x2b

    aput-object v2, v1, v3

    const-string/jumbo v2, "si"

    const/16 v3, 0x2c

    aput-object v2, v1, v3

    const-string/jumbo v2, "sm"

    const/16 v3, 0x2d

    aput-object v2, v1, v3

    const-string/jumbo v2, "sr"

    const/16 v3, 0x2e

    aput-object v2, v1, v3

    const-string/jumbo v2, "su"

    const/16 v3, 0x2f

    aput-object v2, v1, v3

    const-string/jumbo v2, "tc"

    const/16 v3, 0x30

    aput-object v2, v1, v3

    const-string/jumbo v2, "td"

    const/16 v3, 0x31

    aput-object v2, v1, v3

    const-string/jumbo v2, "tf"

    const/16 v3, 0x32

    aput-object v2, v1, v3

    const-string/jumbo v2, "tg"

    const/16 v3, 0x33

    aput-object v2, v1, v3

    const-string/jumbo v2, "tk"

    const/16 v3, 0x34

    aput-object v2, v1, v3

    const-string/jumbo v2, "tm"

    const/16 v3, 0x35

    aput-object v2, v1, v3

    const-string/jumbo v2, "tv"

    const/16 v3, 0x36

    aput-object v2, v1, v3

    const-string/jumbo v2, "va"

    const/16 v3, 0x37

    aput-object v2, v1, v3

    const-string/jumbo v2, "vg"

    const/16 v3, 0x38

    aput-object v2, v1, v3

    const-string/jumbo v2, "xn--mgbaam7a8h"

    const/16 v3, 0x39

    aput-object v2, v1, v3

    const-string/jumbo v2, "xn--fiqs8s"

    const/16 v3, 0x3a

    aput-object v2, v1, v3

    const-string/jumbo v2, "xn--fiqz9s"

    const/16 v3, 0x3b

    aput-object v2, v1, v3

    const-string/jumbo v2, "xn--wgbh1c"

    const/16 v3, 0x3c

    aput-object v2, v1, v3

    const-string/jumbo v2, "xn--j6w193g"

    const/16 v3, 0x3d

    aput-object v2, v1, v3

    const-string/jumbo v2, "xn--mgbayh7gpa"

    const/16 v3, 0x3e

    aput-object v2, v1, v3

    const-string/jumbo v2, "xn--fzc2c9e2c"

    const/16 v3, 0x3f

    aput-object v2, v1, v3

    const-string/jumbo v2, "xn--ygbi2ammx"

    const/16 v3, 0x40

    aput-object v2, v1, v3

    const-string/jumbo v2, "xn--p1ai"

    const/16 v3, 0x41

    aput-object v2, v1, v3

    const-string/jumbo v2, "xn--wgbl6a"

    const/16 v3, 0x42

    aput-object v2, v1, v3

    const-string/jumbo v2, "xn--mgberp4a5d4ar"

    const/16 v3, 0x43

    aput-object v2, v1, v3

    const-string/jumbo v2, "xn--yfro4i67o"

    const/16 v3, 0x44

    aput-object v2, v1, v3

    const-string/jumbo v2, "xn--o3cw4h"

    const/16 v3, 0x45

    aput-object v2, v1, v3

    const-string/jumbo v2, "xn--pgbs0dh"

    const/16 v3, 0x46

    aput-object v2, v1, v3

    const-string/jumbo v2, "xn--kpry57d"

    const/16 v3, 0x47

    aput-object v2, v1, v3

    const-string/jumbo v2, "xn--kprw13d"

    const/16 v3, 0x48

    aput-object v2, v1, v3

    const-string/jumbo v2, "xn--clchc0ea0b2g2a9gcd"

    const/16 v3, 0x49

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lsun/net/RegisteredDomain;->top1Set:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "as"

    aput-object v2, v1, v6

    const-string/jumbo v2, "bf"

    aput-object v2, v1, v7

    const-string/jumbo v2, "cd"

    aput-object v2, v1, v8

    const-string/jumbo v2, "cx"

    aput-object v2, v1, v9

    const-string/jumbo v2, "ie"

    aput-object v2, v1, v10

    const-string/jumbo v2, "lt"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const-string/jumbo v2, "mr"

    const/4 v3, 0x6

    aput-object v2, v1, v3

    const-string/jumbo v2, "tl"

    const/4 v3, 0x7

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lsun/net/RegisteredDomain;->top2Set:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0xd

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "af"

    aput-object v2, v1, v6

    const-string/jumbo v2, "bm"

    aput-object v2, v1, v7

    const-string/jumbo v2, "bs"

    aput-object v2, v1, v8

    const-string/jumbo v2, "bt"

    aput-object v2, v1, v9

    const-string/jumbo v2, "bz"

    aput-object v2, v1, v10

    const-string/jumbo v2, "dm"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const-string/jumbo v2, "ky"

    const/4 v3, 0x6

    aput-object v2, v1, v3

    const-string/jumbo v2, "lb"

    const/4 v3, 0x7

    aput-object v2, v1, v3

    const-string/jumbo v2, "lr"

    const/16 v3, 0x8

    aput-object v2, v1, v3

    const-string/jumbo v2, "mo"

    const/16 v3, 0x9

    aput-object v2, v1, v3

    const-string/jumbo v2, "sc"

    const/16 v3, 0xa

    aput-object v2, v1, v3

    const-string/jumbo v2, "sl"

    const/16 v3, 0xb

    aput-object v2, v1, v3

    const-string/jumbo v2, "ws"

    const/16 v3, 0xc

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lsun/net/RegisteredDomain;->top4Set:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "ad"

    aput-object v2, v1, v6

    const-string/jumbo v2, "aw"

    aput-object v2, v1, v7

    const-string/jumbo v2, "be"

    aput-object v2, v1, v8

    const-string/jumbo v2, "bw"

    aput-object v2, v1, v9

    const-string/jumbo v2, "cl"

    aput-object v2, v1, v10

    const-string/jumbo v2, "fi"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const-string/jumbo v2, "int"

    const/4 v3, 0x6

    aput-object v2, v1, v3

    const-string/jumbo v2, "io"

    const/4 v3, 0x7

    aput-object v2, v1, v3

    const-string/jumbo v2, "mc"

    const/16 v3, 0x8

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lsun/net/RegisteredDomain;->top3Set:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "bl"

    aput-object v2, v1, v6

    const-string/jumbo v2, "british-library"

    aput-object v2, v1, v7

    const-string/jumbo v2, "jet"

    aput-object v2, v1, v8

    const-string/jumbo v2, "nhs"

    aput-object v2, v1, v9

    const-string/jumbo v2, "nls"

    aput-object v2, v1, v10

    const-string/jumbo v2, "parliament"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const-string/jumbo v2, "mod"

    const/4 v3, 0x6

    aput-object v2, v1, v3

    const-string/jumbo v2, "police"

    const/4 v3, 0x7

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lsun/net/RegisteredDomain;->ukSet:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "argentina"

    aput-object v2, v1, v6

    const-string/jumbo v2, "educ"

    aput-object v2, v1, v7

    const-string/jumbo v2, "gobiernoelectronico"

    aput-object v2, v1, v8

    const-string/jumbo v2, "nic"

    aput-object v2, v1, v9

    const-string/jumbo v2, "promocion"

    aput-object v2, v1, v10

    const-string/jumbo v2, "retina"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const-string/jumbo v2, "uba"

    const/4 v3, 0x6

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lsun/net/RegisteredDomain;->arSet:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x12

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "mediaphone"

    aput-object v2, v1, v6

    const-string/jumbo v2, "nawrastelecom"

    aput-object v2, v1, v7

    const-string/jumbo v2, "nawras"

    aput-object v2, v1, v8

    const-string/jumbo v2, "omanmobile"

    aput-object v2, v1, v9

    const-string/jumbo v2, "omanpost"

    aput-object v2, v1, v10

    const-string/jumbo v2, "omantel"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const-string/jumbo v2, "rakpetroleum"

    const/4 v3, 0x6

    aput-object v2, v1, v3

    const-string/jumbo v2, "siemens"

    const/4 v3, 0x7

    aput-object v2, v1, v3

    const-string/jumbo v2, "songfest"

    const/16 v3, 0x8

    aput-object v2, v1, v3

    const-string/jumbo v2, "statecouncil"

    const/16 v3, 0x9

    aput-object v2, v1, v3

    const-string/jumbo v2, "shura"

    const/16 v3, 0xa

    aput-object v2, v1, v3

    const-string/jumbo v2, "peie"

    const/16 v3, 0xb

    aput-object v2, v1, v3

    const-string/jumbo v2, "omran"

    const/16 v3, 0xc

    aput-object v2, v1, v3

    const-string/jumbo v2, "omnic"

    const/16 v3, 0xd

    aput-object v2, v1, v3

    const-string/jumbo v2, "omanet"

    const/16 v3, 0xe

    aput-object v2, v1, v3

    const-string/jumbo v2, "oman"

    const/16 v3, 0xf

    aput-object v2, v1, v3

    const-string/jumbo v2, "muriya"

    const/16 v3, 0x10

    aput-object v2, v1, v3

    const-string/jumbo v2, "kom"

    const/16 v3, 0x11

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lsun/net/RegisteredDomain;->omSet:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x21

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "au"

    aput-object v2, v1, v6

    const-string/jumbo v2, "arpa"

    aput-object v2, v1, v7

    const-string/jumbo v2, "bd"

    aput-object v2, v1, v8

    const-string/jumbo v2, "bn"

    aput-object v2, v1, v9

    const-string/jumbo v2, "ck"

    aput-object v2, v1, v10

    const-string/jumbo v2, "cy"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const-string/jumbo v2, "er"

    const/4 v3, 0x6

    aput-object v2, v1, v3

    const-string/jumbo v2, "et"

    const/4 v3, 0x7

    aput-object v2, v1, v3

    const-string/jumbo v2, "fj"

    const/16 v3, 0x8

    aput-object v2, v1, v3

    const-string/jumbo v2, "fk"

    const/16 v3, 0x9

    aput-object v2, v1, v3

    const-string/jumbo v2, "gt"

    const/16 v3, 0xa

    aput-object v2, v1, v3

    const-string/jumbo v2, "gu"

    const/16 v3, 0xb

    aput-object v2, v1, v3

    const-string/jumbo v2, "il"

    const/16 v3, 0xc

    aput-object v2, v1, v3

    const-string/jumbo v2, "jm"

    const/16 v3, 0xd

    aput-object v2, v1, v3

    const-string/jumbo v2, "ke"

    const/16 v3, 0xe

    aput-object v2, v1, v3

    const-string/jumbo v2, "kh"

    const/16 v3, 0xf

    aput-object v2, v1, v3

    const-string/jumbo v2, "kw"

    const/16 v3, 0x10

    aput-object v2, v1, v3

    const-string/jumbo v2, "mm"

    const/16 v3, 0x11

    aput-object v2, v1, v3

    const-string/jumbo v2, "mt"

    const/16 v3, 0x12

    aput-object v2, v1, v3

    const-string/jumbo v2, "mz"

    const/16 v3, 0x13

    aput-object v2, v1, v3

    const-string/jumbo v2, "ni"

    const/16 v3, 0x14

    aput-object v2, v1, v3

    const-string/jumbo v2, "np"

    const/16 v3, 0x15

    aput-object v2, v1, v3

    const-string/jumbo v2, "nz"

    const/16 v3, 0x16

    aput-object v2, v1, v3

    const-string/jumbo v2, "pg"

    const/16 v3, 0x17

    aput-object v2, v1, v3

    const-string/jumbo v2, "sb"

    const/16 v3, 0x18

    aput-object v2, v1, v3

    const-string/jumbo v2, "sv"

    const/16 v3, 0x19

    aput-object v2, v1, v3

    const-string/jumbo v2, "tz"

    const/16 v3, 0x1a

    aput-object v2, v1, v3

    const-string/jumbo v2, "uy"

    const/16 v3, 0x1b

    aput-object v2, v1, v3

    const-string/jumbo v2, "ve"

    const/16 v3, 0x1c

    aput-object v2, v1, v3

    const-string/jumbo v2, "ye"

    const/16 v3, 0x1d

    aput-object v2, v1, v3

    const-string/jumbo v2, "za"

    const/16 v3, 0x1e

    aput-object v2, v1, v3

    const-string/jumbo v2, "zm"

    const/16 v3, 0x1f

    aput-object v2, v1, v3

    const-string/jumbo v2, "zw"

    const/16 v3, 0x20

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lsun/net/RegisteredDomain;->top5Set:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x36

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "aichi"

    aput-object v2, v1, v6

    const-string/jumbo v2, "akita"

    aput-object v2, v1, v7

    const-string/jumbo v2, "aomori"

    aput-object v2, v1, v8

    const-string/jumbo v2, "chiba"

    aput-object v2, v1, v9

    const-string/jumbo v2, "ehime"

    aput-object v2, v1, v10

    const-string/jumbo v2, "fukui"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const-string/jumbo v2, "fukuoka"

    const/4 v3, 0x6

    aput-object v2, v1, v3

    const-string/jumbo v2, "fukushima"

    const/4 v3, 0x7

    aput-object v2, v1, v3

    const-string/jumbo v2, "gifu"

    const/16 v3, 0x8

    aput-object v2, v1, v3

    const-string/jumbo v2, "gunma"

    const/16 v3, 0x9

    aput-object v2, v1, v3

    const-string/jumbo v2, "hiroshima"

    const/16 v3, 0xa

    aput-object v2, v1, v3

    const-string/jumbo v2, "hokkaido"

    const/16 v3, 0xb

    aput-object v2, v1, v3

    const-string/jumbo v2, "hyogo"

    const/16 v3, 0xc

    aput-object v2, v1, v3

    const-string/jumbo v2, "ibaraki"

    const/16 v3, 0xd

    aput-object v2, v1, v3

    const-string/jumbo v2, "ishikawa"

    const/16 v3, 0xe

    aput-object v2, v1, v3

    const-string/jumbo v2, "iwate"

    const/16 v3, 0xf

    aput-object v2, v1, v3

    const-string/jumbo v2, "kagawa"

    const/16 v3, 0x10

    aput-object v2, v1, v3

    const-string/jumbo v2, "kagoshima"

    const/16 v3, 0x11

    aput-object v2, v1, v3

    const-string/jumbo v2, "kanagawa"

    const/16 v3, 0x12

    aput-object v2, v1, v3

    const-string/jumbo v2, "kawasaki"

    const/16 v3, 0x13

    aput-object v2, v1, v3

    const-string/jumbo v2, "kitakyushu"

    const/16 v3, 0x14

    aput-object v2, v1, v3

    const-string/jumbo v2, "kobe"

    const/16 v3, 0x15

    aput-object v2, v1, v3

    const-string/jumbo v2, "kochi"

    const/16 v3, 0x16

    aput-object v2, v1, v3

    const-string/jumbo v2, "kumamoto"

    const/16 v3, 0x17

    aput-object v2, v1, v3

    const-string/jumbo v2, "kyoto"

    const/16 v3, 0x18

    aput-object v2, v1, v3

    const-string/jumbo v2, "mie"

    const/16 v3, 0x19

    aput-object v2, v1, v3

    const-string/jumbo v2, "miyagi"

    const/16 v3, 0x1a

    aput-object v2, v1, v3

    const-string/jumbo v2, "miyazaki"

    const/16 v3, 0x1b

    aput-object v2, v1, v3

    const-string/jumbo v2, "nagano"

    const/16 v3, 0x1c

    aput-object v2, v1, v3

    const-string/jumbo v2, "nagasaki"

    const/16 v3, 0x1d

    aput-object v2, v1, v3

    const-string/jumbo v2, "nagoya"

    const/16 v3, 0x1e

    aput-object v2, v1, v3

    const-string/jumbo v2, "nara"

    const/16 v3, 0x1f

    aput-object v2, v1, v3

    const-string/jumbo v2, "niigata"

    const/16 v3, 0x20

    aput-object v2, v1, v3

    const-string/jumbo v2, "oita"

    const/16 v3, 0x21

    aput-object v2, v1, v3

    const-string/jumbo v2, "okayama"

    const/16 v3, 0x22

    aput-object v2, v1, v3

    const-string/jumbo v2, "okinawa"

    const/16 v3, 0x23

    aput-object v2, v1, v3

    const-string/jumbo v2, "osaka"

    const/16 v3, 0x24

    aput-object v2, v1, v3

    const-string/jumbo v2, "saga"

    const/16 v3, 0x25

    aput-object v2, v1, v3

    const-string/jumbo v2, "saitama"

    const/16 v3, 0x26

    aput-object v2, v1, v3

    const-string/jumbo v2, "sapporo"

    const/16 v3, 0x27

    aput-object v2, v1, v3

    const-string/jumbo v2, "sendai"

    const/16 v3, 0x28

    aput-object v2, v1, v3

    const-string/jumbo v2, "shiga"

    const/16 v3, 0x29

    aput-object v2, v1, v3

    const-string/jumbo v2, "shimane"

    const/16 v3, 0x2a

    aput-object v2, v1, v3

    const-string/jumbo v2, "shizuoka"

    const/16 v3, 0x2b

    aput-object v2, v1, v3

    const-string/jumbo v2, "tochigi"

    const/16 v3, 0x2c

    aput-object v2, v1, v3

    const-string/jumbo v2, "tokushima"

    const/16 v3, 0x2d

    aput-object v2, v1, v3

    const-string/jumbo v2, "tokyo"

    const/16 v3, 0x2e

    aput-object v2, v1, v3

    const-string/jumbo v2, "tottori"

    const/16 v3, 0x2f

    aput-object v2, v1, v3

    const-string/jumbo v2, "toyama"

    const/16 v3, 0x30

    aput-object v2, v1, v3

    const-string/jumbo v2, "wakayama"

    const/16 v3, 0x31

    aput-object v2, v1, v3

    const-string/jumbo v2, "yamagata"

    const/16 v3, 0x32

    aput-object v2, v1, v3

    const-string/jumbo v2, "yamaguchi"

    const/16 v3, 0x33

    aput-object v2, v1, v3

    const-string/jumbo v2, "yamanashi"

    const/16 v3, 0x34

    aput-object v2, v1, v3

    const-string/jumbo v2, "yokohama"

    const/16 v3, 0x35

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lsun/net/RegisteredDomain;->jpSet:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x41

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "metro.tokyo.jp"

    aput-object v2, v1, v6

    const-string/jumbo v2, "pref.aichi.jp"

    aput-object v2, v1, v7

    const-string/jumbo v2, "pref.akita.jp"

    aput-object v2, v1, v8

    const-string/jumbo v2, "pref.aomori.jp"

    aput-object v2, v1, v9

    const-string/jumbo v2, "pref.chiba.jp"

    aput-object v2, v1, v10

    const-string/jumbo v2, "pref.ehime.jp"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const-string/jumbo v2, "pref.fukui.jp"

    const/4 v3, 0x6

    aput-object v2, v1, v3

    const-string/jumbo v2, "pref.fukuoka.jp"

    const/4 v3, 0x7

    aput-object v2, v1, v3

    const-string/jumbo v2, "pref.fukushima.jp"

    const/16 v3, 0x8

    aput-object v2, v1, v3

    const-string/jumbo v2, "pref.gifu.jp"

    const/16 v3, 0x9

    aput-object v2, v1, v3

    const-string/jumbo v2, "pref.gunma.jp"

    const/16 v3, 0xa

    aput-object v2, v1, v3

    const-string/jumbo v2, "pref.hiroshima.jp"

    const/16 v3, 0xb

    aput-object v2, v1, v3

    const-string/jumbo v2, "pref.hokkaido.jp"

    const/16 v3, 0xc

    aput-object v2, v1, v3

    const-string/jumbo v2, "pref.hyogo.jp"

    const/16 v3, 0xd

    aput-object v2, v1, v3

    const-string/jumbo v2, "pref.ibaraki.jp"

    const/16 v3, 0xe

    aput-object v2, v1, v3

    const-string/jumbo v2, "pref.ishikawa.jp"

    const/16 v3, 0xf

    aput-object v2, v1, v3

    const-string/jumbo v2, "pref.iwate.jp"

    const/16 v3, 0x10

    aput-object v2, v1, v3

    const-string/jumbo v2, "pref.kagawa.jp"

    const/16 v3, 0x11

    aput-object v2, v1, v3

    const-string/jumbo v2, "pref.kagoshima.jp"

    const/16 v3, 0x12

    aput-object v2, v1, v3

    const-string/jumbo v2, "pref.kanagawa.jp"

    const/16 v3, 0x13

    aput-object v2, v1, v3

    const-string/jumbo v2, "pref.kochi.jp"

    const/16 v3, 0x14

    aput-object v2, v1, v3

    const-string/jumbo v2, "pref.kumamoto.jp"

    const/16 v3, 0x15

    aput-object v2, v1, v3

    const-string/jumbo v2, "pref.kyoto.jp"

    const/16 v3, 0x16

    aput-object v2, v1, v3

    const-string/jumbo v2, "pref.mie.jp"

    const/16 v3, 0x17

    aput-object v2, v1, v3

    const-string/jumbo v2, "pref.miyagi.jp"

    const/16 v3, 0x18

    aput-object v2, v1, v3

    const-string/jumbo v2, "pref.miyazaki.jp"

    const/16 v3, 0x19

    aput-object v2, v1, v3

    const-string/jumbo v2, "pref.nagano.jp"

    const/16 v3, 0x1a

    aput-object v2, v1, v3

    const-string/jumbo v2, "pref.nagasaki.jp"

    const/16 v3, 0x1b

    aput-object v2, v1, v3

    const-string/jumbo v2, "pref.nara.jp"

    const/16 v3, 0x1c

    aput-object v2, v1, v3

    const-string/jumbo v2, "pref.niigata.jp"

    const/16 v3, 0x1d

    aput-object v2, v1, v3

    const-string/jumbo v2, "pref.oita.jp"

    const/16 v3, 0x1e

    aput-object v2, v1, v3

    const-string/jumbo v2, "pref.okayama.jp"

    const/16 v3, 0x1f

    aput-object v2, v1, v3

    const-string/jumbo v2, "pref.okinawa.jp"

    const/16 v3, 0x20

    aput-object v2, v1, v3

    const-string/jumbo v2, "pref.osaka.jp"

    const/16 v3, 0x21

    aput-object v2, v1, v3

    const-string/jumbo v2, "pref.saga.jp"

    const/16 v3, 0x22

    aput-object v2, v1, v3

    const-string/jumbo v2, "pref.saitama.jp"

    const/16 v3, 0x23

    aput-object v2, v1, v3

    const-string/jumbo v2, "pref.shiga.jp"

    const/16 v3, 0x24

    aput-object v2, v1, v3

    const-string/jumbo v2, "pref.shimane.jp"

    const/16 v3, 0x25

    aput-object v2, v1, v3

    const-string/jumbo v2, "pref.shizuoka.jp"

    const/16 v3, 0x26

    aput-object v2, v1, v3

    const-string/jumbo v2, "pref.tochigi.jp"

    const/16 v3, 0x27

    aput-object v2, v1, v3

    const-string/jumbo v2, "pref.tokushima.jp"

    const/16 v3, 0x28

    aput-object v2, v1, v3

    const-string/jumbo v2, "pref.tottori.jp"

    const/16 v3, 0x29

    aput-object v2, v1, v3

    const-string/jumbo v2, "pref.toyama.jp"

    const/16 v3, 0x2a

    aput-object v2, v1, v3

    const-string/jumbo v2, "pref.wakayama.jp"

    const/16 v3, 0x2b

    aput-object v2, v1, v3

    const-string/jumbo v2, "pref.yamagata.jp"

    const/16 v3, 0x2c

    aput-object v2, v1, v3

    const-string/jumbo v2, "pref.yamaguchi.jp"

    const/16 v3, 0x2d

    aput-object v2, v1, v3

    const-string/jumbo v2, "pref.yamanashi.jp"

    const/16 v3, 0x2e

    aput-object v2, v1, v3

    const-string/jumbo v2, "city.chiba.jp"

    const/16 v3, 0x2f

    aput-object v2, v1, v3

    const-string/jumbo v2, "city.fukuoka.jp"

    const/16 v3, 0x30

    aput-object v2, v1, v3

    const-string/jumbo v2, "city.hamamatsu.jp"

    const/16 v3, 0x31

    aput-object v2, v1, v3

    const-string/jumbo v2, "city.hiroshima.jp"

    const/16 v3, 0x32

    aput-object v2, v1, v3

    const-string/jumbo v2, "city.kawasaki.jp"

    const/16 v3, 0x33

    aput-object v2, v1, v3

    const-string/jumbo v2, "city.kitakyushu.jp"

    const/16 v3, 0x34

    aput-object v2, v1, v3

    const-string/jumbo v2, "city.kobe.jp"

    const/16 v3, 0x35

    aput-object v2, v1, v3

    const-string/jumbo v2, "city.kyoto.jp"

    const/16 v3, 0x36

    aput-object v2, v1, v3

    const-string/jumbo v2, "city.nagoya.jp"

    const/16 v3, 0x37

    aput-object v2, v1, v3

    const-string/jumbo v2, "city.niigata.jp"

    const/16 v3, 0x38

    aput-object v2, v1, v3

    const-string/jumbo v2, "city.okayama.jp"

    const/16 v3, 0x39

    aput-object v2, v1, v3

    const-string/jumbo v2, "city.osaka.jp"

    const/16 v3, 0x3a

    aput-object v2, v1, v3

    const-string/jumbo v2, "city.sagamihara.jp"

    const/16 v3, 0x3b

    aput-object v2, v1, v3

    const-string/jumbo v2, "city.saitama.jp"

    const/16 v3, 0x3c

    aput-object v2, v1, v3

    const-string/jumbo v2, "city.sapporo.jp"

    const/16 v3, 0x3d

    aput-object v2, v1, v3

    const-string/jumbo v2, "city.sendai.jp"

    const/16 v3, 0x3e

    aput-object v2, v1, v3

    const-string/jumbo v2, "city.shizuoka.jp"

    const/16 v3, 0x3f

    aput-object v2, v1, v3

    const-string/jumbo v2, "city.yokohama.jp"

    const/16 v3, 0x40

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lsun/net/RegisteredDomain;->jp2Set:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x37

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "ak"

    aput-object v2, v1, v6

    const-string/jumbo v2, "al"

    aput-object v2, v1, v7

    const-string/jumbo v2, "ar"

    aput-object v2, v1, v8

    const-string/jumbo v2, "as"

    aput-object v2, v1, v9

    const-string/jumbo v2, "az"

    aput-object v2, v1, v10

    const-string/jumbo v2, "ca"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const-string/jumbo v2, "co"

    const/4 v3, 0x6

    aput-object v2, v1, v3

    const-string/jumbo v2, "ct"

    const/4 v3, 0x7

    aput-object v2, v1, v3

    const-string/jumbo v2, "dc"

    const/16 v3, 0x8

    aput-object v2, v1, v3

    const-string/jumbo v2, "de"

    const/16 v3, 0x9

    aput-object v2, v1, v3

    const-string/jumbo v2, "fl"

    const/16 v3, 0xa

    aput-object v2, v1, v3

    const-string/jumbo v2, "ga"

    const/16 v3, 0xb

    aput-object v2, v1, v3

    const-string/jumbo v2, "gu"

    const/16 v3, 0xc

    aput-object v2, v1, v3

    const-string/jumbo v2, "hi"

    const/16 v3, 0xd

    aput-object v2, v1, v3

    const-string/jumbo v2, "ia"

    const/16 v3, 0xe

    aput-object v2, v1, v3

    const-string/jumbo v2, "id"

    const/16 v3, 0xf

    aput-object v2, v1, v3

    const-string/jumbo v2, "il"

    const/16 v3, 0x10

    aput-object v2, v1, v3

    const-string/jumbo v2, "in"

    const/16 v3, 0x11

    aput-object v2, v1, v3

    const-string/jumbo v2, "ks"

    const/16 v3, 0x12

    aput-object v2, v1, v3

    const-string/jumbo v2, "ky"

    const/16 v3, 0x13

    aput-object v2, v1, v3

    const-string/jumbo v2, "la"

    const/16 v3, 0x14

    aput-object v2, v1, v3

    const-string/jumbo v2, "ma"

    const/16 v3, 0x15

    aput-object v2, v1, v3

    const-string/jumbo v2, "md"

    const/16 v3, 0x16

    aput-object v2, v1, v3

    const-string/jumbo v2, "me"

    const/16 v3, 0x17

    aput-object v2, v1, v3

    const-string/jumbo v2, "mi"

    const/16 v3, 0x18

    aput-object v2, v1, v3

    const-string/jumbo v2, "mn"

    const/16 v3, 0x19

    aput-object v2, v1, v3

    const-string/jumbo v2, "mo"

    const/16 v3, 0x1a

    aput-object v2, v1, v3

    const-string/jumbo v2, "ms"

    const/16 v3, 0x1b

    aput-object v2, v1, v3

    const-string/jumbo v2, "mt"

    const/16 v3, 0x1c

    aput-object v2, v1, v3

    const-string/jumbo v2, "nc"

    const/16 v3, 0x1d

    aput-object v2, v1, v3

    const-string/jumbo v2, "nd"

    const/16 v3, 0x1e

    aput-object v2, v1, v3

    const-string/jumbo v2, "ne"

    const/16 v3, 0x1f

    aput-object v2, v1, v3

    const-string/jumbo v2, "nh"

    const/16 v3, 0x20

    aput-object v2, v1, v3

    const-string/jumbo v2, "nj"

    const/16 v3, 0x21

    aput-object v2, v1, v3

    const-string/jumbo v2, "nm"

    const/16 v3, 0x22

    aput-object v2, v1, v3

    const-string/jumbo v2, "nv"

    const/16 v3, 0x23

    aput-object v2, v1, v3

    const-string/jumbo v2, "ny"

    const/16 v3, 0x24

    aput-object v2, v1, v3

    const-string/jumbo v2, "oh"

    const/16 v3, 0x25

    aput-object v2, v1, v3

    const-string/jumbo v2, "ok"

    const/16 v3, 0x26

    aput-object v2, v1, v3

    const-string/jumbo v2, "or"

    const/16 v3, 0x27

    aput-object v2, v1, v3

    const-string/jumbo v2, "pa"

    const/16 v3, 0x28

    aput-object v2, v1, v3

    const-string/jumbo v2, "pr"

    const/16 v3, 0x29

    aput-object v2, v1, v3

    const-string/jumbo v2, "ri"

    const/16 v3, 0x2a

    aput-object v2, v1, v3

    const-string/jumbo v2, "sc"

    const/16 v3, 0x2b

    aput-object v2, v1, v3

    const-string/jumbo v2, "sd"

    const/16 v3, 0x2c

    aput-object v2, v1, v3

    const-string/jumbo v2, "tn"

    const/16 v3, 0x2d

    aput-object v2, v1, v3

    const-string/jumbo v2, "tx"

    const/16 v3, 0x2e

    aput-object v2, v1, v3

    const-string/jumbo v2, "ut"

    const/16 v3, 0x2f

    aput-object v2, v1, v3

    const-string/jumbo v2, "vi"

    const/16 v3, 0x30

    aput-object v2, v1, v3

    const-string/jumbo v2, "vt"

    const/16 v3, 0x31

    aput-object v2, v1, v3

    const-string/jumbo v2, "va"

    const/16 v3, 0x32

    aput-object v2, v1, v3

    const-string/jumbo v2, "wa"

    const/16 v3, 0x33

    aput-object v2, v1, v3

    const-string/jumbo v2, "wi"

    const/16 v3, 0x34

    aput-object v2, v1, v3

    const-string/jumbo v2, "wv"

    const/16 v3, 0x35

    aput-object v2, v1, v3

    const-string/jumbo v2, "wy"

    const/16 v3, 0x36

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lsun/net/RegisteredDomain;->usStateSet:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "state"

    aput-object v2, v1, v6

    const-string/jumbo v2, "lib"

    aput-object v2, v1, v7

    const-string/jumbo v2, "k12"

    aput-object v2, v1, v8

    const-string/jumbo v2, "cc"

    aput-object v2, v1, v9

    const-string/jumbo v2, "tec"

    aput-object v2, v1, v10

    const-string/jumbo v2, "gen"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const-string/jumbo v2, "cog"

    const/4 v3, 0x6

    aput-object v2, v1, v3

    const-string/jumbo v2, "mus"

    const/4 v3, 0x7

    aput-object v2, v1, v3

    const-string/jumbo v2, "dst"

    const/16 v3, 0x8

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lsun/net/RegisteredDomain;->usSubStateSet:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lsun/net/RegisteredDomain;->top3Map:Ljava/util/Map;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "ac"

    new-instance v2, Ljava/util/HashSet;

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "com"

    aput-object v4, v3, v6

    const-string/jumbo v4, "co"

    aput-object v4, v3, v7

    const-string/jumbo v4, "edu"

    aput-object v4, v3, v8

    const-string/jumbo v4, "gov"

    aput-object v4, v3, v9

    const-string/jumbo v4, "net"

    aput-object v4, v3, v10

    const-string/jumbo v4, "mil"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    const-string/jumbo v4, "org"

    const/4 v5, 0x6

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "ae"

    new-instance v2, Ljava/util/HashSet;

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "co"

    aput-object v4, v3, v6

    const-string/jumbo v4, "net"

    aput-object v4, v3, v7

    const-string/jumbo v4, "org"

    aput-object v4, v3, v8

    const-string/jumbo v4, "sch"

    aput-object v4, v3, v9

    const-string/jumbo v4, "ac"

    aput-object v4, v3, v10

    const-string/jumbo v4, "gov"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    const-string/jumbo v4, "mil"

    const/4 v5, 0x6

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "aero"

    new-instance v2, Ljava/util/HashSet;

    const/16 v3, 0x59

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "accident-investigation"

    aput-object v4, v3, v6

    const-string/jumbo v4, "accident-prevention"

    aput-object v4, v3, v7

    const-string/jumbo v4, "aerobatic"

    aput-object v4, v3, v8

    const-string/jumbo v4, "aeroclub"

    aput-object v4, v3, v9

    const-string/jumbo v4, "aerodrome"

    aput-object v4, v3, v10

    const-string/jumbo v4, "agents"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    const-string/jumbo v4, "aircraft"

    const/4 v5, 0x6

    aput-object v4, v3, v5

    const-string/jumbo v4, "airline"

    const/4 v5, 0x7

    aput-object v4, v3, v5

    const-string/jumbo v4, "airport"

    const/16 v5, 0x8

    aput-object v4, v3, v5

    const-string/jumbo v4, "air-surveillance"

    const/16 v5, 0x9

    aput-object v4, v3, v5

    const-string/jumbo v4, "airtraffic"

    const/16 v5, 0xa

    aput-object v4, v3, v5

    const-string/jumbo v4, "air-traffic-control"

    const/16 v5, 0xb

    aput-object v4, v3, v5

    const-string/jumbo v4, "ambulance"

    const/16 v5, 0xc

    aput-object v4, v3, v5

    const-string/jumbo v4, "amusement"

    const/16 v5, 0xd

    aput-object v4, v3, v5

    const-string/jumbo v4, "association"

    const/16 v5, 0xe

    aput-object v4, v3, v5

    const-string/jumbo v4, "author"

    const/16 v5, 0xf

    aput-object v4, v3, v5

    const-string/jumbo v4, "ballooning"

    const/16 v5, 0x10

    aput-object v4, v3, v5

    const-string/jumbo v4, "broker"

    const/16 v5, 0x11

    aput-object v4, v3, v5

    const-string/jumbo v4, "caa"

    const/16 v5, 0x12

    aput-object v4, v3, v5

    const-string/jumbo v4, "cargo"

    const/16 v5, 0x13

    aput-object v4, v3, v5

    const-string/jumbo v4, "catering"

    const/16 v5, 0x14

    aput-object v4, v3, v5

    const-string/jumbo v4, "certification"

    const/16 v5, 0x15

    aput-object v4, v3, v5

    const-string/jumbo v4, "championship"

    const/16 v5, 0x16

    aput-object v4, v3, v5

    const-string/jumbo v4, "charter"

    const/16 v5, 0x17

    aput-object v4, v3, v5

    const-string/jumbo v4, "civilaviation"

    const/16 v5, 0x18

    aput-object v4, v3, v5

    const-string/jumbo v4, "club"

    const/16 v5, 0x19

    aput-object v4, v3, v5

    const-string/jumbo v4, "conference"

    const/16 v5, 0x1a

    aput-object v4, v3, v5

    const-string/jumbo v4, "consultant"

    const/16 v5, 0x1b

    aput-object v4, v3, v5

    const-string/jumbo v4, "consulting"

    const/16 v5, 0x1c

    aput-object v4, v3, v5

    const-string/jumbo v4, "control"

    const/16 v5, 0x1d

    aput-object v4, v3, v5

    const-string/jumbo v4, "council"

    const/16 v5, 0x1e

    aput-object v4, v3, v5

    const-string/jumbo v4, "crew"

    const/16 v5, 0x1f

    aput-object v4, v3, v5

    const-string/jumbo v4, "design"

    const/16 v5, 0x20

    aput-object v4, v3, v5

    const-string/jumbo v4, "dgca"

    const/16 v5, 0x21

    aput-object v4, v3, v5

    const-string/jumbo v4, "educator"

    const/16 v5, 0x22

    aput-object v4, v3, v5

    const-string/jumbo v4, "emergency"

    const/16 v5, 0x23

    aput-object v4, v3, v5

    const-string/jumbo v4, "engine"

    const/16 v5, 0x24

    aput-object v4, v3, v5

    const-string/jumbo v4, "engineer"

    const/16 v5, 0x25

    aput-object v4, v3, v5

    const-string/jumbo v4, "entertainment"

    const/16 v5, 0x26

    aput-object v4, v3, v5

    const-string/jumbo v4, "equipment"

    const/16 v5, 0x27

    aput-object v4, v3, v5

    const-string/jumbo v4, "exchange"

    const/16 v5, 0x28

    aput-object v4, v3, v5

    const-string/jumbo v4, "express"

    const/16 v5, 0x29

    aput-object v4, v3, v5

    const-string/jumbo v4, "federation"

    const/16 v5, 0x2a

    aput-object v4, v3, v5

    const-string/jumbo v4, "flight"

    const/16 v5, 0x2b

    aput-object v4, v3, v5

    const-string/jumbo v4, "freight"

    const/16 v5, 0x2c

    aput-object v4, v3, v5

    const-string/jumbo v4, "fuel"

    const/16 v5, 0x2d

    aput-object v4, v3, v5

    const-string/jumbo v4, "gliding"

    const/16 v5, 0x2e

    aput-object v4, v3, v5

    const-string/jumbo v4, "government"

    const/16 v5, 0x2f

    aput-object v4, v3, v5

    const-string/jumbo v4, "groundhandling"

    const/16 v5, 0x30

    aput-object v4, v3, v5

    const-string/jumbo v4, "group"

    const/16 v5, 0x31

    aput-object v4, v3, v5

    const-string/jumbo v4, "hanggliding"

    const/16 v5, 0x32

    aput-object v4, v3, v5

    const-string/jumbo v4, "homebuilt"

    const/16 v5, 0x33

    aput-object v4, v3, v5

    const-string/jumbo v4, "insurance"

    const/16 v5, 0x34

    aput-object v4, v3, v5

    const-string/jumbo v4, "journal"

    const/16 v5, 0x35

    aput-object v4, v3, v5

    const-string/jumbo v4, "journalist"

    const/16 v5, 0x36

    aput-object v4, v3, v5

    const-string/jumbo v4, "leasing"

    const/16 v5, 0x37

    aput-object v4, v3, v5

    const-string/jumbo v4, "logistics"

    const/16 v5, 0x38

    aput-object v4, v3, v5

    const-string/jumbo v4, "magazine"

    const/16 v5, 0x39

    aput-object v4, v3, v5

    const-string/jumbo v4, "maintenance"

    const/16 v5, 0x3a

    aput-object v4, v3, v5

    const-string/jumbo v4, "marketplace"

    const/16 v5, 0x3b

    aput-object v4, v3, v5

    const-string/jumbo v4, "media"

    const/16 v5, 0x3c

    aput-object v4, v3, v5

    const-string/jumbo v4, "microlight"

    const/16 v5, 0x3d

    aput-object v4, v3, v5

    const-string/jumbo v4, "modelling"

    const/16 v5, 0x3e

    aput-object v4, v3, v5

    const-string/jumbo v4, "navigation"

    const/16 v5, 0x3f

    aput-object v4, v3, v5

    const-string/jumbo v4, "parachuting"

    const/16 v5, 0x40

    aput-object v4, v3, v5

    const-string/jumbo v4, "paragliding"

    const/16 v5, 0x41

    aput-object v4, v3, v5

    const-string/jumbo v4, "passenger-association"

    const/16 v5, 0x42

    aput-object v4, v3, v5

    const-string/jumbo v4, "pilot"

    const/16 v5, 0x43

    aput-object v4, v3, v5

    const-string/jumbo v4, "press"

    const/16 v5, 0x44

    aput-object v4, v3, v5

    const-string/jumbo v4, "production"

    const/16 v5, 0x45

    aput-object v4, v3, v5

    const-string/jumbo v4, "recreation"

    const/16 v5, 0x46

    aput-object v4, v3, v5

    const-string/jumbo v4, "repbody"

    const/16 v5, 0x47

    aput-object v4, v3, v5

    const-string/jumbo v4, "res"

    const/16 v5, 0x48

    aput-object v4, v3, v5

    const-string/jumbo v4, "research"

    const/16 v5, 0x49

    aput-object v4, v3, v5

    const-string/jumbo v4, "rotorcraft"

    const/16 v5, 0x4a

    aput-object v4, v3, v5

    const-string/jumbo v4, "safety"

    const/16 v5, 0x4b

    aput-object v4, v3, v5

    const-string/jumbo v4, "scientist"

    const/16 v5, 0x4c

    aput-object v4, v3, v5

    const-string/jumbo v4, "services"

    const/16 v5, 0x4d

    aput-object v4, v3, v5

    const-string/jumbo v4, "show"

    const/16 v5, 0x4e

    aput-object v4, v3, v5

    const-string/jumbo v4, "skydiving"

    const/16 v5, 0x4f

    aput-object v4, v3, v5

    const-string/jumbo v4, "software"

    const/16 v5, 0x50

    aput-object v4, v3, v5

    const-string/jumbo v4, "student"

    const/16 v5, 0x51

    aput-object v4, v3, v5

    const-string/jumbo v4, "taxi"

    const/16 v5, 0x52

    aput-object v4, v3, v5

    const-string/jumbo v4, "trader"

    const/16 v5, 0x53

    aput-object v4, v3, v5

    const-string/jumbo v4, "trading"

    const/16 v5, 0x54

    aput-object v4, v3, v5

    const-string/jumbo v4, "trainer"

    const/16 v5, 0x55

    aput-object v4, v3, v5

    const-string/jumbo v4, "union"

    const/16 v5, 0x56

    aput-object v4, v3, v5

    const-string/jumbo v4, "workinggroup"

    const/16 v5, 0x57

    aput-object v4, v3, v5

    const-string/jumbo v4, "works"

    const/16 v5, 0x58

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "ag"

    new-instance v2, Ljava/util/HashSet;

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "com"

    aput-object v4, v3, v6

    const-string/jumbo v4, "org"

    aput-object v4, v3, v7

    const-string/jumbo v4, "net"

    aput-object v4, v3, v8

    const-string/jumbo v4, "co"

    aput-object v4, v3, v9

    const-string/jumbo v4, "nom"

    aput-object v4, v3, v10

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "ai"

    new-instance v2, Ljava/util/HashSet;

    new-array v3, v10, [Ljava/lang/String;

    const-string/jumbo v4, "off"

    aput-object v4, v3, v6

    const-string/jumbo v4, "com"

    aput-object v4, v3, v7

    const-string/jumbo v4, "net"

    aput-object v4, v3, v8

    const-string/jumbo v4, "org"

    aput-object v4, v3, v9

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "al"

    new-instance v2, Ljava/util/HashSet;

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "com"

    aput-object v4, v3, v6

    const-string/jumbo v4, "edu"

    aput-object v4, v3, v7

    const-string/jumbo v4, "gov"

    aput-object v4, v3, v8

    const-string/jumbo v4, "mil"

    aput-object v4, v3, v9

    const-string/jumbo v4, "net"

    aput-object v4, v3, v10

    const-string/jumbo v4, "org"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "an"

    new-instance v2, Ljava/util/HashSet;

    new-array v3, v7, [Ljava/lang/String;

    const-string/jumbo v4, "com"

    aput-object v4, v3, v6

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "ao"

    new-instance v2, Ljava/util/HashSet;

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "ed"

    aput-object v4, v3, v6

    const-string/jumbo v4, "gv"

    aput-object v4, v3, v7

    const-string/jumbo v4, "og"

    aput-object v4, v3, v8

    const-string/jumbo v4, "co"

    aput-object v4, v3, v9

    const-string/jumbo v4, "pb"

    aput-object v4, v3, v10

    const-string/jumbo v4, "it"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "at"

    new-instance v2, Ljava/util/HashSet;

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "ac"

    aput-object v4, v3, v6

    const-string/jumbo v4, "co"

    aput-object v4, v3, v7

    const-string/jumbo v4, "gv"

    aput-object v4, v3, v8

    const-string/jumbo v4, "or"

    aput-object v4, v3, v9

    const-string/jumbo v4, "biz"

    aput-object v4, v3, v10

    const-string/jumbo v4, "info"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    const-string/jumbo v4, "priv"

    const/4 v5, 0x6

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "az"

    new-instance v2, Ljava/util/HashSet;

    const/16 v3, 0xb

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "com"

    aput-object v4, v3, v6

    const-string/jumbo v4, "net"

    aput-object v4, v3, v7

    const-string/jumbo v4, "int"

    aput-object v4, v3, v8

    const-string/jumbo v4, "gov"

    aput-object v4, v3, v9

    const-string/jumbo v4, "org"

    aput-object v4, v3, v10

    const-string/jumbo v4, "edu"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    const-string/jumbo v4, "info"

    const/4 v5, 0x6

    aput-object v4, v3, v5

    const-string/jumbo v4, "pp"

    const/4 v5, 0x7

    aput-object v4, v3, v5

    const-string/jumbo v4, "mil"

    const/16 v5, 0x8

    aput-object v4, v3, v5

    const-string/jumbo v4, "name"

    const/16 v5, 0x9

    aput-object v4, v3, v5

    const-string/jumbo v4, "biz"

    const/16 v5, 0xa

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "ba"

    new-instance v2, Ljava/util/HashSet;

    const/16 v3, 0xd

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "org"

    aput-object v4, v3, v6

    const-string/jumbo v4, "net"

    aput-object v4, v3, v7

    const-string/jumbo v4, "edu"

    aput-object v4, v3, v8

    const-string/jumbo v4, "gov"

    aput-object v4, v3, v9

    const-string/jumbo v4, "mil"

    aput-object v4, v3, v10

    const-string/jumbo v4, "unbi"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    const-string/jumbo v4, "unmo"

    const/4 v5, 0x6

    aput-object v4, v3, v5

    const-string/jumbo v4, "unsa"

    const/4 v5, 0x7

    aput-object v4, v3, v5

    const-string/jumbo v4, "untz"

    const/16 v5, 0x8

    aput-object v4, v3, v5

    const-string/jumbo v4, "unze"

    const/16 v5, 0x9

    aput-object v4, v3, v5

    const-string/jumbo v4, "co"

    const/16 v5, 0xa

    aput-object v4, v3, v5

    const-string/jumbo v4, "com"

    const/16 v5, 0xb

    aput-object v4, v3, v5

    const-string/jumbo v4, "rs"

    const/16 v5, 0xc

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "bb"

    new-instance v2, Ljava/util/HashSet;

    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "biz"

    aput-object v4, v3, v6

    const-string/jumbo v4, "com"

    aput-object v4, v3, v7

    const-string/jumbo v4, "edu"

    aput-object v4, v3, v8

    const-string/jumbo v4, "gov"

    aput-object v4, v3, v9

    const-string/jumbo v4, "info"

    aput-object v4, v3, v10

    const-string/jumbo v4, "net"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    const-string/jumbo v4, "org"

    const/4 v5, 0x6

    aput-object v4, v3, v5

    const-string/jumbo v4, "store"

    const/4 v5, 0x7

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "bg"

    new-instance v2, Ljava/util/HashSet;

    const/16 v3, 0x24

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "a"

    aput-object v4, v3, v6

    const-string/jumbo v4, "b"

    aput-object v4, v3, v7

    const-string/jumbo v4, "c"

    aput-object v4, v3, v8

    const-string/jumbo v4, "d"

    aput-object v4, v3, v9

    const-string/jumbo v4, "e"

    aput-object v4, v3, v10

    const-string/jumbo v4, "f"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    const-string/jumbo v4, "g"

    const/4 v5, 0x6

    aput-object v4, v3, v5

    const-string/jumbo v4, "h"

    const/4 v5, 0x7

    aput-object v4, v3, v5

    const-string/jumbo v4, "i"

    const/16 v5, 0x8

    aput-object v4, v3, v5

    const-string/jumbo v4, "j"

    const/16 v5, 0x9

    aput-object v4, v3, v5

    const-string/jumbo v4, "k"

    const/16 v5, 0xa

    aput-object v4, v3, v5

    const-string/jumbo v4, "l"

    const/16 v5, 0xb

    aput-object v4, v3, v5

    const-string/jumbo v4, "m"

    const/16 v5, 0xc

    aput-object v4, v3, v5

    const-string/jumbo v4, "n"

    const/16 v5, 0xd

    aput-object v4, v3, v5

    const-string/jumbo v4, "o"

    const/16 v5, 0xe

    aput-object v4, v3, v5

    const-string/jumbo v4, "p"

    const/16 v5, 0xf

    aput-object v4, v3, v5

    const-string/jumbo v4, "q"

    const/16 v5, 0x10

    aput-object v4, v3, v5

    const-string/jumbo v4, "r"

    const/16 v5, 0x11

    aput-object v4, v3, v5

    const-string/jumbo v4, "s"

    const/16 v5, 0x12

    aput-object v4, v3, v5

    const-string/jumbo v4, "t"

    const/16 v5, 0x13

    aput-object v4, v3, v5

    const-string/jumbo v4, "u"

    const/16 v5, 0x14

    aput-object v4, v3, v5

    const-string/jumbo v4, "v"

    const/16 v5, 0x15

    aput-object v4, v3, v5

    const-string/jumbo v4, "w"

    const/16 v5, 0x16

    aput-object v4, v3, v5

    const-string/jumbo v4, "x"

    const/16 v5, 0x17

    aput-object v4, v3, v5

    const-string/jumbo v4, "y"

    const/16 v5, 0x18

    aput-object v4, v3, v5

    const-string/jumbo v4, "z"

    const/16 v5, 0x19

    aput-object v4, v3, v5

    const-string/jumbo v4, "0"

    const/16 v5, 0x1a

    aput-object v4, v3, v5

    const-string/jumbo v4, "1"

    const/16 v5, 0x1b

    aput-object v4, v3, v5

    const-string/jumbo v4, "2"

    const/16 v5, 0x1c

    aput-object v4, v3, v5

    const-string/jumbo v4, "3"

    const/16 v5, 0x1d

    aput-object v4, v3, v5

    const-string/jumbo v4, "4"

    const/16 v5, 0x1e

    aput-object v4, v3, v5

    const-string/jumbo v4, "5"

    const/16 v5, 0x1f

    aput-object v4, v3, v5

    const-string/jumbo v4, "6"

    const/16 v5, 0x20

    aput-object v4, v3, v5

    const-string/jumbo v4, "7"

    const/16 v5, 0x21

    aput-object v4, v3, v5

    const-string/jumbo v4, "8"

    const/16 v5, 0x22

    aput-object v4, v3, v5

    const-string/jumbo v4, "9"

    const/16 v5, 0x23

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "bh"

    new-instance v2, Ljava/util/HashSet;

    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "com"

    aput-object v4, v3, v6

    const-string/jumbo v4, "info"

    aput-object v4, v3, v7

    const-string/jumbo v4, "cc"

    aput-object v4, v3, v8

    const-string/jumbo v4, "edu"

    aput-object v4, v3, v9

    const-string/jumbo v4, "biz"

    aput-object v4, v3, v10

    const-string/jumbo v4, "net"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    const-string/jumbo v4, "org"

    const/4 v5, 0x6

    aput-object v4, v3, v5

    const-string/jumbo v4, "gov"

    const/4 v5, 0x7

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "bi"

    new-instance v2, Ljava/util/HashSet;

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "co"

    aput-object v4, v3, v6

    const-string/jumbo v4, "com"

    aput-object v4, v3, v7

    const-string/jumbo v4, "edu"

    aput-object v4, v3, v8

    const-string/jumbo v4, "gov"

    aput-object v4, v3, v9

    const-string/jumbo v4, "info"

    aput-object v4, v3, v10

    const-string/jumbo v4, "or"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    const-string/jumbo v4, "org"

    const/4 v5, 0x6

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "bj"

    new-instance v2, Ljava/util/HashSet;

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "asso"

    aput-object v4, v3, v6

    const-string/jumbo v4, "barreau"

    aput-object v4, v3, v7

    const-string/jumbo v4, "com"

    aput-object v4, v3, v8

    const-string/jumbo v4, "edu"

    aput-object v4, v3, v9

    const-string/jumbo v4, "gouv"

    aput-object v4, v3, v10

    const-string/jumbo v4, "gov"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    const-string/jumbo v4, "mil"

    const/4 v5, 0x6

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "bo"

    new-instance v2, Ljava/util/HashSet;

    const/16 v3, 0x9

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "com"

    aput-object v4, v3, v6

    const-string/jumbo v4, "edu"

    aput-object v4, v3, v7

    const-string/jumbo v4, "gov"

    aput-object v4, v3, v8

    const-string/jumbo v4, "gob"

    aput-object v4, v3, v9

    const-string/jumbo v4, "int"

    aput-object v4, v3, v10

    const-string/jumbo v4, "org"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    const-string/jumbo v4, "net"

    const/4 v5, 0x6

    aput-object v4, v3, v5

    const-string/jumbo v4, "mil"

    const/4 v5, 0x7

    aput-object v4, v3, v5

    const-string/jumbo v4, "tv"

    const/16 v5, 0x8

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "br"

    new-instance v2, Ljava/util/HashSet;

    const/16 v3, 0x43

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "adm"

    aput-object v4, v3, v6

    const-string/jumbo v4, "adv"

    aput-object v4, v3, v7

    const-string/jumbo v4, "agr"

    aput-object v4, v3, v8

    const-string/jumbo v4, "am"

    aput-object v4, v3, v9

    const-string/jumbo v4, "arq"

    aput-object v4, v3, v10

    const-string/jumbo v4, "art"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    const-string/jumbo v4, "ato"

    const/4 v5, 0x6

    aput-object v4, v3, v5

    const-string/jumbo v4, "b"

    const/4 v5, 0x7

    aput-object v4, v3, v5

    const-string/jumbo v4, "bio"

    const/16 v5, 0x8

    aput-object v4, v3, v5

    const-string/jumbo v4, "blog"

    const/16 v5, 0x9

    aput-object v4, v3, v5

    const-string/jumbo v4, "bmd"

    const/16 v5, 0xa

    aput-object v4, v3, v5

    const-string/jumbo v4, "cim"

    const/16 v5, 0xb

    aput-object v4, v3, v5

    const-string/jumbo v4, "cng"

    const/16 v5, 0xc

    aput-object v4, v3, v5

    const-string/jumbo v4, "cnt"

    const/16 v5, 0xd

    aput-object v4, v3, v5

    const-string/jumbo v4, "com"

    const/16 v5, 0xe

    aput-object v4, v3, v5

    const-string/jumbo v4, "coop"

    const/16 v5, 0xf

    aput-object v4, v3, v5

    const-string/jumbo v4, "ecn"

    const/16 v5, 0x10

    aput-object v4, v3, v5

    const-string/jumbo v4, "edu"

    const/16 v5, 0x11

    aput-object v4, v3, v5

    const-string/jumbo v4, "emp"

    const/16 v5, 0x12

    aput-object v4, v3, v5

    const-string/jumbo v4, "eng"

    const/16 v5, 0x13

    aput-object v4, v3, v5

    const-string/jumbo v4, "esp"

    const/16 v5, 0x14

    aput-object v4, v3, v5

    const-string/jumbo v4, "etc"

    const/16 v5, 0x15

    aput-object v4, v3, v5

    const-string/jumbo v4, "eti"

    const/16 v5, 0x16

    aput-object v4, v3, v5

    const-string/jumbo v4, "far"

    const/16 v5, 0x17

    aput-object v4, v3, v5

    const-string/jumbo v4, "flog"

    const/16 v5, 0x18

    aput-object v4, v3, v5

    const-string/jumbo v4, "fm"

    const/16 v5, 0x19

    aput-object v4, v3, v5

    const-string/jumbo v4, "fnd"

    const/16 v5, 0x1a

    aput-object v4, v3, v5

    const-string/jumbo v4, "fot"

    const/16 v5, 0x1b

    aput-object v4, v3, v5

    const-string/jumbo v4, "fst"

    const/16 v5, 0x1c

    aput-object v4, v3, v5

    const-string/jumbo v4, "g12"

    const/16 v5, 0x1d

    aput-object v4, v3, v5

    const-string/jumbo v4, "ggf"

    const/16 v5, 0x1e

    aput-object v4, v3, v5

    const-string/jumbo v4, "gov"

    const/16 v5, 0x1f

    aput-object v4, v3, v5

    const-string/jumbo v4, "imb"

    const/16 v5, 0x20

    aput-object v4, v3, v5

    const-string/jumbo v4, "ind"

    const/16 v5, 0x21

    aput-object v4, v3, v5

    const-string/jumbo v4, "inf"

    const/16 v5, 0x22

    aput-object v4, v3, v5

    const-string/jumbo v4, "jor"

    const/16 v5, 0x23

    aput-object v4, v3, v5

    const-string/jumbo v4, "jus"

    const/16 v5, 0x24

    aput-object v4, v3, v5

    const-string/jumbo v4, "lel"

    const/16 v5, 0x25

    aput-object v4, v3, v5

    const-string/jumbo v4, "mat"

    const/16 v5, 0x26

    aput-object v4, v3, v5

    const-string/jumbo v4, "med"

    const/16 v5, 0x27

    aput-object v4, v3, v5

    const-string/jumbo v4, "mil"

    const/16 v5, 0x28

    aput-object v4, v3, v5

    const-string/jumbo v4, "mus"

    const/16 v5, 0x29

    aput-object v4, v3, v5

    const-string/jumbo v4, "net"

    const/16 v5, 0x2a

    aput-object v4, v3, v5

    const-string/jumbo v4, "nom"

    const/16 v5, 0x2b

    aput-object v4, v3, v5

    const-string/jumbo v4, "not"

    const/16 v5, 0x2c

    aput-object v4, v3, v5

    const-string/jumbo v4, "ntr"

    const/16 v5, 0x2d

    aput-object v4, v3, v5

    const-string/jumbo v4, "odo"

    const/16 v5, 0x2e

    aput-object v4, v3, v5

    const-string/jumbo v4, "org"

    const/16 v5, 0x2f

    aput-object v4, v3, v5

    const-string/jumbo v4, "ppg"

    const/16 v5, 0x30

    aput-object v4, v3, v5

    const-string/jumbo v4, "pro"

    const/16 v5, 0x31

    aput-object v4, v3, v5

    const-string/jumbo v4, "psc"

    const/16 v5, 0x32

    aput-object v4, v3, v5

    const-string/jumbo v4, "psi"

    const/16 v5, 0x33

    aput-object v4, v3, v5

    const-string/jumbo v4, "qsl"

    const/16 v5, 0x34

    aput-object v4, v3, v5

    const-string/jumbo v4, "radio"

    const/16 v5, 0x35

    aput-object v4, v3, v5

    const-string/jumbo v4, "rec"

    const/16 v5, 0x36

    aput-object v4, v3, v5

    const-string/jumbo v4, "slg"

    const/16 v5, 0x37

    aput-object v4, v3, v5

    const-string/jumbo v4, "srv"

    const/16 v5, 0x38

    aput-object v4, v3, v5

    const-string/jumbo v4, "taxi"

    const/16 v5, 0x39

    aput-object v4, v3, v5

    const-string/jumbo v4, "teo"

    const/16 v5, 0x3a

    aput-object v4, v3, v5

    const-string/jumbo v4, "tmp"

    const/16 v5, 0x3b

    aput-object v4, v3, v5

    const-string/jumbo v4, "trd"

    const/16 v5, 0x3c

    aput-object v4, v3, v5

    const-string/jumbo v4, "tur"

    const/16 v5, 0x3d

    aput-object v4, v3, v5

    const-string/jumbo v4, "tv"

    const/16 v5, 0x3e

    aput-object v4, v3, v5

    const-string/jumbo v4, "vet"

    const/16 v5, 0x3f

    aput-object v4, v3, v5

    const-string/jumbo v4, "vlog"

    const/16 v5, 0x40

    aput-object v4, v3, v5

    const-string/jumbo v4, "wiki"

    const/16 v5, 0x41

    aput-object v4, v3, v5

    const-string/jumbo v4, "zlg"

    const/16 v5, 0x42

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "bw"

    new-instance v2, Ljava/util/HashSet;

    new-array v3, v9, [Ljava/lang/String;

    const-string/jumbo v4, "co"

    aput-object v4, v3, v6

    const-string/jumbo v4, "gov"

    aput-object v4, v3, v7

    const-string/jumbo v4, "org"

    aput-object v4, v3, v8

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "by"

    new-instance v2, Ljava/util/HashSet;

    new-array v3, v10, [Ljava/lang/String;

    const-string/jumbo v4, "gov"

    aput-object v4, v3, v6

    const-string/jumbo v4, "mil"

    aput-object v4, v3, v7

    const-string/jumbo v4, "com"

    aput-object v4, v3, v8

    const-string/jumbo v4, "of"

    aput-object v4, v3, v9

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "ca"

    new-instance v2, Ljava/util/HashSet;

    const/16 v3, 0xf

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "ab"

    aput-object v4, v3, v6

    const-string/jumbo v4, "bc"

    aput-object v4, v3, v7

    const-string/jumbo v4, "mb"

    aput-object v4, v3, v8

    const-string/jumbo v4, "nb"

    aput-object v4, v3, v9

    const-string/jumbo v4, "nf"

    aput-object v4, v3, v10

    const-string/jumbo v4, "nl"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    const-string/jumbo v4, "ns"

    const/4 v5, 0x6

    aput-object v4, v3, v5

    const-string/jumbo v4, "nt"

    const/4 v5, 0x7

    aput-object v4, v3, v5

    const-string/jumbo v4, "nu"

    const/16 v5, 0x8

    aput-object v4, v3, v5

    const-string/jumbo v4, "on"

    const/16 v5, 0x9

    aput-object v4, v3, v5

    const-string/jumbo v4, "pe"

    const/16 v5, 0xa

    aput-object v4, v3, v5

    const-string/jumbo v4, "qc"

    const/16 v5, 0xb

    aput-object v4, v3, v5

    const-string/jumbo v4, "sk"

    const/16 v5, 0xc

    aput-object v4, v3, v5

    const-string/jumbo v4, "yk"

    const/16 v5, 0xd

    aput-object v4, v3, v5

    const-string/jumbo v4, "gc"

    const/16 v5, 0xe

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "ci"

    new-instance v2, Ljava/util/HashSet;

    const/16 v3, 0xf

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "org"

    aput-object v4, v3, v6

    const-string/jumbo v4, "or"

    aput-object v4, v3, v7

    const-string/jumbo v4, "com"

    aput-object v4, v3, v8

    const-string/jumbo v4, "co"

    aput-object v4, v3, v9

    const-string/jumbo v4, "edu"

    aput-object v4, v3, v10

    const-string/jumbo v4, "ed"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    const-string/jumbo v4, "ac"

    const/4 v5, 0x6

    aput-object v4, v3, v5

    const-string/jumbo v4, "net"

    const/4 v5, 0x7

    aput-object v4, v3, v5

    const-string/jumbo v4, "go"

    const/16 v5, 0x8

    aput-object v4, v3, v5

    const-string/jumbo v4, "asso"

    const/16 v5, 0x9

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--aroport-bya"

    const/16 v5, 0xa

    aput-object v4, v3, v5

    const-string/jumbo v4, "int"

    const/16 v5, 0xb

    aput-object v4, v3, v5

    const-string/jumbo v4, "presse"

    const/16 v5, 0xc

    aput-object v4, v3, v5

    const-string/jumbo v4, "md"

    const/16 v5, 0xd

    aput-object v4, v3, v5

    const-string/jumbo v4, "gouv"

    const/16 v5, 0xe

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "com"

    new-instance v2, Ljava/util/HashSet;

    const/16 v3, 0x14

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "ad"

    aput-object v4, v3, v6

    const-string/jumbo v4, "ar"

    aput-object v4, v3, v7

    const-string/jumbo v4, "br"

    aput-object v4, v3, v8

    const-string/jumbo v4, "cn"

    aput-object v4, v3, v9

    const-string/jumbo v4, "de"

    aput-object v4, v3, v10

    const-string/jumbo v4, "eu"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    const-string/jumbo v4, "gb"

    const/4 v5, 0x6

    aput-object v4, v3, v5

    const-string/jumbo v4, "gr"

    const/4 v5, 0x7

    aput-object v4, v3, v5

    const-string/jumbo v4, "hu"

    const/16 v5, 0x8

    aput-object v4, v3, v5

    const-string/jumbo v4, "jpn"

    const/16 v5, 0x9

    aput-object v4, v3, v5

    const-string/jumbo v4, "kr"

    const/16 v5, 0xa

    aput-object v4, v3, v5

    const-string/jumbo v4, "no"

    const/16 v5, 0xb

    aput-object v4, v3, v5

    const-string/jumbo v4, "qc"

    const/16 v5, 0xc

    aput-object v4, v3, v5

    const-string/jumbo v4, "ru"

    const/16 v5, 0xd

    aput-object v4, v3, v5

    const-string/jumbo v4, "sa"

    const/16 v5, 0xe

    aput-object v4, v3, v5

    const-string/jumbo v4, "se"

    const/16 v5, 0xf

    aput-object v4, v3, v5

    const-string/jumbo v4, "uk"

    const/16 v5, 0x10

    aput-object v4, v3, v5

    const-string/jumbo v4, "us"

    const/16 v5, 0x11

    aput-object v4, v3, v5

    const-string/jumbo v4, "uy"

    const/16 v5, 0x12

    aput-object v4, v3, v5

    const-string/jumbo v4, "za"

    const/16 v5, 0x13

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "cm"

    new-instance v2, Ljava/util/HashSet;

    new-array v3, v10, [Ljava/lang/String;

    const-string/jumbo v4, "co"

    aput-object v4, v3, v6

    const-string/jumbo v4, "com"

    aput-object v4, v3, v7

    const-string/jumbo v4, "gov"

    aput-object v4, v3, v8

    const-string/jumbo v4, "net"

    aput-object v4, v3, v9

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "cn"

    new-instance v2, Ljava/util/HashSet;

    const/16 v3, 0x2b

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "ac"

    aput-object v4, v3, v6

    const-string/jumbo v4, "com"

    aput-object v4, v3, v7

    const-string/jumbo v4, "edu"

    aput-object v4, v3, v8

    const-string/jumbo v4, "gov"

    aput-object v4, v3, v9

    const-string/jumbo v4, "net"

    aput-object v4, v3, v10

    const-string/jumbo v4, "org"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    const-string/jumbo v4, "mil"

    const/4 v5, 0x6

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--55qx5d"

    const/4 v5, 0x7

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--io0a7i"

    const/16 v5, 0x8

    aput-object v4, v3, v5

    const-string/jumbo v4, "ah"

    const/16 v5, 0x9

    aput-object v4, v3, v5

    const-string/jumbo v4, "bj"

    const/16 v5, 0xa

    aput-object v4, v3, v5

    const-string/jumbo v4, "cq"

    const/16 v5, 0xb

    aput-object v4, v3, v5

    const-string/jumbo v4, "fj"

    const/16 v5, 0xc

    aput-object v4, v3, v5

    const-string/jumbo v4, "gd"

    const/16 v5, 0xd

    aput-object v4, v3, v5

    const-string/jumbo v4, "gs"

    const/16 v5, 0xe

    aput-object v4, v3, v5

    const-string/jumbo v4, "gz"

    const/16 v5, 0xf

    aput-object v4, v3, v5

    const-string/jumbo v4, "gx"

    const/16 v5, 0x10

    aput-object v4, v3, v5

    const-string/jumbo v4, "ha"

    const/16 v5, 0x11

    aput-object v4, v3, v5

    const-string/jumbo v4, "hb"

    const/16 v5, 0x12

    aput-object v4, v3, v5

    const-string/jumbo v4, "he"

    const/16 v5, 0x13

    aput-object v4, v3, v5

    const-string/jumbo v4, "hi"

    const/16 v5, 0x14

    aput-object v4, v3, v5

    const-string/jumbo v4, "hl"

    const/16 v5, 0x15

    aput-object v4, v3, v5

    const-string/jumbo v4, "hn"

    const/16 v5, 0x16

    aput-object v4, v3, v5

    const-string/jumbo v4, "jl"

    const/16 v5, 0x17

    aput-object v4, v3, v5

    const-string/jumbo v4, "js"

    const/16 v5, 0x18

    aput-object v4, v3, v5

    const-string/jumbo v4, "jx"

    const/16 v5, 0x19

    aput-object v4, v3, v5

    const-string/jumbo v4, "ln"

    const/16 v5, 0x1a

    aput-object v4, v3, v5

    const-string/jumbo v4, "nm"

    const/16 v5, 0x1b

    aput-object v4, v3, v5

    const-string/jumbo v4, "nx"

    const/16 v5, 0x1c

    aput-object v4, v3, v5

    const-string/jumbo v4, "qh"

    const/16 v5, 0x1d

    aput-object v4, v3, v5

    const-string/jumbo v4, "sc"

    const/16 v5, 0x1e

    aput-object v4, v3, v5

    const-string/jumbo v4, "sd"

    const/16 v5, 0x1f

    aput-object v4, v3, v5

    const-string/jumbo v4, "sh"

    const/16 v5, 0x20

    aput-object v4, v3, v5

    const-string/jumbo v4, "sn"

    const/16 v5, 0x21

    aput-object v4, v3, v5

    const-string/jumbo v4, "sx"

    const/16 v5, 0x22

    aput-object v4, v3, v5

    const-string/jumbo v4, "tj"

    const/16 v5, 0x23

    aput-object v4, v3, v5

    const-string/jumbo v4, "xj"

    const/16 v5, 0x24

    aput-object v4, v3, v5

    const-string/jumbo v4, "xz"

    const/16 v5, 0x25

    aput-object v4, v3, v5

    const-string/jumbo v4, "yn"

    const/16 v5, 0x26

    aput-object v4, v3, v5

    const-string/jumbo v4, "zj"

    const/16 v5, 0x27

    aput-object v4, v3, v5

    const-string/jumbo v4, "hk"

    const/16 v5, 0x28

    aput-object v4, v3, v5

    const-string/jumbo v4, "mo"

    const/16 v5, 0x29

    aput-object v4, v3, v5

    const-string/jumbo v4, "tw"

    const/16 v5, 0x2a

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "co"

    new-instance v2, Ljava/util/HashSet;

    const/16 v3, 0xd

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "arts"

    aput-object v4, v3, v6

    const-string/jumbo v4, "com"

    aput-object v4, v3, v7

    const-string/jumbo v4, "edu"

    aput-object v4, v3, v8

    const-string/jumbo v4, "firm"

    aput-object v4, v3, v9

    const-string/jumbo v4, "gov"

    aput-object v4, v3, v10

    const-string/jumbo v4, "info"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    const-string/jumbo v4, "int"

    const/4 v5, 0x6

    aput-object v4, v3, v5

    const-string/jumbo v4, "mil"

    const/4 v5, 0x7

    aput-object v4, v3, v5

    const-string/jumbo v4, "net"

    const/16 v5, 0x8

    aput-object v4, v3, v5

    const-string/jumbo v4, "nom"

    const/16 v5, 0x9

    aput-object v4, v3, v5

    const-string/jumbo v4, "org"

    const/16 v5, 0xa

    aput-object v4, v3, v5

    const-string/jumbo v4, "rec"

    const/16 v5, 0xb

    aput-object v4, v3, v5

    const-string/jumbo v4, "web"

    const/16 v5, 0xc

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "cr"

    new-instance v2, Ljava/util/HashSet;

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "ac"

    aput-object v4, v3, v6

    const-string/jumbo v4, "co"

    aput-object v4, v3, v7

    const-string/jumbo v4, "ed"

    aput-object v4, v3, v8

    const-string/jumbo v4, "fi"

    aput-object v4, v3, v9

    const-string/jumbo v4, "go"

    aput-object v4, v3, v10

    const-string/jumbo v4, "or"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    const-string/jumbo v4, "sa"

    const/4 v5, 0x6

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "cu"

    new-instance v2, Ljava/util/HashSet;

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "com"

    aput-object v4, v3, v6

    const-string/jumbo v4, "edu"

    aput-object v4, v3, v7

    const-string/jumbo v4, "org"

    aput-object v4, v3, v8

    const-string/jumbo v4, "net"

    aput-object v4, v3, v9

    const-string/jumbo v4, "gov"

    aput-object v4, v3, v10

    const-string/jumbo v4, "inf"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "do"

    new-instance v2, Ljava/util/HashSet;

    const/16 v3, 0xa

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "com"

    aput-object v4, v3, v6

    const-string/jumbo v4, "edu"

    aput-object v4, v3, v7

    const-string/jumbo v4, "org"

    aput-object v4, v3, v8

    const-string/jumbo v4, "net"

    aput-object v4, v3, v9

    const-string/jumbo v4, "gov"

    aput-object v4, v3, v10

    const-string/jumbo v4, "gob"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    const-string/jumbo v4, "web"

    const/4 v5, 0x6

    aput-object v4, v3, v5

    const-string/jumbo v4, "art"

    const/4 v5, 0x7

    aput-object v4, v3, v5

    const-string/jumbo v4, "sld"

    const/16 v5, 0x8

    aput-object v4, v3, v5

    const-string/jumbo v4, "mil"

    const/16 v5, 0x9

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "dz"

    new-instance v2, Ljava/util/HashSet;

    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "com"

    aput-object v4, v3, v6

    const-string/jumbo v4, "org"

    aput-object v4, v3, v7

    const-string/jumbo v4, "net"

    aput-object v4, v3, v8

    const-string/jumbo v4, "gov"

    aput-object v4, v3, v9

    const-string/jumbo v4, "edu"

    aput-object v4, v3, v10

    const-string/jumbo v4, "asso"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    const-string/jumbo v4, "pol"

    const/4 v5, 0x6

    aput-object v4, v3, v5

    const-string/jumbo v4, "art"

    const/4 v5, 0x7

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "ec"

    new-instance v2, Ljava/util/HashSet;

    const/16 v3, 0xc

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "com"

    aput-object v4, v3, v6

    const-string/jumbo v4, "info"

    aput-object v4, v3, v7

    const-string/jumbo v4, "net"

    aput-object v4, v3, v8

    const-string/jumbo v4, "fin"

    aput-object v4, v3, v9

    const-string/jumbo v4, "k12"

    aput-object v4, v3, v10

    const-string/jumbo v4, "med"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    const-string/jumbo v4, "pro"

    const/4 v5, 0x6

    aput-object v4, v3, v5

    const-string/jumbo v4, "org"

    const/4 v5, 0x7

    aput-object v4, v3, v5

    const-string/jumbo v4, "edu"

    const/16 v5, 0x8

    aput-object v4, v3, v5

    const-string/jumbo v4, "gov"

    const/16 v5, 0x9

    aput-object v4, v3, v5

    const-string/jumbo v4, "gob"

    const/16 v5, 0xa

    aput-object v4, v3, v5

    const-string/jumbo v4, "mil"

    const/16 v5, 0xb

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "ee"

    new-instance v2, Ljava/util/HashSet;

    const/16 v3, 0xa

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "edu"

    aput-object v4, v3, v6

    const-string/jumbo v4, "gov"

    aput-object v4, v3, v7

    const-string/jumbo v4, "riik"

    aput-object v4, v3, v8

    const-string/jumbo v4, "lib"

    aput-object v4, v3, v9

    const-string/jumbo v4, "med"

    aput-object v4, v3, v10

    const-string/jumbo v4, "com"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    const-string/jumbo v4, "pri"

    const/4 v5, 0x6

    aput-object v4, v3, v5

    const-string/jumbo v4, "aip"

    const/4 v5, 0x7

    aput-object v4, v3, v5

    const-string/jumbo v4, "org"

    const/16 v5, 0x8

    aput-object v4, v3, v5

    const-string/jumbo v4, "fie"

    const/16 v5, 0x9

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "eg"

    new-instance v2, Ljava/util/HashSet;

    const/16 v3, 0x9

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "com"

    aput-object v4, v3, v6

    const-string/jumbo v4, "edu"

    aput-object v4, v3, v7

    const-string/jumbo v4, "eun"

    aput-object v4, v3, v8

    const-string/jumbo v4, "gov"

    aput-object v4, v3, v9

    const-string/jumbo v4, "mil"

    aput-object v4, v3, v10

    const-string/jumbo v4, "name"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    const-string/jumbo v4, "net"

    const/4 v5, 0x6

    aput-object v4, v3, v5

    const-string/jumbo v4, "org"

    const/4 v5, 0x7

    aput-object v4, v3, v5

    const-string/jumbo v4, "sci"

    const/16 v5, 0x8

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "es"

    new-instance v2, Ljava/util/HashSet;

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "com"

    aput-object v4, v3, v6

    const-string/jumbo v4, "nom"

    aput-object v4, v3, v7

    const-string/jumbo v4, "org"

    aput-object v4, v3, v8

    const-string/jumbo v4, "gob"

    aput-object v4, v3, v9

    const-string/jumbo v4, "edu"

    aput-object v4, v3, v10

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "eu"

    new-instance v2, Ljava/util/HashSet;

    new-array v3, v7, [Ljava/lang/String;

    const-string/jumbo v4, "europa"

    aput-object v4, v3, v6

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "fr"

    new-instance v2, Ljava/util/HashSet;

    const/16 v3, 0x17

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "com"

    aput-object v4, v3, v6

    const-string/jumbo v4, "asso"

    aput-object v4, v3, v7

    const-string/jumbo v4, "nom"

    aput-object v4, v3, v8

    const-string/jumbo v4, "prd"

    aput-object v4, v3, v9

    const-string/jumbo v4, "presse"

    aput-object v4, v3, v10

    const-string/jumbo v4, "tm"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    const-string/jumbo v4, "aeroport"

    const/4 v5, 0x6

    aput-object v4, v3, v5

    const-string/jumbo v4, "assedic"

    const/4 v5, 0x7

    aput-object v4, v3, v5

    const-string/jumbo v4, "avocat"

    const/16 v5, 0x8

    aput-object v4, v3, v5

    const-string/jumbo v4, "avoues"

    const/16 v5, 0x9

    aput-object v4, v3, v5

    const-string/jumbo v4, "cci"

    const/16 v5, 0xa

    aput-object v4, v3, v5

    const-string/jumbo v4, "chambagri"

    const/16 v5, 0xb

    aput-object v4, v3, v5

    const-string/jumbo v4, "chirurgiens-dentistes"

    const/16 v5, 0xc

    aput-object v4, v3, v5

    const-string/jumbo v4, "experts-comptables"

    const/16 v5, 0xd

    aput-object v4, v3, v5

    const-string/jumbo v4, "geometre-expert"

    const/16 v5, 0xe

    aput-object v4, v3, v5

    const-string/jumbo v4, "gouv"

    const/16 v5, 0xf

    aput-object v4, v3, v5

    const-string/jumbo v4, "greta"

    const/16 v5, 0x10

    aput-object v4, v3, v5

    const-string/jumbo v4, "huissier-justice"

    const/16 v5, 0x11

    aput-object v4, v3, v5

    const-string/jumbo v4, "medecin"

    const/16 v5, 0x12

    aput-object v4, v3, v5

    const-string/jumbo v4, "notaires"

    const/16 v5, 0x13

    aput-object v4, v3, v5

    const-string/jumbo v4, "pharmacien"

    const/16 v5, 0x14

    aput-object v4, v3, v5

    const-string/jumbo v4, "port"

    const/16 v5, 0x15

    aput-object v4, v3, v5

    const-string/jumbo v4, "veterinaire"

    const/16 v5, 0x16

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "ge"

    new-instance v2, Ljava/util/HashSet;

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "com"

    aput-object v4, v3, v6

    const-string/jumbo v4, "edu"

    aput-object v4, v3, v7

    const-string/jumbo v4, "gov"

    aput-object v4, v3, v8

    const-string/jumbo v4, "org"

    aput-object v4, v3, v9

    const-string/jumbo v4, "mil"

    aput-object v4, v3, v10

    const-string/jumbo v4, "net"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    const-string/jumbo v4, "pvt"

    const/4 v5, 0x6

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "gg"

    new-instance v2, Ljava/util/HashSet;

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "co"

    aput-object v4, v3, v6

    const-string/jumbo v4, "org"

    aput-object v4, v3, v7

    const-string/jumbo v4, "net"

    aput-object v4, v3, v8

    const-string/jumbo v4, "sch"

    aput-object v4, v3, v9

    const-string/jumbo v4, "gov"

    aput-object v4, v3, v10

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "gh"

    new-instance v2, Ljava/util/HashSet;

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "com"

    aput-object v4, v3, v6

    const-string/jumbo v4, "edu"

    aput-object v4, v3, v7

    const-string/jumbo v4, "gov"

    aput-object v4, v3, v8

    const-string/jumbo v4, "org"

    aput-object v4, v3, v9

    const-string/jumbo v4, "mil"

    aput-object v4, v3, v10

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "gi"

    new-instance v2, Ljava/util/HashSet;

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "com"

    aput-object v4, v3, v6

    const-string/jumbo v4, "ltd"

    aput-object v4, v3, v7

    const-string/jumbo v4, "gov"

    aput-object v4, v3, v8

    const-string/jumbo v4, "mod"

    aput-object v4, v3, v9

    const-string/jumbo v4, "edu"

    aput-object v4, v3, v10

    const-string/jumbo v4, "org"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "gn"

    new-instance v2, Ljava/util/HashSet;

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "ac"

    aput-object v4, v3, v6

    const-string/jumbo v4, "com"

    aput-object v4, v3, v7

    const-string/jumbo v4, "edu"

    aput-object v4, v3, v8

    const-string/jumbo v4, "gov"

    aput-object v4, v3, v9

    const-string/jumbo v4, "org"

    aput-object v4, v3, v10

    const-string/jumbo v4, "net"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "gp"

    new-instance v2, Ljava/util/HashSet;

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "com"

    aput-object v4, v3, v6

    const-string/jumbo v4, "net"

    aput-object v4, v3, v7

    const-string/jumbo v4, "mobi"

    aput-object v4, v3, v8

    const-string/jumbo v4, "edu"

    aput-object v4, v3, v9

    const-string/jumbo v4, "org"

    aput-object v4, v3, v10

    const-string/jumbo v4, "asso"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "gr"

    new-instance v2, Ljava/util/HashSet;

    const/16 v3, 0x9

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "com"

    aput-object v4, v3, v6

    const-string/jumbo v4, "co"

    aput-object v4, v3, v7

    const-string/jumbo v4, "net"

    aput-object v4, v3, v8

    const-string/jumbo v4, "edu"

    aput-object v4, v3, v9

    const-string/jumbo v4, "org"

    aput-object v4, v3, v10

    const-string/jumbo v4, "gov"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    const-string/jumbo v4, "mil"

    const/4 v5, 0x6

    aput-object v4, v3, v5

    const-string/jumbo v4, "mod"

    const/4 v5, 0x7

    aput-object v4, v3, v5

    const-string/jumbo v4, "sch"

    const/16 v5, 0x8

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "gy"

    new-instance v2, Ljava/util/HashSet;

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "co"

    aput-object v4, v3, v6

    const-string/jumbo v4, "com"

    aput-object v4, v3, v7

    const-string/jumbo v4, "net"

    aput-object v4, v3, v8

    const-string/jumbo v4, "org"

    aput-object v4, v3, v9

    const-string/jumbo v4, "edu"

    aput-object v4, v3, v10

    const-string/jumbo v4, "gov"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "hk"

    new-instance v2, Ljava/util/HashSet;

    const/16 v3, 0xc

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "com"

    aput-object v4, v3, v6

    const-string/jumbo v4, "edu"

    aput-object v4, v3, v7

    const-string/jumbo v4, "gov"

    aput-object v4, v3, v8

    const-string/jumbo v4, "idv"

    aput-object v4, v3, v9

    const-string/jumbo v4, "net"

    aput-object v4, v3, v10

    const-string/jumbo v4, "org"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--55qx5d"

    const/4 v5, 0x6

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--wcvs22d"

    const/4 v5, 0x7

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--mxtq1m"

    const/16 v5, 0x8

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--gmqw5a"

    const/16 v5, 0x9

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--od0alg"

    const/16 v5, 0xa

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--uc0atv"

    const/16 v5, 0xb

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "xn--j6w193g"

    new-instance v2, Ljava/util/HashSet;

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "xn--55qx5d"

    aput-object v4, v3, v6

    const-string/jumbo v4, "xn--wcvs22d"

    aput-object v4, v3, v7

    const-string/jumbo v4, "xn--mxtq1m"

    aput-object v4, v3, v8

    const-string/jumbo v4, "xn--gmqw5a"

    aput-object v4, v3, v9

    const-string/jumbo v4, "xn--od0alg"

    aput-object v4, v3, v10

    const-string/jumbo v4, "xn--uc0atv"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "hn"

    new-instance v2, Ljava/util/HashSet;

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "com"

    aput-object v4, v3, v6

    const-string/jumbo v4, "edu"

    aput-object v4, v3, v7

    const-string/jumbo v4, "org"

    aput-object v4, v3, v8

    const-string/jumbo v4, "net"

    aput-object v4, v3, v9

    const-string/jumbo v4, "mil"

    aput-object v4, v3, v10

    const-string/jumbo v4, "gob"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "hr"

    new-instance v2, Ljava/util/HashSet;

    new-array v3, v10, [Ljava/lang/String;

    const-string/jumbo v4, "iz.hr"

    aput-object v4, v3, v6

    const-string/jumbo v4, "from.hr"

    aput-object v4, v3, v7

    const-string/jumbo v4, "name.hr"

    aput-object v4, v3, v8

    const-string/jumbo v4, "com.hr"

    aput-object v4, v3, v9

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "ht"

    new-instance v2, Ljava/util/HashSet;

    const/16 v3, 0x11

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "com"

    aput-object v4, v3, v6

    const-string/jumbo v4, "shop"

    aput-object v4, v3, v7

    const-string/jumbo v4, "firm"

    aput-object v4, v3, v8

    const-string/jumbo v4, "info"

    aput-object v4, v3, v9

    const-string/jumbo v4, "adult"

    aput-object v4, v3, v10

    const-string/jumbo v4, "net"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    const-string/jumbo v4, "pro"

    const/4 v5, 0x6

    aput-object v4, v3, v5

    const-string/jumbo v4, "org"

    const/4 v5, 0x7

    aput-object v4, v3, v5

    const-string/jumbo v4, "med"

    const/16 v5, 0x8

    aput-object v4, v3, v5

    const-string/jumbo v4, "art"

    const/16 v5, 0x9

    aput-object v4, v3, v5

    const-string/jumbo v4, "coop"

    const/16 v5, 0xa

    aput-object v4, v3, v5

    const-string/jumbo v4, "pol"

    const/16 v5, 0xb

    aput-object v4, v3, v5

    const-string/jumbo v4, "asso"

    const/16 v5, 0xc

    aput-object v4, v3, v5

    const-string/jumbo v4, "edu"

    const/16 v5, 0xd

    aput-object v4, v3, v5

    const-string/jumbo v4, "rel"

    const/16 v5, 0xe

    aput-object v4, v3, v5

    const-string/jumbo v4, "gouv"

    const/16 v5, 0xf

    aput-object v4, v3, v5

    const-string/jumbo v4, "perso"

    const/16 v5, 0x10

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "hu"

    new-instance v2, Ljava/util/HashSet;

    const/16 v3, 0x1f

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "co"

    aput-object v4, v3, v6

    const-string/jumbo v4, "info"

    aput-object v4, v3, v7

    const-string/jumbo v4, "org"

    aput-object v4, v3, v8

    const-string/jumbo v4, "priv"

    aput-object v4, v3, v9

    const-string/jumbo v4, "sport"

    aput-object v4, v3, v10

    const-string/jumbo v4, "tm"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    const-string/jumbo v4, "2000"

    const/4 v5, 0x6

    aput-object v4, v3, v5

    const-string/jumbo v4, "agrar"

    const/4 v5, 0x7

    aput-object v4, v3, v5

    const-string/jumbo v4, "bolt"

    const/16 v5, 0x8

    aput-object v4, v3, v5

    const-string/jumbo v4, "casino"

    const/16 v5, 0x9

    aput-object v4, v3, v5

    const-string/jumbo v4, "city"

    const/16 v5, 0xa

    aput-object v4, v3, v5

    const-string/jumbo v4, "erotica"

    const/16 v5, 0xb

    aput-object v4, v3, v5

    const-string/jumbo v4, "erotika"

    const/16 v5, 0xc

    aput-object v4, v3, v5

    const-string/jumbo v4, "film"

    const/16 v5, 0xd

    aput-object v4, v3, v5

    const-string/jumbo v4, "forum"

    const/16 v5, 0xe

    aput-object v4, v3, v5

    const-string/jumbo v4, "games"

    const/16 v5, 0xf

    aput-object v4, v3, v5

    const-string/jumbo v4, "hotel"

    const/16 v5, 0x10

    aput-object v4, v3, v5

    const-string/jumbo v4, "ingatlan"

    const/16 v5, 0x11

    aput-object v4, v3, v5

    const-string/jumbo v4, "jogasz"

    const/16 v5, 0x12

    aput-object v4, v3, v5

    const-string/jumbo v4, "konyvelo"

    const/16 v5, 0x13

    aput-object v4, v3, v5

    const-string/jumbo v4, "lakas"

    const/16 v5, 0x14

    aput-object v4, v3, v5

    const-string/jumbo v4, "media"

    const/16 v5, 0x15

    aput-object v4, v3, v5

    const-string/jumbo v4, "news"

    const/16 v5, 0x16

    aput-object v4, v3, v5

    const-string/jumbo v4, "reklam"

    const/16 v5, 0x17

    aput-object v4, v3, v5

    const-string/jumbo v4, "sex"

    const/16 v5, 0x18

    aput-object v4, v3, v5

    const-string/jumbo v4, "shop"

    const/16 v5, 0x19

    aput-object v4, v3, v5

    const-string/jumbo v4, "suli"

    const/16 v5, 0x1a

    aput-object v4, v3, v5

    const-string/jumbo v4, "szex"

    const/16 v5, 0x1b

    aput-object v4, v3, v5

    const-string/jumbo v4, "tozsde"

    const/16 v5, 0x1c

    aput-object v4, v3, v5

    const-string/jumbo v4, "utazas"

    const/16 v5, 0x1d

    aput-object v4, v3, v5

    const-string/jumbo v4, "video"

    const/16 v5, 0x1e

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "id"

    new-instance v2, Ljava/util/HashSet;

    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "ac"

    aput-object v4, v3, v6

    const-string/jumbo v4, "co"

    aput-object v4, v3, v7

    const-string/jumbo v4, "go"

    aput-object v4, v3, v8

    const-string/jumbo v4, "mil"

    aput-object v4, v3, v9

    const-string/jumbo v4, "net"

    aput-object v4, v3, v10

    const-string/jumbo v4, "or"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    const-string/jumbo v4, "sch"

    const/4 v5, 0x6

    aput-object v4, v3, v5

    const-string/jumbo v4, "web"

    const/4 v5, 0x7

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "im"

    new-instance v2, Ljava/util/HashSet;

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "co.im"

    aput-object v4, v3, v6

    const-string/jumbo v4, "com"

    aput-object v4, v3, v7

    const-string/jumbo v4, "net.im"

    aput-object v4, v3, v8

    const-string/jumbo v4, "gov.im"

    aput-object v4, v3, v9

    const-string/jumbo v4, "org.im"

    aput-object v4, v3, v10

    const-string/jumbo v4, "ac.im"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "in"

    new-instance v2, Ljava/util/HashSet;

    const/16 v3, 0xd

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "co"

    aput-object v4, v3, v6

    const-string/jumbo v4, "firm"

    aput-object v4, v3, v7

    const-string/jumbo v4, "ernet"

    aput-object v4, v3, v8

    const-string/jumbo v4, "net"

    aput-object v4, v3, v9

    const-string/jumbo v4, "org"

    aput-object v4, v3, v10

    const-string/jumbo v4, "gen"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    const-string/jumbo v4, "ind"

    const/4 v5, 0x6

    aput-object v4, v3, v5

    const-string/jumbo v4, "nic"

    const/4 v5, 0x7

    aput-object v4, v3, v5

    const-string/jumbo v4, "ac"

    const/16 v5, 0x8

    aput-object v4, v3, v5

    const-string/jumbo v4, "edu"

    const/16 v5, 0x9

    aput-object v4, v3, v5

    const-string/jumbo v4, "res"

    const/16 v5, 0xa

    aput-object v4, v3, v5

    const-string/jumbo v4, "gov"

    const/16 v5, 0xb

    aput-object v4, v3, v5

    const-string/jumbo v4, "mil"

    const/16 v5, 0xc

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "iq"

    new-instance v2, Ljava/util/HashSet;

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "gov"

    aput-object v4, v3, v6

    const-string/jumbo v4, "edu"

    aput-object v4, v3, v7

    const-string/jumbo v4, "mil"

    aput-object v4, v3, v8

    const-string/jumbo v4, "com"

    aput-object v4, v3, v9

    const-string/jumbo v4, "org"

    aput-object v4, v3, v10

    const-string/jumbo v4, "net"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "ir"

    new-instance v2, Ljava/util/HashSet;

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "ac"

    aput-object v4, v3, v6

    const-string/jumbo v4, "co"

    aput-object v4, v3, v7

    const-string/jumbo v4, "gov"

    aput-object v4, v3, v8

    const-string/jumbo v4, "id"

    aput-object v4, v3, v9

    const-string/jumbo v4, "net"

    aput-object v4, v3, v10

    const-string/jumbo v4, "org"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    const-string/jumbo v4, "sch"

    const/4 v5, 0x6

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "is"

    new-instance v2, Ljava/util/HashSet;

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "net"

    aput-object v4, v3, v6

    const-string/jumbo v4, "com"

    aput-object v4, v3, v7

    const-string/jumbo v4, "edu"

    aput-object v4, v3, v8

    const-string/jumbo v4, "gov"

    aput-object v4, v3, v9

    const-string/jumbo v4, "org"

    aput-object v4, v3, v10

    const-string/jumbo v4, "int"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "it"

    new-instance v2, Ljava/util/HashSet;

    const/16 v3, 0x115

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "gov"

    aput-object v4, v3, v6

    const-string/jumbo v4, "edu"

    aput-object v4, v3, v7

    const-string/jumbo v4, "agrigento"

    aput-object v4, v3, v8

    const-string/jumbo v4, "ag"

    aput-object v4, v3, v9

    const-string/jumbo v4, "alessandria"

    aput-object v4, v3, v10

    const-string/jumbo v4, "al"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    const-string/jumbo v4, "ancona"

    const/4 v5, 0x6

    aput-object v4, v3, v5

    const-string/jumbo v4, "an"

    const/4 v5, 0x7

    aput-object v4, v3, v5

    const-string/jumbo v4, "aosta"

    const/16 v5, 0x8

    aput-object v4, v3, v5

    const-string/jumbo v4, "aoste"

    const/16 v5, 0x9

    aput-object v4, v3, v5

    const-string/jumbo v4, "ao"

    const/16 v5, 0xa

    aput-object v4, v3, v5

    const-string/jumbo v4, "arezzo"

    const/16 v5, 0xb

    aput-object v4, v3, v5

    const-string/jumbo v4, "ar"

    const/16 v5, 0xc

    aput-object v4, v3, v5

    const-string/jumbo v4, "ascoli-piceno"

    const/16 v5, 0xd

    aput-object v4, v3, v5

    const-string/jumbo v4, "ascolipiceno"

    const/16 v5, 0xe

    aput-object v4, v3, v5

    const-string/jumbo v4, "ap"

    const/16 v5, 0xf

    aput-object v4, v3, v5

    const-string/jumbo v4, "asti"

    const/16 v5, 0x10

    aput-object v4, v3, v5

    const-string/jumbo v4, "at"

    const/16 v5, 0x11

    aput-object v4, v3, v5

    const-string/jumbo v4, "avellino"

    const/16 v5, 0x12

    aput-object v4, v3, v5

    const-string/jumbo v4, "av"

    const/16 v5, 0x13

    aput-object v4, v3, v5

    const-string/jumbo v4, "bari"

    const/16 v5, 0x14

    aput-object v4, v3, v5

    const-string/jumbo v4, "ba"

    const/16 v5, 0x15

    aput-object v4, v3, v5

    const-string/jumbo v4, "andria-barletta-trani"

    const/16 v5, 0x16

    aput-object v4, v3, v5

    const-string/jumbo v4, "andriabarlettatrani"

    const/16 v5, 0x17

    aput-object v4, v3, v5

    const-string/jumbo v4, "trani-barletta-andria"

    const/16 v5, 0x18

    aput-object v4, v3, v5

    const-string/jumbo v4, "tranibarlettaandria"

    const/16 v5, 0x19

    aput-object v4, v3, v5

    const-string/jumbo v4, "barletta-trani-andria"

    const/16 v5, 0x1a

    aput-object v4, v3, v5

    const-string/jumbo v4, "barlettatraniandria"

    const/16 v5, 0x1b

    aput-object v4, v3, v5

    const-string/jumbo v4, "andria-trani-barletta"

    const/16 v5, 0x1c

    aput-object v4, v3, v5

    const-string/jumbo v4, "andriatranibarletta"

    const/16 v5, 0x1d

    aput-object v4, v3, v5

    const-string/jumbo v4, "trani-andria-barletta"

    const/16 v5, 0x1e

    aput-object v4, v3, v5

    const-string/jumbo v4, "traniandriabarletta"

    const/16 v5, 0x1f

    aput-object v4, v3, v5

    const-string/jumbo v4, "bt"

    const/16 v5, 0x20

    aput-object v4, v3, v5

    const-string/jumbo v4, "belluno"

    const/16 v5, 0x21

    aput-object v4, v3, v5

    const-string/jumbo v4, "bl"

    const/16 v5, 0x22

    aput-object v4, v3, v5

    const-string/jumbo v4, "benevento"

    const/16 v5, 0x23

    aput-object v4, v3, v5

    const-string/jumbo v4, "bn"

    const/16 v5, 0x24

    aput-object v4, v3, v5

    const-string/jumbo v4, "bergamo"

    const/16 v5, 0x25

    aput-object v4, v3, v5

    const-string/jumbo v4, "bg"

    const/16 v5, 0x26

    aput-object v4, v3, v5

    const-string/jumbo v4, "biella"

    const/16 v5, 0x27

    aput-object v4, v3, v5

    const-string/jumbo v4, "bi"

    const/16 v5, 0x28

    aput-object v4, v3, v5

    const-string/jumbo v4, "bologna"

    const/16 v5, 0x29

    aput-object v4, v3, v5

    const-string/jumbo v4, "bo"

    const/16 v5, 0x2a

    aput-object v4, v3, v5

    const-string/jumbo v4, "bolzano"

    const/16 v5, 0x2b

    aput-object v4, v3, v5

    const-string/jumbo v4, "bozen"

    const/16 v5, 0x2c

    aput-object v4, v3, v5

    const-string/jumbo v4, "balsan"

    const/16 v5, 0x2d

    aput-object v4, v3, v5

    const-string/jumbo v4, "alto-adige"

    const/16 v5, 0x2e

    aput-object v4, v3, v5

    const-string/jumbo v4, "altoadige"

    const/16 v5, 0x2f

    aput-object v4, v3, v5

    const-string/jumbo v4, "suedtirol"

    const/16 v5, 0x30

    aput-object v4, v3, v5

    const-string/jumbo v4, "bz"

    const/16 v5, 0x31

    aput-object v4, v3, v5

    const-string/jumbo v4, "brescia"

    const/16 v5, 0x32

    aput-object v4, v3, v5

    const-string/jumbo v4, "bs"

    const/16 v5, 0x33

    aput-object v4, v3, v5

    const-string/jumbo v4, "brindisi"

    const/16 v5, 0x34

    aput-object v4, v3, v5

    const-string/jumbo v4, "br"

    const/16 v5, 0x35

    aput-object v4, v3, v5

    const-string/jumbo v4, "cagliari"

    const/16 v5, 0x36

    aput-object v4, v3, v5

    const-string/jumbo v4, "ca"

    const/16 v5, 0x37

    aput-object v4, v3, v5

    const-string/jumbo v4, "caltanissetta"

    const/16 v5, 0x38

    aput-object v4, v3, v5

    const-string/jumbo v4, "cl"

    const/16 v5, 0x39

    aput-object v4, v3, v5

    const-string/jumbo v4, "campobasso"

    const/16 v5, 0x3a

    aput-object v4, v3, v5

    const-string/jumbo v4, "cb"

    const/16 v5, 0x3b

    aput-object v4, v3, v5

    const-string/jumbo v4, "carboniaiglesias"

    const/16 v5, 0x3c

    aput-object v4, v3, v5

    const-string/jumbo v4, "carbonia-iglesias"

    const/16 v5, 0x3d

    aput-object v4, v3, v5

    const-string/jumbo v4, "iglesias-carbonia"

    const/16 v5, 0x3e

    aput-object v4, v3, v5

    const-string/jumbo v4, "iglesiascarbonia"

    const/16 v5, 0x3f

    aput-object v4, v3, v5

    const-string/jumbo v4, "ci"

    const/16 v5, 0x40

    aput-object v4, v3, v5

    const-string/jumbo v4, "caserta"

    const/16 v5, 0x41

    aput-object v4, v3, v5

    const-string/jumbo v4, "ce"

    const/16 v5, 0x42

    aput-object v4, v3, v5

    const-string/jumbo v4, "catania"

    const/16 v5, 0x43

    aput-object v4, v3, v5

    const-string/jumbo v4, "ct"

    const/16 v5, 0x44

    aput-object v4, v3, v5

    const-string/jumbo v4, "catanzaro"

    const/16 v5, 0x45

    aput-object v4, v3, v5

    const-string/jumbo v4, "cz"

    const/16 v5, 0x46

    aput-object v4, v3, v5

    const-string/jumbo v4, "chieti"

    const/16 v5, 0x47

    aput-object v4, v3, v5

    const-string/jumbo v4, "ch"

    const/16 v5, 0x48

    aput-object v4, v3, v5

    const-string/jumbo v4, "como"

    const/16 v5, 0x49

    aput-object v4, v3, v5

    const-string/jumbo v4, "co"

    const/16 v5, 0x4a

    aput-object v4, v3, v5

    const-string/jumbo v4, "cosenza"

    const/16 v5, 0x4b

    aput-object v4, v3, v5

    const-string/jumbo v4, "cs"

    const/16 v5, 0x4c

    aput-object v4, v3, v5

    const-string/jumbo v4, "cremona"

    const/16 v5, 0x4d

    aput-object v4, v3, v5

    const-string/jumbo v4, "cr"

    const/16 v5, 0x4e

    aput-object v4, v3, v5

    const-string/jumbo v4, "crotone"

    const/16 v5, 0x4f

    aput-object v4, v3, v5

    const-string/jumbo v4, "kr"

    const/16 v5, 0x50

    aput-object v4, v3, v5

    const-string/jumbo v4, "cuneo"

    const/16 v5, 0x51

    aput-object v4, v3, v5

    const-string/jumbo v4, "cn"

    const/16 v5, 0x52

    aput-object v4, v3, v5

    const-string/jumbo v4, "dell-ogliastra"

    const/16 v5, 0x53

    aput-object v4, v3, v5

    const-string/jumbo v4, "dellogliastra"

    const/16 v5, 0x54

    aput-object v4, v3, v5

    const-string/jumbo v4, "ogliastra"

    const/16 v5, 0x55

    aput-object v4, v3, v5

    const-string/jumbo v4, "og"

    const/16 v5, 0x56

    aput-object v4, v3, v5

    const-string/jumbo v4, "enna"

    const/16 v5, 0x57

    aput-object v4, v3, v5

    const-string/jumbo v4, "en"

    const/16 v5, 0x58

    aput-object v4, v3, v5

    const-string/jumbo v4, "ferrara"

    const/16 v5, 0x59

    aput-object v4, v3, v5

    const-string/jumbo v4, "fe"

    const/16 v5, 0x5a

    aput-object v4, v3, v5

    const-string/jumbo v4, "fermo"

    const/16 v5, 0x5b

    aput-object v4, v3, v5

    const-string/jumbo v4, "fm"

    const/16 v5, 0x5c

    aput-object v4, v3, v5

    const-string/jumbo v4, "firenze"

    const/16 v5, 0x5d

    aput-object v4, v3, v5

    const-string/jumbo v4, "florence"

    const/16 v5, 0x5e

    aput-object v4, v3, v5

    const-string/jumbo v4, "fi"

    const/16 v5, 0x5f

    aput-object v4, v3, v5

    const-string/jumbo v4, "foggia"

    const/16 v5, 0x60

    aput-object v4, v3, v5

    const-string/jumbo v4, "fg"

    const/16 v5, 0x61

    aput-object v4, v3, v5

    const-string/jumbo v4, "forli-cesena"

    const/16 v5, 0x62

    aput-object v4, v3, v5

    const-string/jumbo v4, "forlicesena"

    const/16 v5, 0x63

    aput-object v4, v3, v5

    const-string/jumbo v4, "cesena-forli"

    const/16 v5, 0x64

    aput-object v4, v3, v5

    const-string/jumbo v4, "cesenaforli"

    const/16 v5, 0x65

    aput-object v4, v3, v5

    const-string/jumbo v4, "fc"

    const/16 v5, 0x66

    aput-object v4, v3, v5

    const-string/jumbo v4, "frosinone"

    const/16 v5, 0x67

    aput-object v4, v3, v5

    const-string/jumbo v4, "fr"

    const/16 v5, 0x68

    aput-object v4, v3, v5

    const-string/jumbo v4, "genova"

    const/16 v5, 0x69

    aput-object v4, v3, v5

    const-string/jumbo v4, "genoa"

    const/16 v5, 0x6a

    aput-object v4, v3, v5

    const-string/jumbo v4, "ge"

    const/16 v5, 0x6b

    aput-object v4, v3, v5

    const-string/jumbo v4, "gorizia"

    const/16 v5, 0x6c

    aput-object v4, v3, v5

    const-string/jumbo v4, "go"

    const/16 v5, 0x6d

    aput-object v4, v3, v5

    const-string/jumbo v4, "grosseto"

    const/16 v5, 0x6e

    aput-object v4, v3, v5

    const-string/jumbo v4, "gr"

    const/16 v5, 0x6f

    aput-object v4, v3, v5

    const-string/jumbo v4, "imperia"

    const/16 v5, 0x70

    aput-object v4, v3, v5

    const-string/jumbo v4, "im"

    const/16 v5, 0x71

    aput-object v4, v3, v5

    const-string/jumbo v4, "isernia"

    const/16 v5, 0x72

    aput-object v4, v3, v5

    const-string/jumbo v4, "is"

    const/16 v5, 0x73

    aput-object v4, v3, v5

    const-string/jumbo v4, "laquila"

    const/16 v5, 0x74

    aput-object v4, v3, v5

    const-string/jumbo v4, "aquila"

    const/16 v5, 0x75

    aput-object v4, v3, v5

    const-string/jumbo v4, "aq"

    const/16 v5, 0x76

    aput-object v4, v3, v5

    const-string/jumbo v4, "la-spezia"

    const/16 v5, 0x77

    aput-object v4, v3, v5

    const-string/jumbo v4, "laspezia"

    const/16 v5, 0x78

    aput-object v4, v3, v5

    const-string/jumbo v4, "sp"

    const/16 v5, 0x79

    aput-object v4, v3, v5

    const-string/jumbo v4, "latina"

    const/16 v5, 0x7a

    aput-object v4, v3, v5

    const-string/jumbo v4, "lt"

    const/16 v5, 0x7b

    aput-object v4, v3, v5

    const-string/jumbo v4, "lecce"

    const/16 v5, 0x7c

    aput-object v4, v3, v5

    const-string/jumbo v4, "le"

    const/16 v5, 0x7d

    aput-object v4, v3, v5

    const-string/jumbo v4, "lecco"

    const/16 v5, 0x7e

    aput-object v4, v3, v5

    const-string/jumbo v4, "lc"

    const/16 v5, 0x7f

    aput-object v4, v3, v5

    const-string/jumbo v4, "livorno"

    const/16 v5, 0x80

    aput-object v4, v3, v5

    const-string/jumbo v4, "li"

    const/16 v5, 0x81

    aput-object v4, v3, v5

    const-string/jumbo v4, "lodi"

    const/16 v5, 0x82

    aput-object v4, v3, v5

    const-string/jumbo v4, "lo"

    const/16 v5, 0x83

    aput-object v4, v3, v5

    const-string/jumbo v4, "lucca"

    const/16 v5, 0x84

    aput-object v4, v3, v5

    const-string/jumbo v4, "lu"

    const/16 v5, 0x85

    aput-object v4, v3, v5

    const-string/jumbo v4, "macerata"

    const/16 v5, 0x86

    aput-object v4, v3, v5

    const-string/jumbo v4, "mc"

    const/16 v5, 0x87

    aput-object v4, v3, v5

    const-string/jumbo v4, "mantova"

    const/16 v5, 0x88

    aput-object v4, v3, v5

    const-string/jumbo v4, "mn"

    const/16 v5, 0x89

    aput-object v4, v3, v5

    const-string/jumbo v4, "massa-carrara"

    const/16 v5, 0x8a

    aput-object v4, v3, v5

    const-string/jumbo v4, "massacarrara"

    const/16 v5, 0x8b

    aput-object v4, v3, v5

    const-string/jumbo v4, "carrara-massa"

    const/16 v5, 0x8c

    aput-object v4, v3, v5

    const-string/jumbo v4, "carraramassa"

    const/16 v5, 0x8d

    aput-object v4, v3, v5

    const-string/jumbo v4, "ms"

    const/16 v5, 0x8e

    aput-object v4, v3, v5

    const-string/jumbo v4, "matera"

    const/16 v5, 0x8f

    aput-object v4, v3, v5

    const-string/jumbo v4, "mt"

    const/16 v5, 0x90

    aput-object v4, v3, v5

    const-string/jumbo v4, "medio-campidano"

    const/16 v5, 0x91

    aput-object v4, v3, v5

    const-string/jumbo v4, "mediocampidano"

    const/16 v5, 0x92

    aput-object v4, v3, v5

    const-string/jumbo v4, "campidano-medio"

    const/16 v5, 0x93

    aput-object v4, v3, v5

    const-string/jumbo v4, "campidanomedio"

    const/16 v5, 0x94

    aput-object v4, v3, v5

    const-string/jumbo v4, "vs"

    const/16 v5, 0x95

    aput-object v4, v3, v5

    const-string/jumbo v4, "messina"

    const/16 v5, 0x96

    aput-object v4, v3, v5

    const-string/jumbo v4, "me"

    const/16 v5, 0x97

    aput-object v4, v3, v5

    const-string/jumbo v4, "milano"

    const/16 v5, 0x98

    aput-object v4, v3, v5

    const-string/jumbo v4, "milan"

    const/16 v5, 0x99

    aput-object v4, v3, v5

    const-string/jumbo v4, "mi"

    const/16 v5, 0x9a

    aput-object v4, v3, v5

    const-string/jumbo v4, "modena"

    const/16 v5, 0x9b

    aput-object v4, v3, v5

    const-string/jumbo v4, "mo"

    const/16 v5, 0x9c

    aput-object v4, v3, v5

    const-string/jumbo v4, "monza"

    const/16 v5, 0x9d

    aput-object v4, v3, v5

    const-string/jumbo v4, "monza-brianza"

    const/16 v5, 0x9e

    aput-object v4, v3, v5

    const-string/jumbo v4, "monzabrianza"

    const/16 v5, 0x9f

    aput-object v4, v3, v5

    const-string/jumbo v4, "monzaebrianza"

    const/16 v5, 0xa0

    aput-object v4, v3, v5

    const-string/jumbo v4, "monzaedellabrianza"

    const/16 v5, 0xa1

    aput-object v4, v3, v5

    const-string/jumbo v4, "monza-e-della-brianza"

    const/16 v5, 0xa2

    aput-object v4, v3, v5

    const-string/jumbo v4, "mb"

    const/16 v5, 0xa3

    aput-object v4, v3, v5

    const-string/jumbo v4, "napoli"

    const/16 v5, 0xa4

    aput-object v4, v3, v5

    const-string/jumbo v4, "naples"

    const/16 v5, 0xa5

    aput-object v4, v3, v5

    const-string/jumbo v4, "na"

    const/16 v5, 0xa6

    aput-object v4, v3, v5

    const-string/jumbo v4, "novara"

    const/16 v5, 0xa7

    aput-object v4, v3, v5

    const-string/jumbo v4, "no"

    const/16 v5, 0xa8

    aput-object v4, v3, v5

    const-string/jumbo v4, "nuoro"

    const/16 v5, 0xa9

    aput-object v4, v3, v5

    const-string/jumbo v4, "nu"

    const/16 v5, 0xaa

    aput-object v4, v3, v5

    const-string/jumbo v4, "oristano"

    const/16 v5, 0xab

    aput-object v4, v3, v5

    const-string/jumbo v4, "or"

    const/16 v5, 0xac

    aput-object v4, v3, v5

    const-string/jumbo v4, "padova"

    const/16 v5, 0xad

    aput-object v4, v3, v5

    const-string/jumbo v4, "padua"

    const/16 v5, 0xae

    aput-object v4, v3, v5

    const-string/jumbo v4, "pd"

    const/16 v5, 0xaf

    aput-object v4, v3, v5

    const-string/jumbo v4, "palermo"

    const/16 v5, 0xb0

    aput-object v4, v3, v5

    const-string/jumbo v4, "pa"

    const/16 v5, 0xb1

    aput-object v4, v3, v5

    const-string/jumbo v4, "parma"

    const/16 v5, 0xb2

    aput-object v4, v3, v5

    const-string/jumbo v4, "pr"

    const/16 v5, 0xb3

    aput-object v4, v3, v5

    const-string/jumbo v4, "pavia"

    const/16 v5, 0xb4

    aput-object v4, v3, v5

    const-string/jumbo v4, "pv"

    const/16 v5, 0xb5

    aput-object v4, v3, v5

    const-string/jumbo v4, "perugia"

    const/16 v5, 0xb6

    aput-object v4, v3, v5

    const-string/jumbo v4, "pg"

    const/16 v5, 0xb7

    aput-object v4, v3, v5

    const-string/jumbo v4, "pescara"

    const/16 v5, 0xb8

    aput-object v4, v3, v5

    const-string/jumbo v4, "pe"

    const/16 v5, 0xb9

    aput-object v4, v3, v5

    const-string/jumbo v4, "pesaro-urbino"

    const/16 v5, 0xba

    aput-object v4, v3, v5

    const-string/jumbo v4, "pesarourbino"

    const/16 v5, 0xbb

    aput-object v4, v3, v5

    const-string/jumbo v4, "urbino-pesaro"

    const/16 v5, 0xbc

    aput-object v4, v3, v5

    const-string/jumbo v4, "urbinopesaro"

    const/16 v5, 0xbd

    aput-object v4, v3, v5

    const-string/jumbo v4, "pu"

    const/16 v5, 0xbe

    aput-object v4, v3, v5

    const-string/jumbo v4, "piacenza"

    const/16 v5, 0xbf

    aput-object v4, v3, v5

    const-string/jumbo v4, "pc"

    const/16 v5, 0xc0

    aput-object v4, v3, v5

    const-string/jumbo v4, "pisa"

    const/16 v5, 0xc1

    aput-object v4, v3, v5

    const-string/jumbo v4, "pi"

    const/16 v5, 0xc2

    aput-object v4, v3, v5

    const-string/jumbo v4, "pistoia"

    const/16 v5, 0xc3

    aput-object v4, v3, v5

    const-string/jumbo v4, "pt"

    const/16 v5, 0xc4

    aput-object v4, v3, v5

    const-string/jumbo v4, "pordenone"

    const/16 v5, 0xc5

    aput-object v4, v3, v5

    const-string/jumbo v4, "pn"

    const/16 v5, 0xc6

    aput-object v4, v3, v5

    const-string/jumbo v4, "potenza"

    const/16 v5, 0xc7

    aput-object v4, v3, v5

    const-string/jumbo v4, "pz"

    const/16 v5, 0xc8

    aput-object v4, v3, v5

    const-string/jumbo v4, "prato"

    const/16 v5, 0xc9

    aput-object v4, v3, v5

    const-string/jumbo v4, "po"

    const/16 v5, 0xca

    aput-object v4, v3, v5

    const-string/jumbo v4, "ragusa"

    const/16 v5, 0xcb

    aput-object v4, v3, v5

    const-string/jumbo v4, "rg"

    const/16 v5, 0xcc

    aput-object v4, v3, v5

    const-string/jumbo v4, "ravenna"

    const/16 v5, 0xcd

    aput-object v4, v3, v5

    const-string/jumbo v4, "ra"

    const/16 v5, 0xce

    aput-object v4, v3, v5

    const-string/jumbo v4, "reggio-calabria"

    const/16 v5, 0xcf

    aput-object v4, v3, v5

    const-string/jumbo v4, "reggiocalabria"

    const/16 v5, 0xd0

    aput-object v4, v3, v5

    const-string/jumbo v4, "rc"

    const/16 v5, 0xd1

    aput-object v4, v3, v5

    const-string/jumbo v4, "reggio-emilia"

    const/16 v5, 0xd2

    aput-object v4, v3, v5

    const-string/jumbo v4, "reggioemilia"

    const/16 v5, 0xd3

    aput-object v4, v3, v5

    const-string/jumbo v4, "re"

    const/16 v5, 0xd4

    aput-object v4, v3, v5

    const-string/jumbo v4, "rieti"

    const/16 v5, 0xd5

    aput-object v4, v3, v5

    const-string/jumbo v4, "ri"

    const/16 v5, 0xd6

    aput-object v4, v3, v5

    const-string/jumbo v4, "rimini"

    const/16 v5, 0xd7

    aput-object v4, v3, v5

    const-string/jumbo v4, "rn"

    const/16 v5, 0xd8

    aput-object v4, v3, v5

    const-string/jumbo v4, "roma"

    const/16 v5, 0xd9

    aput-object v4, v3, v5

    const-string/jumbo v4, "rome"

    const/16 v5, 0xda

    aput-object v4, v3, v5

    const-string/jumbo v4, "rm"

    const/16 v5, 0xdb

    aput-object v4, v3, v5

    const-string/jumbo v4, "rovigo"

    const/16 v5, 0xdc

    aput-object v4, v3, v5

    const-string/jumbo v4, "ro"

    const/16 v5, 0xdd

    aput-object v4, v3, v5

    const-string/jumbo v4, "salerno"

    const/16 v5, 0xde

    aput-object v4, v3, v5

    const-string/jumbo v4, "sa"

    const/16 v5, 0xdf

    aput-object v4, v3, v5

    const-string/jumbo v4, "sassari"

    const/16 v5, 0xe0

    aput-object v4, v3, v5

    const-string/jumbo v4, "ss"

    const/16 v5, 0xe1

    aput-object v4, v3, v5

    const-string/jumbo v4, "savona"

    const/16 v5, 0xe2

    aput-object v4, v3, v5

    const-string/jumbo v4, "sv"

    const/16 v5, 0xe3

    aput-object v4, v3, v5

    const-string/jumbo v4, "siena"

    const/16 v5, 0xe4

    aput-object v4, v3, v5

    const-string/jumbo v4, "si"

    const/16 v5, 0xe5

    aput-object v4, v3, v5

    const-string/jumbo v4, "siracusa"

    const/16 v5, 0xe6

    aput-object v4, v3, v5

    const-string/jumbo v4, "sr"

    const/16 v5, 0xe7

    aput-object v4, v3, v5

    const-string/jumbo v4, "sondrio"

    const/16 v5, 0xe8

    aput-object v4, v3, v5

    const-string/jumbo v4, "so"

    const/16 v5, 0xe9

    aput-object v4, v3, v5

    const-string/jumbo v4, "taranto"

    const/16 v5, 0xea

    aput-object v4, v3, v5

    const-string/jumbo v4, "ta"

    const/16 v5, 0xeb

    aput-object v4, v3, v5

    const-string/jumbo v4, "tempio-olbia"

    const/16 v5, 0xec

    aput-object v4, v3, v5

    const-string/jumbo v4, "tempioolbia"

    const/16 v5, 0xed

    aput-object v4, v3, v5

    const-string/jumbo v4, "olbia-tempio"

    const/16 v5, 0xee

    aput-object v4, v3, v5

    const-string/jumbo v4, "olbiatempio"

    const/16 v5, 0xef

    aput-object v4, v3, v5

    const-string/jumbo v4, "ot"

    const/16 v5, 0xf0

    aput-object v4, v3, v5

    const-string/jumbo v4, "teramo"

    const/16 v5, 0xf1

    aput-object v4, v3, v5

    const-string/jumbo v4, "te"

    const/16 v5, 0xf2

    aput-object v4, v3, v5

    const-string/jumbo v4, "terni"

    const/16 v5, 0xf3

    aput-object v4, v3, v5

    const-string/jumbo v4, "tr"

    const/16 v5, 0xf4

    aput-object v4, v3, v5

    const-string/jumbo v4, "torino"

    const/16 v5, 0xf5

    aput-object v4, v3, v5

    const-string/jumbo v4, "turin"

    const/16 v5, 0xf6

    aput-object v4, v3, v5

    const-string/jumbo v4, "to"

    const/16 v5, 0xf7

    aput-object v4, v3, v5

    const-string/jumbo v4, "trapani"

    const/16 v5, 0xf8

    aput-object v4, v3, v5

    const-string/jumbo v4, "tp"

    const/16 v5, 0xf9

    aput-object v4, v3, v5

    const-string/jumbo v4, "trento"

    const/16 v5, 0xfa

    aput-object v4, v3, v5

    const-string/jumbo v4, "trentino"

    const/16 v5, 0xfb

    aput-object v4, v3, v5

    const-string/jumbo v4, "tn"

    const/16 v5, 0xfc

    aput-object v4, v3, v5

    const-string/jumbo v4, "treviso"

    const/16 v5, 0xfd

    aput-object v4, v3, v5

    const-string/jumbo v4, "tv"

    const/16 v5, 0xfe

    aput-object v4, v3, v5

    const-string/jumbo v4, "trieste"

    const/16 v5, 0xff

    aput-object v4, v3, v5

    const-string/jumbo v4, "ts"

    const/16 v5, 0x100

    aput-object v4, v3, v5

    const-string/jumbo v4, "udine"

    const/16 v5, 0x101

    aput-object v4, v3, v5

    const-string/jumbo v4, "ud"

    const/16 v5, 0x102

    aput-object v4, v3, v5

    const-string/jumbo v4, "varese"

    const/16 v5, 0x103

    aput-object v4, v3, v5

    const-string/jumbo v4, "va"

    const/16 v5, 0x104

    aput-object v4, v3, v5

    const-string/jumbo v4, "venezia"

    const/16 v5, 0x105

    aput-object v4, v3, v5

    const-string/jumbo v4, "venice"

    const/16 v5, 0x106

    aput-object v4, v3, v5

    const-string/jumbo v4, "ve"

    const/16 v5, 0x107

    aput-object v4, v3, v5

    const-string/jumbo v4, "verbania"

    const/16 v5, 0x108

    aput-object v4, v3, v5

    const-string/jumbo v4, "vb"

    const/16 v5, 0x109

    aput-object v4, v3, v5

    const-string/jumbo v4, "vercelli"

    const/16 v5, 0x10a

    aput-object v4, v3, v5

    const-string/jumbo v4, "vc"

    const/16 v5, 0x10b

    aput-object v4, v3, v5

    const-string/jumbo v4, "verona"

    const/16 v5, 0x10c

    aput-object v4, v3, v5

    const-string/jumbo v4, "vr"

    const/16 v5, 0x10d

    aput-object v4, v3, v5

    const-string/jumbo v4, "vibo-valentia"

    const/16 v5, 0x10e

    aput-object v4, v3, v5

    const-string/jumbo v4, "vibovalentia"

    const/16 v5, 0x10f

    aput-object v4, v3, v5

    const-string/jumbo v4, "vv"

    const/16 v5, 0x110

    aput-object v4, v3, v5

    const-string/jumbo v4, "vicenza"

    const/16 v5, 0x111

    aput-object v4, v3, v5

    const-string/jumbo v4, "vi"

    const/16 v5, 0x112

    aput-object v4, v3, v5

    const-string/jumbo v4, "viterbo"

    const/16 v5, 0x113

    aput-object v4, v3, v5

    const-string/jumbo v4, "vt"

    const/16 v5, 0x114

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "je"

    new-instance v2, Ljava/util/HashSet;

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "co"

    aput-object v4, v3, v6

    const-string/jumbo v4, "org"

    aput-object v4, v3, v7

    const-string/jumbo v4, "net"

    aput-object v4, v3, v8

    const-string/jumbo v4, "sch"

    aput-object v4, v3, v9

    const-string/jumbo v4, "gov"

    aput-object v4, v3, v10

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "jo"

    new-instance v2, Ljava/util/HashSet;

    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "com"

    aput-object v4, v3, v6

    const-string/jumbo v4, "org"

    aput-object v4, v3, v7

    const-string/jumbo v4, "net"

    aput-object v4, v3, v8

    const-string/jumbo v4, "edu"

    aput-object v4, v3, v9

    const-string/jumbo v4, "sch"

    aput-object v4, v3, v10

    const-string/jumbo v4, "gov"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    const-string/jumbo v4, "mil"

    const/4 v5, 0x6

    aput-object v4, v3, v5

    const-string/jumbo v4, "name"

    const/4 v5, 0x7

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "jp"

    new-instance v2, Ljava/util/HashSet;

    const/16 v3, 0x9

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "ac"

    aput-object v4, v3, v6

    const-string/jumbo v4, "ad"

    aput-object v4, v3, v7

    const-string/jumbo v4, "co"

    aput-object v4, v3, v8

    const-string/jumbo v4, "ed"

    aput-object v4, v3, v9

    const-string/jumbo v4, "go"

    aput-object v4, v3, v10

    const-string/jumbo v4, "gr"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    const-string/jumbo v4, "lg"

    const/4 v5, 0x6

    aput-object v4, v3, v5

    const-string/jumbo v4, "ne"

    const/4 v5, 0x7

    aput-object v4, v3, v5

    const-string/jumbo v4, "or"

    const/16 v5, 0x8

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "kg"

    new-instance v2, Ljava/util/HashSet;

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "org"

    aput-object v4, v3, v6

    const-string/jumbo v4, "net"

    aput-object v4, v3, v7

    const-string/jumbo v4, "com"

    aput-object v4, v3, v8

    const-string/jumbo v4, "edu"

    aput-object v4, v3, v9

    const-string/jumbo v4, "gov"

    aput-object v4, v3, v10

    const-string/jumbo v4, "mil"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "ki"

    new-instance v2, Ljava/util/HashSet;

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "edu"

    aput-object v4, v3, v6

    const-string/jumbo v4, "biz"

    aput-object v4, v3, v7

    const-string/jumbo v4, "net"

    aput-object v4, v3, v8

    const-string/jumbo v4, "org"

    aput-object v4, v3, v9

    const-string/jumbo v4, "gov"

    aput-object v4, v3, v10

    const-string/jumbo v4, "info"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    const-string/jumbo v4, "com"

    const/4 v5, 0x6

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "km"

    new-instance v2, Ljava/util/HashSet;

    const/16 v3, 0x11

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "org"

    aput-object v4, v3, v6

    const-string/jumbo v4, "nom"

    aput-object v4, v3, v7

    const-string/jumbo v4, "gov"

    aput-object v4, v3, v8

    const-string/jumbo v4, "prd"

    aput-object v4, v3, v9

    const-string/jumbo v4, "tm"

    aput-object v4, v3, v10

    const-string/jumbo v4, "edu"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    const-string/jumbo v4, "mil"

    const/4 v5, 0x6

    aput-object v4, v3, v5

    const-string/jumbo v4, "ass"

    const/4 v5, 0x7

    aput-object v4, v3, v5

    const-string/jumbo v4, "com"

    const/16 v5, 0x8

    aput-object v4, v3, v5

    const-string/jumbo v4, "coop"

    const/16 v5, 0x9

    aput-object v4, v3, v5

    const-string/jumbo v4, "asso"

    const/16 v5, 0xa

    aput-object v4, v3, v5

    const-string/jumbo v4, "presse"

    const/16 v5, 0xb

    aput-object v4, v3, v5

    const-string/jumbo v4, "medecin"

    const/16 v5, 0xc

    aput-object v4, v3, v5

    const-string/jumbo v4, "notaires"

    const/16 v5, 0xd

    aput-object v4, v3, v5

    const-string/jumbo v4, "pharmaciens"

    const/16 v5, 0xe

    aput-object v4, v3, v5

    const-string/jumbo v4, "veterinaire"

    const/16 v5, 0xf

    aput-object v4, v3, v5

    const-string/jumbo v4, "gouv"

    const/16 v5, 0x10

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "kn"

    new-instance v2, Ljava/util/HashSet;

    new-array v3, v10, [Ljava/lang/String;

    const-string/jumbo v4, "net"

    aput-object v4, v3, v6

    const-string/jumbo v4, "org"

    aput-object v4, v3, v7

    const-string/jumbo v4, "edu"

    aput-object v4, v3, v8

    const-string/jumbo v4, "gov"

    aput-object v4, v3, v9

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "kp"

    new-instance v2, Ljava/util/HashSet;

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "com"

    aput-object v4, v3, v6

    const-string/jumbo v4, "edu"

    aput-object v4, v3, v7

    const-string/jumbo v4, "gov"

    aput-object v4, v3, v8

    const-string/jumbo v4, "org"

    aput-object v4, v3, v9

    const-string/jumbo v4, "rep"

    aput-object v4, v3, v10

    const-string/jumbo v4, "tra"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "kr"

    new-instance v2, Ljava/util/HashSet;

    const/16 v3, 0x1d

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "ac"

    aput-object v4, v3, v6

    const-string/jumbo v4, "co"

    aput-object v4, v3, v7

    const-string/jumbo v4, "es"

    aput-object v4, v3, v8

    const-string/jumbo v4, "go"

    aput-object v4, v3, v9

    const-string/jumbo v4, "hs"

    aput-object v4, v3, v10

    const-string/jumbo v4, "kg"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    const-string/jumbo v4, "mil"

    const/4 v5, 0x6

    aput-object v4, v3, v5

    const-string/jumbo v4, "ms"

    const/4 v5, 0x7

    aput-object v4, v3, v5

    const-string/jumbo v4, "ne"

    const/16 v5, 0x8

    aput-object v4, v3, v5

    const-string/jumbo v4, "or"

    const/16 v5, 0x9

    aput-object v4, v3, v5

    const-string/jumbo v4, "pe"

    const/16 v5, 0xa

    aput-object v4, v3, v5

    const-string/jumbo v4, "re"

    const/16 v5, 0xb

    aput-object v4, v3, v5

    const-string/jumbo v4, "sc"

    const/16 v5, 0xc

    aput-object v4, v3, v5

    const-string/jumbo v4, "busan"

    const/16 v5, 0xd

    aput-object v4, v3, v5

    const-string/jumbo v4, "chungbuk"

    const/16 v5, 0xe

    aput-object v4, v3, v5

    const-string/jumbo v4, "chungnam"

    const/16 v5, 0xf

    aput-object v4, v3, v5

    const-string/jumbo v4, "daegu"

    const/16 v5, 0x10

    aput-object v4, v3, v5

    const-string/jumbo v4, "daejeon"

    const/16 v5, 0x11

    aput-object v4, v3, v5

    const-string/jumbo v4, "gangwon"

    const/16 v5, 0x12

    aput-object v4, v3, v5

    const-string/jumbo v4, "gwangju"

    const/16 v5, 0x13

    aput-object v4, v3, v5

    const-string/jumbo v4, "gyeongbuk"

    const/16 v5, 0x14

    aput-object v4, v3, v5

    const-string/jumbo v4, "gyeonggi"

    const/16 v5, 0x15

    aput-object v4, v3, v5

    const-string/jumbo v4, "gyeongnam"

    const/16 v5, 0x16

    aput-object v4, v3, v5

    const-string/jumbo v4, "incheon"

    const/16 v5, 0x17

    aput-object v4, v3, v5

    const-string/jumbo v4, "jeju"

    const/16 v5, 0x18

    aput-object v4, v3, v5

    const-string/jumbo v4, "jeonbuk"

    const/16 v5, 0x19

    aput-object v4, v3, v5

    const-string/jumbo v4, "jeonnam"

    const/16 v5, 0x1a

    aput-object v4, v3, v5

    const-string/jumbo v4, "seoul"

    const/16 v5, 0x1b

    aput-object v4, v3, v5

    const-string/jumbo v4, "ulsan"

    const/16 v5, 0x1c

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "kz"

    new-instance v2, Ljava/util/HashSet;

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "org"

    aput-object v4, v3, v6

    const-string/jumbo v4, "edu"

    aput-object v4, v3, v7

    const-string/jumbo v4, "net"

    aput-object v4, v3, v8

    const-string/jumbo v4, "gov"

    aput-object v4, v3, v9

    const-string/jumbo v4, "mil"

    aput-object v4, v3, v10

    const-string/jumbo v4, "com"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "la"

    new-instance v2, Ljava/util/HashSet;

    const/16 v3, 0x9

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "int"

    aput-object v4, v3, v6

    const-string/jumbo v4, "net"

    aput-object v4, v3, v7

    const-string/jumbo v4, "info"

    aput-object v4, v3, v8

    const-string/jumbo v4, "edu"

    aput-object v4, v3, v9

    const-string/jumbo v4, "gov"

    aput-object v4, v3, v10

    const-string/jumbo v4, "per"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    const-string/jumbo v4, "com"

    const/4 v5, 0x6

    aput-object v4, v3, v5

    const-string/jumbo v4, "org"

    const/4 v5, 0x7

    aput-object v4, v3, v5

    const-string/jumbo v4, "c"

    const/16 v5, 0x8

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "lc"

    new-instance v2, Ljava/util/HashSet;

    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "com"

    aput-object v4, v3, v6

    const-string/jumbo v4, "net"

    aput-object v4, v3, v7

    const-string/jumbo v4, "co"

    aput-object v4, v3, v8

    const-string/jumbo v4, "org"

    aput-object v4, v3, v9

    const-string/jumbo v4, "edu"

    aput-object v4, v3, v10

    const-string/jumbo v4, "gov"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    const-string/jumbo v4, "l.lc"

    const/4 v5, 0x6

    aput-object v4, v3, v5

    const-string/jumbo v4, "p.lc"

    const/4 v5, 0x7

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "lk"

    new-instance v2, Ljava/util/HashSet;

    const/16 v3, 0xe

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "gov"

    aput-object v4, v3, v6

    const-string/jumbo v4, "sch"

    aput-object v4, v3, v7

    const-string/jumbo v4, "net"

    aput-object v4, v3, v8

    const-string/jumbo v4, "int"

    aput-object v4, v3, v9

    const-string/jumbo v4, "com"

    aput-object v4, v3, v10

    const-string/jumbo v4, "org"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    const-string/jumbo v4, "edu"

    const/4 v5, 0x6

    aput-object v4, v3, v5

    const-string/jumbo v4, "ngo"

    const/4 v5, 0x7

    aput-object v4, v3, v5

    const-string/jumbo v4, "soc"

    const/16 v5, 0x8

    aput-object v4, v3, v5

    const-string/jumbo v4, "web"

    const/16 v5, 0x9

    aput-object v4, v3, v5

    const-string/jumbo v4, "ltd"

    const/16 v5, 0xa

    aput-object v4, v3, v5

    const-string/jumbo v4, "assn"

    const/16 v5, 0xb

    aput-object v4, v3, v5

    const-string/jumbo v4, "grp"

    const/16 v5, 0xc

    aput-object v4, v3, v5

    const-string/jumbo v4, "hotel"

    const/16 v5, 0xd

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "ls"

    new-instance v2, Ljava/util/HashSet;

    new-array v3, v10, [Ljava/lang/String;

    const-string/jumbo v4, "co"

    aput-object v4, v3, v6

    const-string/jumbo v4, "gov"

    aput-object v4, v3, v7

    const-string/jumbo v4, "ac"

    aput-object v4, v3, v8

    const-string/jumbo v4, "org"

    aput-object v4, v3, v9

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "lv"

    new-instance v2, Ljava/util/HashSet;

    const/16 v3, 0x9

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "com"

    aput-object v4, v3, v6

    const-string/jumbo v4, "edu"

    aput-object v4, v3, v7

    const-string/jumbo v4, "gov"

    aput-object v4, v3, v8

    const-string/jumbo v4, "org"

    aput-object v4, v3, v9

    const-string/jumbo v4, "mil"

    aput-object v4, v3, v10

    const-string/jumbo v4, "id"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    const-string/jumbo v4, "net"

    const/4 v5, 0x6

    aput-object v4, v3, v5

    const-string/jumbo v4, "asn"

    const/4 v5, 0x7

    aput-object v4, v3, v5

    const-string/jumbo v4, "conf"

    const/16 v5, 0x8

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "ly"

    new-instance v2, Ljava/util/HashSet;

    const/16 v3, 0x9

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "com"

    aput-object v4, v3, v6

    const-string/jumbo v4, "net"

    aput-object v4, v3, v7

    const-string/jumbo v4, "gov"

    aput-object v4, v3, v8

    const-string/jumbo v4, "plc"

    aput-object v4, v3, v9

    const-string/jumbo v4, "edu"

    aput-object v4, v3, v10

    const-string/jumbo v4, "sch"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    const-string/jumbo v4, "med"

    const/4 v5, 0x6

    aput-object v4, v3, v5

    const-string/jumbo v4, "org"

    const/4 v5, 0x7

    aput-object v4, v3, v5

    const-string/jumbo v4, "id"

    const/16 v5, 0x8

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "ma"

    new-instance v2, Ljava/util/HashSet;

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "co"

    aput-object v4, v3, v6

    const-string/jumbo v4, "net"

    aput-object v4, v3, v7

    const-string/jumbo v4, "gov"

    aput-object v4, v3, v8

    const-string/jumbo v4, "org"

    aput-object v4, v3, v9

    const-string/jumbo v4, "ac"

    aput-object v4, v3, v10

    const-string/jumbo v4, "press"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "me"

    new-instance v2, Ljava/util/HashSet;

    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "co"

    aput-object v4, v3, v6

    const-string/jumbo v4, "net"

    aput-object v4, v3, v7

    const-string/jumbo v4, "org"

    aput-object v4, v3, v8

    const-string/jumbo v4, "edu"

    aput-object v4, v3, v9

    const-string/jumbo v4, "ac"

    aput-object v4, v3, v10

    const-string/jumbo v4, "gov"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    const-string/jumbo v4, "its"

    const/4 v5, 0x6

    aput-object v4, v3, v5

    const-string/jumbo v4, "priv"

    const/4 v5, 0x7

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "mg"

    new-instance v2, Ljava/util/HashSet;

    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "org"

    aput-object v4, v3, v6

    const-string/jumbo v4, "nom"

    aput-object v4, v3, v7

    const-string/jumbo v4, "gov"

    aput-object v4, v3, v8

    const-string/jumbo v4, "prd"

    aput-object v4, v3, v9

    const-string/jumbo v4, "tm"

    aput-object v4, v3, v10

    const-string/jumbo v4, "edu"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    const-string/jumbo v4, "mil"

    const/4 v5, 0x6

    aput-object v4, v3, v5

    const-string/jumbo v4, "com"

    const/4 v5, 0x7

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "mk"

    new-instance v2, Ljava/util/HashSet;

    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "com"

    aput-object v4, v3, v6

    const-string/jumbo v4, "org"

    aput-object v4, v3, v7

    const-string/jumbo v4, "net"

    aput-object v4, v3, v8

    const-string/jumbo v4, "edu"

    aput-object v4, v3, v9

    const-string/jumbo v4, "gov"

    aput-object v4, v3, v10

    const-string/jumbo v4, "inf"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    const-string/jumbo v4, "name"

    const/4 v5, 0x6

    aput-object v4, v3, v5

    const-string/jumbo v4, "pro"

    const/4 v5, 0x7

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "ml"

    new-instance v2, Ljava/util/HashSet;

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "com"

    aput-object v4, v3, v6

    const-string/jumbo v4, "edu"

    aput-object v4, v3, v7

    const-string/jumbo v4, "gouv"

    aput-object v4, v3, v8

    const-string/jumbo v4, "gov"

    aput-object v4, v3, v9

    const-string/jumbo v4, "net"

    aput-object v4, v3, v10

    const-string/jumbo v4, "org"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    const-string/jumbo v4, "presse"

    const/4 v5, 0x6

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "mn"

    new-instance v2, Ljava/util/HashSet;

    new-array v3, v9, [Ljava/lang/String;

    const-string/jumbo v4, "gov"

    aput-object v4, v3, v6

    const-string/jumbo v4, "edu"

    aput-object v4, v3, v7

    const-string/jumbo v4, "org"

    aput-object v4, v3, v8

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "mp"

    new-instance v2, Ljava/util/HashSet;

    new-array v3, v9, [Ljava/lang/String;

    const-string/jumbo v4, "gov"

    aput-object v4, v3, v6

    const-string/jumbo v4, "co"

    aput-object v4, v3, v7

    const-string/jumbo v4, "org"

    aput-object v4, v3, v8

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "mu"

    new-instance v2, Ljava/util/HashSet;

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "com"

    aput-object v4, v3, v6

    const-string/jumbo v4, "net"

    aput-object v4, v3, v7

    const-string/jumbo v4, "org"

    aput-object v4, v3, v8

    const-string/jumbo v4, "gov"

    aput-object v4, v3, v9

    const-string/jumbo v4, "ac"

    aput-object v4, v3, v10

    const-string/jumbo v4, "co"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    const-string/jumbo v4, "or"

    const/4 v5, 0x6

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "museum"

    new-instance v2, Ljava/util/HashSet;

    const/16 v3, 0x224

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "academy"

    aput-object v4, v3, v6

    const-string/jumbo v4, "agriculture"

    aput-object v4, v3, v7

    const-string/jumbo v4, "air"

    aput-object v4, v3, v8

    const-string/jumbo v4, "airguard"

    aput-object v4, v3, v9

    const-string/jumbo v4, "alabama"

    aput-object v4, v3, v10

    const-string/jumbo v4, "alaska"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    const-string/jumbo v4, "amber"

    const/4 v5, 0x6

    aput-object v4, v3, v5

    const-string/jumbo v4, "ambulance"

    const/4 v5, 0x7

    aput-object v4, v3, v5

    const-string/jumbo v4, "american"

    const/16 v5, 0x8

    aput-object v4, v3, v5

    const-string/jumbo v4, "americana"

    const/16 v5, 0x9

    aput-object v4, v3, v5

    const-string/jumbo v4, "americanantiques"

    const/16 v5, 0xa

    aput-object v4, v3, v5

    const-string/jumbo v4, "americanart"

    const/16 v5, 0xb

    aput-object v4, v3, v5

    const-string/jumbo v4, "amsterdam"

    const/16 v5, 0xc

    aput-object v4, v3, v5

    const-string/jumbo v4, "and"

    const/16 v5, 0xd

    aput-object v4, v3, v5

    const-string/jumbo v4, "annefrank"

    const/16 v5, 0xe

    aput-object v4, v3, v5

    const-string/jumbo v4, "anthro"

    const/16 v5, 0xf

    aput-object v4, v3, v5

    const-string/jumbo v4, "anthropology"

    const/16 v5, 0x10

    aput-object v4, v3, v5

    const-string/jumbo v4, "antiques"

    const/16 v5, 0x11

    aput-object v4, v3, v5

    const-string/jumbo v4, "aquarium"

    const/16 v5, 0x12

    aput-object v4, v3, v5

    const-string/jumbo v4, "arboretum"

    const/16 v5, 0x13

    aput-object v4, v3, v5

    const-string/jumbo v4, "archaeological"

    const/16 v5, 0x14

    aput-object v4, v3, v5

    const-string/jumbo v4, "archaeology"

    const/16 v5, 0x15

    aput-object v4, v3, v5

    const-string/jumbo v4, "architecture"

    const/16 v5, 0x16

    aput-object v4, v3, v5

    const-string/jumbo v4, "art"

    const/16 v5, 0x17

    aput-object v4, v3, v5

    const-string/jumbo v4, "artanddesign"

    const/16 v5, 0x18

    aput-object v4, v3, v5

    const-string/jumbo v4, "artcenter"

    const/16 v5, 0x19

    aput-object v4, v3, v5

    const-string/jumbo v4, "artdeco"

    const/16 v5, 0x1a

    aput-object v4, v3, v5

    const-string/jumbo v4, "arteducation"

    const/16 v5, 0x1b

    aput-object v4, v3, v5

    const-string/jumbo v4, "artgallery"

    const/16 v5, 0x1c

    aput-object v4, v3, v5

    const-string/jumbo v4, "arts"

    const/16 v5, 0x1d

    aput-object v4, v3, v5

    const-string/jumbo v4, "artsandcrafts"

    const/16 v5, 0x1e

    aput-object v4, v3, v5

    const-string/jumbo v4, "asmatart"

    const/16 v5, 0x1f

    aput-object v4, v3, v5

    const-string/jumbo v4, "assassination"

    const/16 v5, 0x20

    aput-object v4, v3, v5

    const-string/jumbo v4, "assisi"

    const/16 v5, 0x21

    aput-object v4, v3, v5

    const-string/jumbo v4, "association"

    const/16 v5, 0x22

    aput-object v4, v3, v5

    const-string/jumbo v4, "astronomy"

    const/16 v5, 0x23

    aput-object v4, v3, v5

    const-string/jumbo v4, "atlanta"

    const/16 v5, 0x24

    aput-object v4, v3, v5

    const-string/jumbo v4, "austin"

    const/16 v5, 0x25

    aput-object v4, v3, v5

    const-string/jumbo v4, "australia"

    const/16 v5, 0x26

    aput-object v4, v3, v5

    const-string/jumbo v4, "automotive"

    const/16 v5, 0x27

    aput-object v4, v3, v5

    const-string/jumbo v4, "aviation"

    const/16 v5, 0x28

    aput-object v4, v3, v5

    const-string/jumbo v4, "axis"

    const/16 v5, 0x29

    aput-object v4, v3, v5

    const-string/jumbo v4, "badajoz"

    const/16 v5, 0x2a

    aput-object v4, v3, v5

    const-string/jumbo v4, "baghdad"

    const/16 v5, 0x2b

    aput-object v4, v3, v5

    const-string/jumbo v4, "bahn"

    const/16 v5, 0x2c

    aput-object v4, v3, v5

    const-string/jumbo v4, "bale"

    const/16 v5, 0x2d

    aput-object v4, v3, v5

    const-string/jumbo v4, "baltimore"

    const/16 v5, 0x2e

    aput-object v4, v3, v5

    const-string/jumbo v4, "barcelona"

    const/16 v5, 0x2f

    aput-object v4, v3, v5

    const-string/jumbo v4, "baseball"

    const/16 v5, 0x30

    aput-object v4, v3, v5

    const-string/jumbo v4, "basel"

    const/16 v5, 0x31

    aput-object v4, v3, v5

    const-string/jumbo v4, "baths"

    const/16 v5, 0x32

    aput-object v4, v3, v5

    const-string/jumbo v4, "bauern"

    const/16 v5, 0x33

    aput-object v4, v3, v5

    const-string/jumbo v4, "beauxarts"

    const/16 v5, 0x34

    aput-object v4, v3, v5

    const-string/jumbo v4, "beeldengeluid"

    const/16 v5, 0x35

    aput-object v4, v3, v5

    const-string/jumbo v4, "bellevue"

    const/16 v5, 0x36

    aput-object v4, v3, v5

    const-string/jumbo v4, "bergbau"

    const/16 v5, 0x37

    aput-object v4, v3, v5

    const-string/jumbo v4, "berkeley"

    const/16 v5, 0x38

    aput-object v4, v3, v5

    const-string/jumbo v4, "berlin"

    const/16 v5, 0x39

    aput-object v4, v3, v5

    const-string/jumbo v4, "bern"

    const/16 v5, 0x3a

    aput-object v4, v3, v5

    const-string/jumbo v4, "bible"

    const/16 v5, 0x3b

    aput-object v4, v3, v5

    const-string/jumbo v4, "bilbao"

    const/16 v5, 0x3c

    aput-object v4, v3, v5

    const-string/jumbo v4, "bill"

    const/16 v5, 0x3d

    aput-object v4, v3, v5

    const-string/jumbo v4, "birdart"

    const/16 v5, 0x3e

    aput-object v4, v3, v5

    const-string/jumbo v4, "birthplace"

    const/16 v5, 0x3f

    aput-object v4, v3, v5

    const-string/jumbo v4, "bonn"

    const/16 v5, 0x40

    aput-object v4, v3, v5

    const-string/jumbo v4, "boston"

    const/16 v5, 0x41

    aput-object v4, v3, v5

    const-string/jumbo v4, "botanical"

    const/16 v5, 0x42

    aput-object v4, v3, v5

    const-string/jumbo v4, "botanicalgarden"

    const/16 v5, 0x43

    aput-object v4, v3, v5

    const-string/jumbo v4, "botanicgarden"

    const/16 v5, 0x44

    aput-object v4, v3, v5

    const-string/jumbo v4, "botany"

    const/16 v5, 0x45

    aput-object v4, v3, v5

    const-string/jumbo v4, "brandywinevalley"

    const/16 v5, 0x46

    aput-object v4, v3, v5

    const-string/jumbo v4, "brasil"

    const/16 v5, 0x47

    aput-object v4, v3, v5

    const-string/jumbo v4, "bristol"

    const/16 v5, 0x48

    aput-object v4, v3, v5

    const-string/jumbo v4, "british"

    const/16 v5, 0x49

    aput-object v4, v3, v5

    const-string/jumbo v4, "britishcolumbia"

    const/16 v5, 0x4a

    aput-object v4, v3, v5

    const-string/jumbo v4, "broadcast"

    const/16 v5, 0x4b

    aput-object v4, v3, v5

    const-string/jumbo v4, "brunel"

    const/16 v5, 0x4c

    aput-object v4, v3, v5

    const-string/jumbo v4, "brussel"

    const/16 v5, 0x4d

    aput-object v4, v3, v5

    const-string/jumbo v4, "brussels"

    const/16 v5, 0x4e

    aput-object v4, v3, v5

    const-string/jumbo v4, "bruxelles"

    const/16 v5, 0x4f

    aput-object v4, v3, v5

    const-string/jumbo v4, "building"

    const/16 v5, 0x50

    aput-object v4, v3, v5

    const-string/jumbo v4, "burghof"

    const/16 v5, 0x51

    aput-object v4, v3, v5

    const-string/jumbo v4, "bus"

    const/16 v5, 0x52

    aput-object v4, v3, v5

    const-string/jumbo v4, "bushey"

    const/16 v5, 0x53

    aput-object v4, v3, v5

    const-string/jumbo v4, "cadaques"

    const/16 v5, 0x54

    aput-object v4, v3, v5

    const-string/jumbo v4, "california"

    const/16 v5, 0x55

    aput-object v4, v3, v5

    const-string/jumbo v4, "cambridge"

    const/16 v5, 0x56

    aput-object v4, v3, v5

    const-string/jumbo v4, "can"

    const/16 v5, 0x57

    aput-object v4, v3, v5

    const-string/jumbo v4, "canada"

    const/16 v5, 0x58

    aput-object v4, v3, v5

    const-string/jumbo v4, "capebreton"

    const/16 v5, 0x59

    aput-object v4, v3, v5

    const-string/jumbo v4, "carrier"

    const/16 v5, 0x5a

    aput-object v4, v3, v5

    const-string/jumbo v4, "cartoonart"

    const/16 v5, 0x5b

    aput-object v4, v3, v5

    const-string/jumbo v4, "casadelamoneda"

    const/16 v5, 0x5c

    aput-object v4, v3, v5

    const-string/jumbo v4, "castle"

    const/16 v5, 0x5d

    aput-object v4, v3, v5

    const-string/jumbo v4, "castres"

    const/16 v5, 0x5e

    aput-object v4, v3, v5

    const-string/jumbo v4, "celtic"

    const/16 v5, 0x5f

    aput-object v4, v3, v5

    const-string/jumbo v4, "center"

    const/16 v5, 0x60

    aput-object v4, v3, v5

    const-string/jumbo v4, "chattanooga"

    const/16 v5, 0x61

    aput-object v4, v3, v5

    const-string/jumbo v4, "cheltenham"

    const/16 v5, 0x62

    aput-object v4, v3, v5

    const-string/jumbo v4, "chesapeakebay"

    const/16 v5, 0x63

    aput-object v4, v3, v5

    const-string/jumbo v4, "chicago"

    const/16 v5, 0x64

    aput-object v4, v3, v5

    const-string/jumbo v4, "children"

    const/16 v5, 0x65

    aput-object v4, v3, v5

    const-string/jumbo v4, "childrens"

    const/16 v5, 0x66

    aput-object v4, v3, v5

    const-string/jumbo v4, "childrensgarden"

    const/16 v5, 0x67

    aput-object v4, v3, v5

    const-string/jumbo v4, "chiropractic"

    const/16 v5, 0x68

    aput-object v4, v3, v5

    const-string/jumbo v4, "chocolate"

    const/16 v5, 0x69

    aput-object v4, v3, v5

    const-string/jumbo v4, "christiansburg"

    const/16 v5, 0x6a

    aput-object v4, v3, v5

    const-string/jumbo v4, "cincinnati"

    const/16 v5, 0x6b

    aput-object v4, v3, v5

    const-string/jumbo v4, "cinema"

    const/16 v5, 0x6c

    aput-object v4, v3, v5

    const-string/jumbo v4, "circus"

    const/16 v5, 0x6d

    aput-object v4, v3, v5

    const-string/jumbo v4, "civilisation"

    const/16 v5, 0x6e

    aput-object v4, v3, v5

    const-string/jumbo v4, "civilization"

    const/16 v5, 0x6f

    aput-object v4, v3, v5

    const-string/jumbo v4, "civilwar"

    const/16 v5, 0x70

    aput-object v4, v3, v5

    const-string/jumbo v4, "clinton"

    const/16 v5, 0x71

    aput-object v4, v3, v5

    const-string/jumbo v4, "clock"

    const/16 v5, 0x72

    aput-object v4, v3, v5

    const-string/jumbo v4, "coal"

    const/16 v5, 0x73

    aput-object v4, v3, v5

    const-string/jumbo v4, "coastaldefence"

    const/16 v5, 0x74

    aput-object v4, v3, v5

    const-string/jumbo v4, "cody"

    const/16 v5, 0x75

    aput-object v4, v3, v5

    const-string/jumbo v4, "coldwar"

    const/16 v5, 0x76

    aput-object v4, v3, v5

    const-string/jumbo v4, "collection"

    const/16 v5, 0x77

    aput-object v4, v3, v5

    const-string/jumbo v4, "colonialwilliamsburg"

    const/16 v5, 0x78

    aput-object v4, v3, v5

    const-string/jumbo v4, "coloradoplateau"

    const/16 v5, 0x79

    aput-object v4, v3, v5

    const-string/jumbo v4, "columbia"

    const/16 v5, 0x7a

    aput-object v4, v3, v5

    const-string/jumbo v4, "columbus"

    const/16 v5, 0x7b

    aput-object v4, v3, v5

    const-string/jumbo v4, "communication"

    const/16 v5, 0x7c

    aput-object v4, v3, v5

    const-string/jumbo v4, "communications"

    const/16 v5, 0x7d

    aput-object v4, v3, v5

    const-string/jumbo v4, "community"

    const/16 v5, 0x7e

    aput-object v4, v3, v5

    const-string/jumbo v4, "computer"

    const/16 v5, 0x7f

    aput-object v4, v3, v5

    const-string/jumbo v4, "computerhistory"

    const/16 v5, 0x80

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--comunicaes-v6a2o"

    const/16 v5, 0x81

    aput-object v4, v3, v5

    const-string/jumbo v4, "contemporary"

    const/16 v5, 0x82

    aput-object v4, v3, v5

    const-string/jumbo v4, "contemporaryart"

    const/16 v5, 0x83

    aput-object v4, v3, v5

    const-string/jumbo v4, "convent"

    const/16 v5, 0x84

    aput-object v4, v3, v5

    const-string/jumbo v4, "copenhagen"

    const/16 v5, 0x85

    aput-object v4, v3, v5

    const-string/jumbo v4, "corporation"

    const/16 v5, 0x86

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--correios-e-telecomunicaes-ghc29a"

    const/16 v5, 0x87

    aput-object v4, v3, v5

    const-string/jumbo v4, "corvette"

    const/16 v5, 0x88

    aput-object v4, v3, v5

    const-string/jumbo v4, "costume"

    const/16 v5, 0x89

    aput-object v4, v3, v5

    const-string/jumbo v4, "countryestate"

    const/16 v5, 0x8a

    aput-object v4, v3, v5

    const-string/jumbo v4, "county"

    const/16 v5, 0x8b

    aput-object v4, v3, v5

    const-string/jumbo v4, "crafts"

    const/16 v5, 0x8c

    aput-object v4, v3, v5

    const-string/jumbo v4, "cranbrook"

    const/16 v5, 0x8d

    aput-object v4, v3, v5

    const-string/jumbo v4, "creation"

    const/16 v5, 0x8e

    aput-object v4, v3, v5

    const-string/jumbo v4, "cultural"

    const/16 v5, 0x8f

    aput-object v4, v3, v5

    const-string/jumbo v4, "culturalcenter"

    const/16 v5, 0x90

    aput-object v4, v3, v5

    const-string/jumbo v4, "culture"

    const/16 v5, 0x91

    aput-object v4, v3, v5

    const-string/jumbo v4, "cyber"

    const/16 v5, 0x92

    aput-object v4, v3, v5

    const-string/jumbo v4, "cymru"

    const/16 v5, 0x93

    aput-object v4, v3, v5

    const-string/jumbo v4, "dali"

    const/16 v5, 0x94

    aput-object v4, v3, v5

    const-string/jumbo v4, "dallas"

    const/16 v5, 0x95

    aput-object v4, v3, v5

    const-string/jumbo v4, "database"

    const/16 v5, 0x96

    aput-object v4, v3, v5

    const-string/jumbo v4, "ddr"

    const/16 v5, 0x97

    aput-object v4, v3, v5

    const-string/jumbo v4, "decorativearts"

    const/16 v5, 0x98

    aput-object v4, v3, v5

    const-string/jumbo v4, "delaware"

    const/16 v5, 0x99

    aput-object v4, v3, v5

    const-string/jumbo v4, "delmenhorst"

    const/16 v5, 0x9a

    aput-object v4, v3, v5

    const-string/jumbo v4, "denmark"

    const/16 v5, 0x9b

    aput-object v4, v3, v5

    const-string/jumbo v4, "depot"

    const/16 v5, 0x9c

    aput-object v4, v3, v5

    const-string/jumbo v4, "design"

    const/16 v5, 0x9d

    aput-object v4, v3, v5

    const-string/jumbo v4, "detroit"

    const/16 v5, 0x9e

    aput-object v4, v3, v5

    const-string/jumbo v4, "dinosaur"

    const/16 v5, 0x9f

    aput-object v4, v3, v5

    const-string/jumbo v4, "discovery"

    const/16 v5, 0xa0

    aput-object v4, v3, v5

    const-string/jumbo v4, "dolls"

    const/16 v5, 0xa1

    aput-object v4, v3, v5

    const-string/jumbo v4, "donostia"

    const/16 v5, 0xa2

    aput-object v4, v3, v5

    const-string/jumbo v4, "durham"

    const/16 v5, 0xa3

    aput-object v4, v3, v5

    const-string/jumbo v4, "eastafrica"

    const/16 v5, 0xa4

    aput-object v4, v3, v5

    const-string/jumbo v4, "eastcoast"

    const/16 v5, 0xa5

    aput-object v4, v3, v5

    const-string/jumbo v4, "education"

    const/16 v5, 0xa6

    aput-object v4, v3, v5

    const-string/jumbo v4, "educational"

    const/16 v5, 0xa7

    aput-object v4, v3, v5

    const-string/jumbo v4, "egyptian"

    const/16 v5, 0xa8

    aput-object v4, v3, v5

    const-string/jumbo v4, "eisenbahn"

    const/16 v5, 0xa9

    aput-object v4, v3, v5

    const-string/jumbo v4, "elburg"

    const/16 v5, 0xaa

    aput-object v4, v3, v5

    const-string/jumbo v4, "elvendrell"

    const/16 v5, 0xab

    aput-object v4, v3, v5

    const-string/jumbo v4, "embroidery"

    const/16 v5, 0xac

    aput-object v4, v3, v5

    const-string/jumbo v4, "encyclopedic"

    const/16 v5, 0xad

    aput-object v4, v3, v5

    const-string/jumbo v4, "england"

    const/16 v5, 0xae

    aput-object v4, v3, v5

    const-string/jumbo v4, "entomology"

    const/16 v5, 0xaf

    aput-object v4, v3, v5

    const-string/jumbo v4, "environment"

    const/16 v5, 0xb0

    aput-object v4, v3, v5

    const-string/jumbo v4, "environmentalconservation"

    const/16 v5, 0xb1

    aput-object v4, v3, v5

    const-string/jumbo v4, "epilepsy"

    const/16 v5, 0xb2

    aput-object v4, v3, v5

    const-string/jumbo v4, "essex"

    const/16 v5, 0xb3

    aput-object v4, v3, v5

    const-string/jumbo v4, "estate"

    const/16 v5, 0xb4

    aput-object v4, v3, v5

    const-string/jumbo v4, "ethnology"

    const/16 v5, 0xb5

    aput-object v4, v3, v5

    const-string/jumbo v4, "exeter"

    const/16 v5, 0xb6

    aput-object v4, v3, v5

    const-string/jumbo v4, "exhibition"

    const/16 v5, 0xb7

    aput-object v4, v3, v5

    const-string/jumbo v4, "family"

    const/16 v5, 0xb8

    aput-object v4, v3, v5

    const-string/jumbo v4, "farm"

    const/16 v5, 0xb9

    aput-object v4, v3, v5

    const-string/jumbo v4, "farmequipment"

    const/16 v5, 0xba

    aput-object v4, v3, v5

    const-string/jumbo v4, "farmers"

    const/16 v5, 0xbb

    aput-object v4, v3, v5

    const-string/jumbo v4, "farmstead"

    const/16 v5, 0xbc

    aput-object v4, v3, v5

    const-string/jumbo v4, "field"

    const/16 v5, 0xbd

    aput-object v4, v3, v5

    const-string/jumbo v4, "figueres"

    const/16 v5, 0xbe

    aput-object v4, v3, v5

    const-string/jumbo v4, "filatelia"

    const/16 v5, 0xbf

    aput-object v4, v3, v5

    const-string/jumbo v4, "film"

    const/16 v5, 0xc0

    aput-object v4, v3, v5

    const-string/jumbo v4, "fineart"

    const/16 v5, 0xc1

    aput-object v4, v3, v5

    const-string/jumbo v4, "finearts"

    const/16 v5, 0xc2

    aput-object v4, v3, v5

    const-string/jumbo v4, "finland"

    const/16 v5, 0xc3

    aput-object v4, v3, v5

    const-string/jumbo v4, "flanders"

    const/16 v5, 0xc4

    aput-object v4, v3, v5

    const-string/jumbo v4, "florida"

    const/16 v5, 0xc5

    aput-object v4, v3, v5

    const-string/jumbo v4, "force"

    const/16 v5, 0xc6

    aput-object v4, v3, v5

    const-string/jumbo v4, "fortmissoula"

    const/16 v5, 0xc7

    aput-object v4, v3, v5

    const-string/jumbo v4, "fortworth"

    const/16 v5, 0xc8

    aput-object v4, v3, v5

    const-string/jumbo v4, "foundation"

    const/16 v5, 0xc9

    aput-object v4, v3, v5

    const-string/jumbo v4, "francaise"

    const/16 v5, 0xca

    aput-object v4, v3, v5

    const-string/jumbo v4, "frankfurt"

    const/16 v5, 0xcb

    aput-object v4, v3, v5

    const-string/jumbo v4, "franziskaner"

    const/16 v5, 0xcc

    aput-object v4, v3, v5

    const-string/jumbo v4, "freemasonry"

    const/16 v5, 0xcd

    aput-object v4, v3, v5

    const-string/jumbo v4, "freiburg"

    const/16 v5, 0xce

    aput-object v4, v3, v5

    const-string/jumbo v4, "fribourg"

    const/16 v5, 0xcf

    aput-object v4, v3, v5

    const-string/jumbo v4, "frog"

    const/16 v5, 0xd0

    aput-object v4, v3, v5

    const-string/jumbo v4, "fundacio"

    const/16 v5, 0xd1

    aput-object v4, v3, v5

    const-string/jumbo v4, "furniture"

    const/16 v5, 0xd2

    aput-object v4, v3, v5

    const-string/jumbo v4, "gallery"

    const/16 v5, 0xd3

    aput-object v4, v3, v5

    const-string/jumbo v4, "garden"

    const/16 v5, 0xd4

    aput-object v4, v3, v5

    const-string/jumbo v4, "gateway"

    const/16 v5, 0xd5

    aput-object v4, v3, v5

    const-string/jumbo v4, "geelvinck"

    const/16 v5, 0xd6

    aput-object v4, v3, v5

    const-string/jumbo v4, "gemological"

    const/16 v5, 0xd7

    aput-object v4, v3, v5

    const-string/jumbo v4, "geology"

    const/16 v5, 0xd8

    aput-object v4, v3, v5

    const-string/jumbo v4, "georgia"

    const/16 v5, 0xd9

    aput-object v4, v3, v5

    const-string/jumbo v4, "giessen"

    const/16 v5, 0xda

    aput-object v4, v3, v5

    const-string/jumbo v4, "glas"

    const/16 v5, 0xdb

    aput-object v4, v3, v5

    const-string/jumbo v4, "glass"

    const/16 v5, 0xdc

    aput-object v4, v3, v5

    const-string/jumbo v4, "gorge"

    const/16 v5, 0xdd

    aput-object v4, v3, v5

    const-string/jumbo v4, "grandrapids"

    const/16 v5, 0xde

    aput-object v4, v3, v5

    const-string/jumbo v4, "graz"

    const/16 v5, 0xdf

    aput-object v4, v3, v5

    const-string/jumbo v4, "guernsey"

    const/16 v5, 0xe0

    aput-object v4, v3, v5

    const-string/jumbo v4, "halloffame"

    const/16 v5, 0xe1

    aput-object v4, v3, v5

    const-string/jumbo v4, "hamburg"

    const/16 v5, 0xe2

    aput-object v4, v3, v5

    const-string/jumbo v4, "handson"

    const/16 v5, 0xe3

    aput-object v4, v3, v5

    const-string/jumbo v4, "harvestcelebration"

    const/16 v5, 0xe4

    aput-object v4, v3, v5

    const-string/jumbo v4, "hawaii"

    const/16 v5, 0xe5

    aput-object v4, v3, v5

    const-string/jumbo v4, "health"

    const/16 v5, 0xe6

    aput-object v4, v3, v5

    const-string/jumbo v4, "heimatunduhren"

    const/16 v5, 0xe7

    aput-object v4, v3, v5

    const-string/jumbo v4, "hellas"

    const/16 v5, 0xe8

    aput-object v4, v3, v5

    const-string/jumbo v4, "helsinki"

    const/16 v5, 0xe9

    aput-object v4, v3, v5

    const-string/jumbo v4, "hembygdsforbund"

    const/16 v5, 0xea

    aput-object v4, v3, v5

    const-string/jumbo v4, "heritage"

    const/16 v5, 0xeb

    aput-object v4, v3, v5

    const-string/jumbo v4, "histoire"

    const/16 v5, 0xec

    aput-object v4, v3, v5

    const-string/jumbo v4, "historical"

    const/16 v5, 0xed

    aput-object v4, v3, v5

    const-string/jumbo v4, "historicalsociety"

    const/16 v5, 0xee

    aput-object v4, v3, v5

    const-string/jumbo v4, "historichouses"

    const/16 v5, 0xef

    aput-object v4, v3, v5

    const-string/jumbo v4, "historisch"

    const/16 v5, 0xf0

    aput-object v4, v3, v5

    const-string/jumbo v4, "historisches"

    const/16 v5, 0xf1

    aput-object v4, v3, v5

    const-string/jumbo v4, "history"

    const/16 v5, 0xf2

    aput-object v4, v3, v5

    const-string/jumbo v4, "historyofscience"

    const/16 v5, 0xf3

    aput-object v4, v3, v5

    const-string/jumbo v4, "horology"

    const/16 v5, 0xf4

    aput-object v4, v3, v5

    const-string/jumbo v4, "house"

    const/16 v5, 0xf5

    aput-object v4, v3, v5

    const-string/jumbo v4, "humanities"

    const/16 v5, 0xf6

    aput-object v4, v3, v5

    const-string/jumbo v4, "illustration"

    const/16 v5, 0xf7

    aput-object v4, v3, v5

    const-string/jumbo v4, "imageandsound"

    const/16 v5, 0xf8

    aput-object v4, v3, v5

    const-string/jumbo v4, "indian"

    const/16 v5, 0xf9

    aput-object v4, v3, v5

    const-string/jumbo v4, "indiana"

    const/16 v5, 0xfa

    aput-object v4, v3, v5

    const-string/jumbo v4, "indianapolis"

    const/16 v5, 0xfb

    aput-object v4, v3, v5

    const-string/jumbo v4, "indianmarket"

    const/16 v5, 0xfc

    aput-object v4, v3, v5

    const-string/jumbo v4, "intelligence"

    const/16 v5, 0xfd

    aput-object v4, v3, v5

    const-string/jumbo v4, "interactive"

    const/16 v5, 0xfe

    aput-object v4, v3, v5

    const-string/jumbo v4, "iraq"

    const/16 v5, 0xff

    aput-object v4, v3, v5

    const-string/jumbo v4, "iron"

    const/16 v5, 0x100

    aput-object v4, v3, v5

    const-string/jumbo v4, "isleofman"

    const/16 v5, 0x101

    aput-object v4, v3, v5

    const-string/jumbo v4, "jamison"

    const/16 v5, 0x102

    aput-object v4, v3, v5

    const-string/jumbo v4, "jefferson"

    const/16 v5, 0x103

    aput-object v4, v3, v5

    const-string/jumbo v4, "jerusalem"

    const/16 v5, 0x104

    aput-object v4, v3, v5

    const-string/jumbo v4, "jewelry"

    const/16 v5, 0x105

    aput-object v4, v3, v5

    const-string/jumbo v4, "jewish"

    const/16 v5, 0x106

    aput-object v4, v3, v5

    const-string/jumbo v4, "jewishart"

    const/16 v5, 0x107

    aput-object v4, v3, v5

    const-string/jumbo v4, "jfk"

    const/16 v5, 0x108

    aput-object v4, v3, v5

    const-string/jumbo v4, "journalism"

    const/16 v5, 0x109

    aput-object v4, v3, v5

    const-string/jumbo v4, "judaica"

    const/16 v5, 0x10a

    aput-object v4, v3, v5

    const-string/jumbo v4, "judygarland"

    const/16 v5, 0x10b

    aput-object v4, v3, v5

    const-string/jumbo v4, "juedisches"

    const/16 v5, 0x10c

    aput-object v4, v3, v5

    const-string/jumbo v4, "juif"

    const/16 v5, 0x10d

    aput-object v4, v3, v5

    const-string/jumbo v4, "karate"

    const/16 v5, 0x10e

    aput-object v4, v3, v5

    const-string/jumbo v4, "karikatur"

    const/16 v5, 0x10f

    aput-object v4, v3, v5

    const-string/jumbo v4, "kids"

    const/16 v5, 0x110

    aput-object v4, v3, v5

    const-string/jumbo v4, "koebenhavn"

    const/16 v5, 0x111

    aput-object v4, v3, v5

    const-string/jumbo v4, "koeln"

    const/16 v5, 0x112

    aput-object v4, v3, v5

    const-string/jumbo v4, "kunst"

    const/16 v5, 0x113

    aput-object v4, v3, v5

    const-string/jumbo v4, "kunstsammlung"

    const/16 v5, 0x114

    aput-object v4, v3, v5

    const-string/jumbo v4, "kunstunddesign"

    const/16 v5, 0x115

    aput-object v4, v3, v5

    const-string/jumbo v4, "labor"

    const/16 v5, 0x116

    aput-object v4, v3, v5

    const-string/jumbo v4, "labour"

    const/16 v5, 0x117

    aput-object v4, v3, v5

    const-string/jumbo v4, "lajolla"

    const/16 v5, 0x118

    aput-object v4, v3, v5

    const-string/jumbo v4, "lancashire"

    const/16 v5, 0x119

    aput-object v4, v3, v5

    const-string/jumbo v4, "landes"

    const/16 v5, 0x11a

    aput-object v4, v3, v5

    const-string/jumbo v4, "lans"

    const/16 v5, 0x11b

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--lns-qla"

    const/16 v5, 0x11c

    aput-object v4, v3, v5

    const-string/jumbo v4, "larsson"

    const/16 v5, 0x11d

    aput-object v4, v3, v5

    const-string/jumbo v4, "lewismiller"

    const/16 v5, 0x11e

    aput-object v4, v3, v5

    const-string/jumbo v4, "lincoln"

    const/16 v5, 0x11f

    aput-object v4, v3, v5

    const-string/jumbo v4, "linz"

    const/16 v5, 0x120

    aput-object v4, v3, v5

    const-string/jumbo v4, "living"

    const/16 v5, 0x121

    aput-object v4, v3, v5

    const-string/jumbo v4, "livinghistory"

    const/16 v5, 0x122

    aput-object v4, v3, v5

    const-string/jumbo v4, "localhistory"

    const/16 v5, 0x123

    aput-object v4, v3, v5

    const-string/jumbo v4, "london"

    const/16 v5, 0x124

    aput-object v4, v3, v5

    const-string/jumbo v4, "losangeles"

    const/16 v5, 0x125

    aput-object v4, v3, v5

    const-string/jumbo v4, "louvre"

    const/16 v5, 0x126

    aput-object v4, v3, v5

    const-string/jumbo v4, "loyalist"

    const/16 v5, 0x127

    aput-object v4, v3, v5

    const-string/jumbo v4, "lucerne"

    const/16 v5, 0x128

    aput-object v4, v3, v5

    const-string/jumbo v4, "luxembourg"

    const/16 v5, 0x129

    aput-object v4, v3, v5

    const-string/jumbo v4, "luzern"

    const/16 v5, 0x12a

    aput-object v4, v3, v5

    const-string/jumbo v4, "mad"

    const/16 v5, 0x12b

    aput-object v4, v3, v5

    const-string/jumbo v4, "madrid"

    const/16 v5, 0x12c

    aput-object v4, v3, v5

    const-string/jumbo v4, "mallorca"

    const/16 v5, 0x12d

    aput-object v4, v3, v5

    const-string/jumbo v4, "manchester"

    const/16 v5, 0x12e

    aput-object v4, v3, v5

    const-string/jumbo v4, "mansion"

    const/16 v5, 0x12f

    aput-object v4, v3, v5

    const-string/jumbo v4, "mansions"

    const/16 v5, 0x130

    aput-object v4, v3, v5

    const-string/jumbo v4, "manx"

    const/16 v5, 0x131

    aput-object v4, v3, v5

    const-string/jumbo v4, "marburg"

    const/16 v5, 0x132

    aput-object v4, v3, v5

    const-string/jumbo v4, "maritime"

    const/16 v5, 0x133

    aput-object v4, v3, v5

    const-string/jumbo v4, "maritimo"

    const/16 v5, 0x134

    aput-object v4, v3, v5

    const-string/jumbo v4, "maryland"

    const/16 v5, 0x135

    aput-object v4, v3, v5

    const-string/jumbo v4, "marylhurst"

    const/16 v5, 0x136

    aput-object v4, v3, v5

    const-string/jumbo v4, "media"

    const/16 v5, 0x137

    aput-object v4, v3, v5

    const-string/jumbo v4, "medical"

    const/16 v5, 0x138

    aput-object v4, v3, v5

    const-string/jumbo v4, "medizinhistorisches"

    const/16 v5, 0x139

    aput-object v4, v3, v5

    const-string/jumbo v4, "meeres"

    const/16 v5, 0x13a

    aput-object v4, v3, v5

    const-string/jumbo v4, "memorial"

    const/16 v5, 0x13b

    aput-object v4, v3, v5

    const-string/jumbo v4, "mesaverde"

    const/16 v5, 0x13c

    aput-object v4, v3, v5

    const-string/jumbo v4, "michigan"

    const/16 v5, 0x13d

    aput-object v4, v3, v5

    const-string/jumbo v4, "midatlantic"

    const/16 v5, 0x13e

    aput-object v4, v3, v5

    const-string/jumbo v4, "military"

    const/16 v5, 0x13f

    aput-object v4, v3, v5

    const-string/jumbo v4, "mill"

    const/16 v5, 0x140

    aput-object v4, v3, v5

    const-string/jumbo v4, "miners"

    const/16 v5, 0x141

    aput-object v4, v3, v5

    const-string/jumbo v4, "mining"

    const/16 v5, 0x142

    aput-object v4, v3, v5

    const-string/jumbo v4, "minnesota"

    const/16 v5, 0x143

    aput-object v4, v3, v5

    const-string/jumbo v4, "missile"

    const/16 v5, 0x144

    aput-object v4, v3, v5

    const-string/jumbo v4, "missoula"

    const/16 v5, 0x145

    aput-object v4, v3, v5

    const-string/jumbo v4, "modern"

    const/16 v5, 0x146

    aput-object v4, v3, v5

    const-string/jumbo v4, "moma"

    const/16 v5, 0x147

    aput-object v4, v3, v5

    const-string/jumbo v4, "money"

    const/16 v5, 0x148

    aput-object v4, v3, v5

    const-string/jumbo v4, "monmouth"

    const/16 v5, 0x149

    aput-object v4, v3, v5

    const-string/jumbo v4, "monticello"

    const/16 v5, 0x14a

    aput-object v4, v3, v5

    const-string/jumbo v4, "montreal"

    const/16 v5, 0x14b

    aput-object v4, v3, v5

    const-string/jumbo v4, "moscow"

    const/16 v5, 0x14c

    aput-object v4, v3, v5

    const-string/jumbo v4, "motorcycle"

    const/16 v5, 0x14d

    aput-object v4, v3, v5

    const-string/jumbo v4, "muenchen"

    const/16 v5, 0x14e

    aput-object v4, v3, v5

    const-string/jumbo v4, "muenster"

    const/16 v5, 0x14f

    aput-object v4, v3, v5

    const-string/jumbo v4, "mulhouse"

    const/16 v5, 0x150

    aput-object v4, v3, v5

    const-string/jumbo v4, "muncie"

    const/16 v5, 0x151

    aput-object v4, v3, v5

    const-string/jumbo v4, "museet"

    const/16 v5, 0x152

    aput-object v4, v3, v5

    const-string/jumbo v4, "museumcenter"

    const/16 v5, 0x153

    aput-object v4, v3, v5

    const-string/jumbo v4, "museumvereniging"

    const/16 v5, 0x154

    aput-object v4, v3, v5

    const-string/jumbo v4, "music"

    const/16 v5, 0x155

    aput-object v4, v3, v5

    const-string/jumbo v4, "national"

    const/16 v5, 0x156

    aput-object v4, v3, v5

    const-string/jumbo v4, "nationalfirearms"

    const/16 v5, 0x157

    aput-object v4, v3, v5

    const-string/jumbo v4, "nationalheritage"

    const/16 v5, 0x158

    aput-object v4, v3, v5

    const-string/jumbo v4, "nativeamerican"

    const/16 v5, 0x159

    aput-object v4, v3, v5

    const-string/jumbo v4, "naturalhistory"

    const/16 v5, 0x15a

    aput-object v4, v3, v5

    const-string/jumbo v4, "naturalhistorymuseum"

    const/16 v5, 0x15b

    aput-object v4, v3, v5

    const-string/jumbo v4, "naturalsciences"

    const/16 v5, 0x15c

    aput-object v4, v3, v5

    const-string/jumbo v4, "nature"

    const/16 v5, 0x15d

    aput-object v4, v3, v5

    const-string/jumbo v4, "naturhistorisches"

    const/16 v5, 0x15e

    aput-object v4, v3, v5

    const-string/jumbo v4, "natuurwetenschappen"

    const/16 v5, 0x15f

    aput-object v4, v3, v5

    const-string/jumbo v4, "naumburg"

    const/16 v5, 0x160

    aput-object v4, v3, v5

    const-string/jumbo v4, "naval"

    const/16 v5, 0x161

    aput-object v4, v3, v5

    const-string/jumbo v4, "nebraska"

    const/16 v5, 0x162

    aput-object v4, v3, v5

    const-string/jumbo v4, "neues"

    const/16 v5, 0x163

    aput-object v4, v3, v5

    const-string/jumbo v4, "newhampshire"

    const/16 v5, 0x164

    aput-object v4, v3, v5

    const-string/jumbo v4, "newjersey"

    const/16 v5, 0x165

    aput-object v4, v3, v5

    const-string/jumbo v4, "newmexico"

    const/16 v5, 0x166

    aput-object v4, v3, v5

    const-string/jumbo v4, "newport"

    const/16 v5, 0x167

    aput-object v4, v3, v5

    const-string/jumbo v4, "newspaper"

    const/16 v5, 0x168

    aput-object v4, v3, v5

    const-string/jumbo v4, "newyork"

    const/16 v5, 0x169

    aput-object v4, v3, v5

    const-string/jumbo v4, "niepce"

    const/16 v5, 0x16a

    aput-object v4, v3, v5

    const-string/jumbo v4, "norfolk"

    const/16 v5, 0x16b

    aput-object v4, v3, v5

    const-string/jumbo v4, "north"

    const/16 v5, 0x16c

    aput-object v4, v3, v5

    const-string/jumbo v4, "nrw"

    const/16 v5, 0x16d

    aput-object v4, v3, v5

    const-string/jumbo v4, "nuernberg"

    const/16 v5, 0x16e

    aput-object v4, v3, v5

    const-string/jumbo v4, "nuremberg"

    const/16 v5, 0x16f

    aput-object v4, v3, v5

    const-string/jumbo v4, "nyc"

    const/16 v5, 0x170

    aput-object v4, v3, v5

    const-string/jumbo v4, "nyny"

    const/16 v5, 0x171

    aput-object v4, v3, v5

    const-string/jumbo v4, "oceanographic"

    const/16 v5, 0x172

    aput-object v4, v3, v5

    const-string/jumbo v4, "oceanographique"

    const/16 v5, 0x173

    aput-object v4, v3, v5

    const-string/jumbo v4, "omaha"

    const/16 v5, 0x174

    aput-object v4, v3, v5

    const-string/jumbo v4, "online"

    const/16 v5, 0x175

    aput-object v4, v3, v5

    const-string/jumbo v4, "ontario"

    const/16 v5, 0x176

    aput-object v4, v3, v5

    const-string/jumbo v4, "openair"

    const/16 v5, 0x177

    aput-object v4, v3, v5

    const-string/jumbo v4, "oregon"

    const/16 v5, 0x178

    aput-object v4, v3, v5

    const-string/jumbo v4, "oregontrail"

    const/16 v5, 0x179

    aput-object v4, v3, v5

    const-string/jumbo v4, "otago"

    const/16 v5, 0x17a

    aput-object v4, v3, v5

    const-string/jumbo v4, "oxford"

    const/16 v5, 0x17b

    aput-object v4, v3, v5

    const-string/jumbo v4, "pacific"

    const/16 v5, 0x17c

    aput-object v4, v3, v5

    const-string/jumbo v4, "paderborn"

    const/16 v5, 0x17d

    aput-object v4, v3, v5

    const-string/jumbo v4, "palace"

    const/16 v5, 0x17e

    aput-object v4, v3, v5

    const-string/jumbo v4, "paleo"

    const/16 v5, 0x17f

    aput-object v4, v3, v5

    const-string/jumbo v4, "palmsprings"

    const/16 v5, 0x180

    aput-object v4, v3, v5

    const-string/jumbo v4, "panama"

    const/16 v5, 0x181

    aput-object v4, v3, v5

    const-string/jumbo v4, "paris"

    const/16 v5, 0x182

    aput-object v4, v3, v5

    const-string/jumbo v4, "pasadena"

    const/16 v5, 0x183

    aput-object v4, v3, v5

    const-string/jumbo v4, "pharmacy"

    const/16 v5, 0x184

    aput-object v4, v3, v5

    const-string/jumbo v4, "philadelphia"

    const/16 v5, 0x185

    aput-object v4, v3, v5

    const-string/jumbo v4, "philadelphiaarea"

    const/16 v5, 0x186

    aput-object v4, v3, v5

    const-string/jumbo v4, "philately"

    const/16 v5, 0x187

    aput-object v4, v3, v5

    const-string/jumbo v4, "phoenix"

    const/16 v5, 0x188

    aput-object v4, v3, v5

    const-string/jumbo v4, "photography"

    const/16 v5, 0x189

    aput-object v4, v3, v5

    const-string/jumbo v4, "pilots"

    const/16 v5, 0x18a

    aput-object v4, v3, v5

    const-string/jumbo v4, "pittsburgh"

    const/16 v5, 0x18b

    aput-object v4, v3, v5

    const-string/jumbo v4, "planetarium"

    const/16 v5, 0x18c

    aput-object v4, v3, v5

    const-string/jumbo v4, "plantation"

    const/16 v5, 0x18d

    aput-object v4, v3, v5

    const-string/jumbo v4, "plants"

    const/16 v5, 0x18e

    aput-object v4, v3, v5

    const-string/jumbo v4, "plaza"

    const/16 v5, 0x18f

    aput-object v4, v3, v5

    const-string/jumbo v4, "portal"

    const/16 v5, 0x190

    aput-object v4, v3, v5

    const-string/jumbo v4, "portland"

    const/16 v5, 0x191

    aput-object v4, v3, v5

    const-string/jumbo v4, "portlligat"

    const/16 v5, 0x192

    aput-object v4, v3, v5

    const-string/jumbo v4, "posts-and-telecommunications"

    const/16 v5, 0x193

    aput-object v4, v3, v5

    const-string/jumbo v4, "preservation"

    const/16 v5, 0x194

    aput-object v4, v3, v5

    const-string/jumbo v4, "presidio"

    const/16 v5, 0x195

    aput-object v4, v3, v5

    const-string/jumbo v4, "press"

    const/16 v5, 0x196

    aput-object v4, v3, v5

    const-string/jumbo v4, "project"

    const/16 v5, 0x197

    aput-object v4, v3, v5

    const-string/jumbo v4, "public"

    const/16 v5, 0x198

    aput-object v4, v3, v5

    const-string/jumbo v4, "pubol"

    const/16 v5, 0x199

    aput-object v4, v3, v5

    const-string/jumbo v4, "quebec"

    const/16 v5, 0x19a

    aput-object v4, v3, v5

    const-string/jumbo v4, "railroad"

    const/16 v5, 0x19b

    aput-object v4, v3, v5

    const-string/jumbo v4, "railway"

    const/16 v5, 0x19c

    aput-object v4, v3, v5

    const-string/jumbo v4, "research"

    const/16 v5, 0x19d

    aput-object v4, v3, v5

    const-string/jumbo v4, "resistance"

    const/16 v5, 0x19e

    aput-object v4, v3, v5

    const-string/jumbo v4, "riodejaneiro"

    const/16 v5, 0x19f

    aput-object v4, v3, v5

    const-string/jumbo v4, "rochester"

    const/16 v5, 0x1a0

    aput-object v4, v3, v5

    const-string/jumbo v4, "rockart"

    const/16 v5, 0x1a1

    aput-object v4, v3, v5

    const-string/jumbo v4, "roma"

    const/16 v5, 0x1a2

    aput-object v4, v3, v5

    const-string/jumbo v4, "russia"

    const/16 v5, 0x1a3

    aput-object v4, v3, v5

    const-string/jumbo v4, "saintlouis"

    const/16 v5, 0x1a4

    aput-object v4, v3, v5

    const-string/jumbo v4, "salem"

    const/16 v5, 0x1a5

    aput-object v4, v3, v5

    const-string/jumbo v4, "salvadordali"

    const/16 v5, 0x1a6

    aput-object v4, v3, v5

    const-string/jumbo v4, "salzburg"

    const/16 v5, 0x1a7

    aput-object v4, v3, v5

    const-string/jumbo v4, "sandiego"

    const/16 v5, 0x1a8

    aput-object v4, v3, v5

    const-string/jumbo v4, "sanfrancisco"

    const/16 v5, 0x1a9

    aput-object v4, v3, v5

    const-string/jumbo v4, "santabarbara"

    const/16 v5, 0x1aa

    aput-object v4, v3, v5

    const-string/jumbo v4, "santacruz"

    const/16 v5, 0x1ab

    aput-object v4, v3, v5

    const-string/jumbo v4, "santafe"

    const/16 v5, 0x1ac

    aput-object v4, v3, v5

    const-string/jumbo v4, "saskatchewan"

    const/16 v5, 0x1ad

    aput-object v4, v3, v5

    const-string/jumbo v4, "satx"

    const/16 v5, 0x1ae

    aput-object v4, v3, v5

    const-string/jumbo v4, "savannahga"

    const/16 v5, 0x1af

    aput-object v4, v3, v5

    const-string/jumbo v4, "schlesisches"

    const/16 v5, 0x1b0

    aput-object v4, v3, v5

    const-string/jumbo v4, "schoenbrunn"

    const/16 v5, 0x1b1

    aput-object v4, v3, v5

    const-string/jumbo v4, "schokoladen"

    const/16 v5, 0x1b2

    aput-object v4, v3, v5

    const-string/jumbo v4, "school"

    const/16 v5, 0x1b3

    aput-object v4, v3, v5

    const-string/jumbo v4, "schweiz"

    const/16 v5, 0x1b4

    aput-object v4, v3, v5

    const-string/jumbo v4, "science"

    const/16 v5, 0x1b5

    aput-object v4, v3, v5

    const-string/jumbo v4, "scienceandhistory"

    const/16 v5, 0x1b6

    aput-object v4, v3, v5

    const-string/jumbo v4, "scienceandindustry"

    const/16 v5, 0x1b7

    aput-object v4, v3, v5

    const-string/jumbo v4, "sciencecenter"

    const/16 v5, 0x1b8

    aput-object v4, v3, v5

    const-string/jumbo v4, "sciencecenters"

    const/16 v5, 0x1b9

    aput-object v4, v3, v5

    const-string/jumbo v4, "science-fiction"

    const/16 v5, 0x1ba

    aput-object v4, v3, v5

    const-string/jumbo v4, "sciencehistory"

    const/16 v5, 0x1bb

    aput-object v4, v3, v5

    const-string/jumbo v4, "sciences"

    const/16 v5, 0x1bc

    aput-object v4, v3, v5

    const-string/jumbo v4, "sciencesnaturelles"

    const/16 v5, 0x1bd

    aput-object v4, v3, v5

    const-string/jumbo v4, "scotland"

    const/16 v5, 0x1be

    aput-object v4, v3, v5

    const-string/jumbo v4, "seaport"

    const/16 v5, 0x1bf

    aput-object v4, v3, v5

    const-string/jumbo v4, "settlement"

    const/16 v5, 0x1c0

    aput-object v4, v3, v5

    const-string/jumbo v4, "settlers"

    const/16 v5, 0x1c1

    aput-object v4, v3, v5

    const-string/jumbo v4, "shell"

    const/16 v5, 0x1c2

    aput-object v4, v3, v5

    const-string/jumbo v4, "sherbrooke"

    const/16 v5, 0x1c3

    aput-object v4, v3, v5

    const-string/jumbo v4, "sibenik"

    const/16 v5, 0x1c4

    aput-object v4, v3, v5

    const-string/jumbo v4, "silk"

    const/16 v5, 0x1c5

    aput-object v4, v3, v5

    const-string/jumbo v4, "ski"

    const/16 v5, 0x1c6

    aput-object v4, v3, v5

    const-string/jumbo v4, "skole"

    const/16 v5, 0x1c7

    aput-object v4, v3, v5

    const-string/jumbo v4, "society"

    const/16 v5, 0x1c8

    aput-object v4, v3, v5

    const-string/jumbo v4, "sologne"

    const/16 v5, 0x1c9

    aput-object v4, v3, v5

    const-string/jumbo v4, "soundandvision"

    const/16 v5, 0x1ca

    aput-object v4, v3, v5

    const-string/jumbo v4, "southcarolina"

    const/16 v5, 0x1cb

    aput-object v4, v3, v5

    const-string/jumbo v4, "southwest"

    const/16 v5, 0x1cc

    aput-object v4, v3, v5

    const-string/jumbo v4, "space"

    const/16 v5, 0x1cd

    aput-object v4, v3, v5

    const-string/jumbo v4, "spy"

    const/16 v5, 0x1ce

    aput-object v4, v3, v5

    const-string/jumbo v4, "square"

    const/16 v5, 0x1cf

    aput-object v4, v3, v5

    const-string/jumbo v4, "stadt"

    const/16 v5, 0x1d0

    aput-object v4, v3, v5

    const-string/jumbo v4, "stalbans"

    const/16 v5, 0x1d1

    aput-object v4, v3, v5

    const-string/jumbo v4, "starnberg"

    const/16 v5, 0x1d2

    aput-object v4, v3, v5

    const-string/jumbo v4, "state"

    const/16 v5, 0x1d3

    aput-object v4, v3, v5

    const-string/jumbo v4, "stateofdelaware"

    const/16 v5, 0x1d4

    aput-object v4, v3, v5

    const-string/jumbo v4, "station"

    const/16 v5, 0x1d5

    aput-object v4, v3, v5

    const-string/jumbo v4, "steam"

    const/16 v5, 0x1d6

    aput-object v4, v3, v5

    const-string/jumbo v4, "steiermark"

    const/16 v5, 0x1d7

    aput-object v4, v3, v5

    const-string/jumbo v4, "stjohn"

    const/16 v5, 0x1d8

    aput-object v4, v3, v5

    const-string/jumbo v4, "stockholm"

    const/16 v5, 0x1d9

    aput-object v4, v3, v5

    const-string/jumbo v4, "stpetersburg"

    const/16 v5, 0x1da

    aput-object v4, v3, v5

    const-string/jumbo v4, "stuttgart"

    const/16 v5, 0x1db

    aput-object v4, v3, v5

    const-string/jumbo v4, "suisse"

    const/16 v5, 0x1dc

    aput-object v4, v3, v5

    const-string/jumbo v4, "surgeonshall"

    const/16 v5, 0x1dd

    aput-object v4, v3, v5

    const-string/jumbo v4, "surrey"

    const/16 v5, 0x1de

    aput-object v4, v3, v5

    const-string/jumbo v4, "svizzera"

    const/16 v5, 0x1df

    aput-object v4, v3, v5

    const-string/jumbo v4, "sweden"

    const/16 v5, 0x1e0

    aput-object v4, v3, v5

    const-string/jumbo v4, "sydney"

    const/16 v5, 0x1e1

    aput-object v4, v3, v5

    const-string/jumbo v4, "tank"

    const/16 v5, 0x1e2

    aput-object v4, v3, v5

    const-string/jumbo v4, "tcm"

    const/16 v5, 0x1e3

    aput-object v4, v3, v5

    const-string/jumbo v4, "technology"

    const/16 v5, 0x1e4

    aput-object v4, v3, v5

    const-string/jumbo v4, "telekommunikation"

    const/16 v5, 0x1e5

    aput-object v4, v3, v5

    const-string/jumbo v4, "television"

    const/16 v5, 0x1e6

    aput-object v4, v3, v5

    const-string/jumbo v4, "texas"

    const/16 v5, 0x1e7

    aput-object v4, v3, v5

    const-string/jumbo v4, "textile"

    const/16 v5, 0x1e8

    aput-object v4, v3, v5

    const-string/jumbo v4, "theater"

    const/16 v5, 0x1e9

    aput-object v4, v3, v5

    const-string/jumbo v4, "time"

    const/16 v5, 0x1ea

    aput-object v4, v3, v5

    const-string/jumbo v4, "timekeeping"

    const/16 v5, 0x1eb

    aput-object v4, v3, v5

    const-string/jumbo v4, "topology"

    const/16 v5, 0x1ec

    aput-object v4, v3, v5

    const-string/jumbo v4, "torino"

    const/16 v5, 0x1ed

    aput-object v4, v3, v5

    const-string/jumbo v4, "touch"

    const/16 v5, 0x1ee

    aput-object v4, v3, v5

    const-string/jumbo v4, "town"

    const/16 v5, 0x1ef

    aput-object v4, v3, v5

    const-string/jumbo v4, "transport"

    const/16 v5, 0x1f0

    aput-object v4, v3, v5

    const-string/jumbo v4, "tree"

    const/16 v5, 0x1f1

    aput-object v4, v3, v5

    const-string/jumbo v4, "trolley"

    const/16 v5, 0x1f2

    aput-object v4, v3, v5

    const-string/jumbo v4, "trust"

    const/16 v5, 0x1f3

    aput-object v4, v3, v5

    const-string/jumbo v4, "trustee"

    const/16 v5, 0x1f4

    aput-object v4, v3, v5

    const-string/jumbo v4, "uhren"

    const/16 v5, 0x1f5

    aput-object v4, v3, v5

    const-string/jumbo v4, "ulm"

    const/16 v5, 0x1f6

    aput-object v4, v3, v5

    const-string/jumbo v4, "undersea"

    const/16 v5, 0x1f7

    aput-object v4, v3, v5

    const-string/jumbo v4, "university"

    const/16 v5, 0x1f8

    aput-object v4, v3, v5

    const-string/jumbo v4, "usa"

    const/16 v5, 0x1f9

    aput-object v4, v3, v5

    const-string/jumbo v4, "usantiques"

    const/16 v5, 0x1fa

    aput-object v4, v3, v5

    const-string/jumbo v4, "usarts"

    const/16 v5, 0x1fb

    aput-object v4, v3, v5

    const-string/jumbo v4, "uscountryestate"

    const/16 v5, 0x1fc

    aput-object v4, v3, v5

    const-string/jumbo v4, "usculture"

    const/16 v5, 0x1fd

    aput-object v4, v3, v5

    const-string/jumbo v4, "usdecorativearts"

    const/16 v5, 0x1fe

    aput-object v4, v3, v5

    const-string/jumbo v4, "usgarden"

    const/16 v5, 0x1ff

    aput-object v4, v3, v5

    const-string/jumbo v4, "ushistory"

    const/16 v5, 0x200

    aput-object v4, v3, v5

    const-string/jumbo v4, "ushuaia"

    const/16 v5, 0x201

    aput-object v4, v3, v5

    const-string/jumbo v4, "uslivinghistory"

    const/16 v5, 0x202

    aput-object v4, v3, v5

    const-string/jumbo v4, "utah"

    const/16 v5, 0x203

    aput-object v4, v3, v5

    const-string/jumbo v4, "uvic"

    const/16 v5, 0x204

    aput-object v4, v3, v5

    const-string/jumbo v4, "valley"

    const/16 v5, 0x205

    aput-object v4, v3, v5

    const-string/jumbo v4, "vantaa"

    const/16 v5, 0x206

    aput-object v4, v3, v5

    const-string/jumbo v4, "versailles"

    const/16 v5, 0x207

    aput-object v4, v3, v5

    const-string/jumbo v4, "viking"

    const/16 v5, 0x208

    aput-object v4, v3, v5

    const-string/jumbo v4, "village"

    const/16 v5, 0x209

    aput-object v4, v3, v5

    const-string/jumbo v4, "virginia"

    const/16 v5, 0x20a

    aput-object v4, v3, v5

    const-string/jumbo v4, "virtual"

    const/16 v5, 0x20b

    aput-object v4, v3, v5

    const-string/jumbo v4, "virtuel"

    const/16 v5, 0x20c

    aput-object v4, v3, v5

    const-string/jumbo v4, "vlaanderen"

    const/16 v5, 0x20d

    aput-object v4, v3, v5

    const-string/jumbo v4, "volkenkunde"

    const/16 v5, 0x20e

    aput-object v4, v3, v5

    const-string/jumbo v4, "wales"

    const/16 v5, 0x20f

    aput-object v4, v3, v5

    const-string/jumbo v4, "wallonie"

    const/16 v5, 0x210

    aput-object v4, v3, v5

    const-string/jumbo v4, "war"

    const/16 v5, 0x211

    aput-object v4, v3, v5

    const-string/jumbo v4, "washingtondc"

    const/16 v5, 0x212

    aput-object v4, v3, v5

    const-string/jumbo v4, "watchandclock"

    const/16 v5, 0x213

    aput-object v4, v3, v5

    const-string/jumbo v4, "watch-and-clock"

    const/16 v5, 0x214

    aput-object v4, v3, v5

    const-string/jumbo v4, "western"

    const/16 v5, 0x215

    aput-object v4, v3, v5

    const-string/jumbo v4, "westfalen"

    const/16 v5, 0x216

    aput-object v4, v3, v5

    const-string/jumbo v4, "whaling"

    const/16 v5, 0x217

    aput-object v4, v3, v5

    const-string/jumbo v4, "wildlife"

    const/16 v5, 0x218

    aput-object v4, v3, v5

    const-string/jumbo v4, "williamsburg"

    const/16 v5, 0x219

    aput-object v4, v3, v5

    const-string/jumbo v4, "windmill"

    const/16 v5, 0x21a

    aput-object v4, v3, v5

    const-string/jumbo v4, "workshop"

    const/16 v5, 0x21b

    aput-object v4, v3, v5

    const-string/jumbo v4, "york"

    const/16 v5, 0x21c

    aput-object v4, v3, v5

    const-string/jumbo v4, "yorkshire"

    const/16 v5, 0x21d

    aput-object v4, v3, v5

    const-string/jumbo v4, "yosemite"

    const/16 v5, 0x21e

    aput-object v4, v3, v5

    const-string/jumbo v4, "youth"

    const/16 v5, 0x21f

    aput-object v4, v3, v5

    const-string/jumbo v4, "zoological"

    const/16 v5, 0x220

    aput-object v4, v3, v5

    const-string/jumbo v4, "zoology"

    const/16 v5, 0x221

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--9dbhblg6di"

    const/16 v5, 0x222

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--h1aegh"

    const/16 v5, 0x223

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "mv"

    new-instance v2, Ljava/util/HashSet;

    const/16 v3, 0xe

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "aero"

    aput-object v4, v3, v6

    const-string/jumbo v4, "biz"

    aput-object v4, v3, v7

    const-string/jumbo v4, "com"

    aput-object v4, v3, v8

    const-string/jumbo v4, "coop"

    aput-object v4, v3, v9

    const-string/jumbo v4, "edu"

    aput-object v4, v3, v10

    const-string/jumbo v4, "gov"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    const-string/jumbo v4, "info"

    const/4 v5, 0x6

    aput-object v4, v3, v5

    const-string/jumbo v4, "int"

    const/4 v5, 0x7

    aput-object v4, v3, v5

    const-string/jumbo v4, "mil"

    const/16 v5, 0x8

    aput-object v4, v3, v5

    const-string/jumbo v4, "museum"

    const/16 v5, 0x9

    aput-object v4, v3, v5

    const-string/jumbo v4, "name"

    const/16 v5, 0xa

    aput-object v4, v3, v5

    const-string/jumbo v4, "net"

    const/16 v5, 0xb

    aput-object v4, v3, v5

    const-string/jumbo v4, "org"

    const/16 v5, 0xc

    aput-object v4, v3, v5

    const-string/jumbo v4, "pro"

    const/16 v5, 0xd

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "mw"

    new-instance v2, Ljava/util/HashSet;

    const/16 v3, 0xb

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "ac"

    aput-object v4, v3, v6

    const-string/jumbo v4, "biz"

    aput-object v4, v3, v7

    const-string/jumbo v4, "co"

    aput-object v4, v3, v8

    const-string/jumbo v4, "com"

    aput-object v4, v3, v9

    const-string/jumbo v4, "coop"

    aput-object v4, v3, v10

    const-string/jumbo v4, "edu"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    const-string/jumbo v4, "gov"

    const/4 v5, 0x6

    aput-object v4, v3, v5

    const-string/jumbo v4, "int"

    const/4 v5, 0x7

    aput-object v4, v3, v5

    const-string/jumbo v4, "museum"

    const/16 v5, 0x8

    aput-object v4, v3, v5

    const-string/jumbo v4, "net"

    const/16 v5, 0x9

    aput-object v4, v3, v5

    const-string/jumbo v4, "org"

    const/16 v5, 0xa

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "mx"

    new-instance v2, Ljava/util/HashSet;

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "com"

    aput-object v4, v3, v6

    const-string/jumbo v4, "org"

    aput-object v4, v3, v7

    const-string/jumbo v4, "gob"

    aput-object v4, v3, v8

    const-string/jumbo v4, "edu"

    aput-object v4, v3, v9

    const-string/jumbo v4, "net"

    aput-object v4, v3, v10

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "my"

    new-instance v2, Ljava/util/HashSet;

    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "com"

    aput-object v4, v3, v6

    const-string/jumbo v4, "net"

    aput-object v4, v3, v7

    const-string/jumbo v4, "org"

    aput-object v4, v3, v8

    const-string/jumbo v4, "gov"

    aput-object v4, v3, v9

    const-string/jumbo v4, "edu"

    aput-object v4, v3, v10

    const-string/jumbo v4, "mil"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    const-string/jumbo v4, "name"

    const/4 v5, 0x6

    aput-object v4, v3, v5

    const-string/jumbo v4, "sch"

    const/4 v5, 0x7

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "na"

    new-instance v2, Ljava/util/HashSet;

    const/16 v3, 0x9

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "co"

    aput-object v4, v3, v6

    const-string/jumbo v4, "com"

    aput-object v4, v3, v7

    const-string/jumbo v4, "org"

    aput-object v4, v3, v8

    const-string/jumbo v4, "edu"

    aput-object v4, v3, v9

    const-string/jumbo v4, "edunet"

    aput-object v4, v3, v10

    const-string/jumbo v4, "net"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    const-string/jumbo v4, "alt"

    const/4 v5, 0x6

    aput-object v4, v3, v5

    const-string/jumbo v4, "biz"

    const/4 v5, 0x7

    aput-object v4, v3, v5

    const-string/jumbo v4, "info"

    const/16 v5, 0x8

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "nc"

    new-instance v2, Ljava/util/HashSet;

    new-array v3, v8, [Ljava/lang/String;

    const-string/jumbo v4, "asso"

    aput-object v4, v3, v6

    const-string/jumbo v4, "nom"

    aput-object v4, v3, v7

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "net"

    new-instance v2, Ljava/util/HashSet;

    new-array v3, v10, [Ljava/lang/String;

    const-string/jumbo v4, "gb"

    aput-object v4, v3, v6

    const-string/jumbo v4, "se"

    aput-object v4, v3, v7

    const-string/jumbo v4, "uk"

    aput-object v4, v3, v8

    const-string/jumbo v4, "za"

    aput-object v4, v3, v9

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "ng"

    new-instance v2, Ljava/util/HashSet;

    const/16 v3, 0x9

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "name"

    aput-object v4, v3, v6

    const-string/jumbo v4, "sch"

    aput-object v4, v3, v7

    const-string/jumbo v4, "mil"

    aput-object v4, v3, v8

    const-string/jumbo v4, "mobi"

    aput-object v4, v3, v9

    const-string/jumbo v4, "com"

    aput-object v4, v3, v10

    const-string/jumbo v4, "edu"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    const-string/jumbo v4, "gov"

    const/4 v5, 0x6

    aput-object v4, v3, v5

    const-string/jumbo v4, "net"

    const/4 v5, 0x7

    aput-object v4, v3, v5

    const-string/jumbo v4, "org"

    const/16 v5, 0x8

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "nf"

    new-instance v2, Ljava/util/HashSet;

    const/16 v3, 0xa

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "com"

    aput-object v4, v3, v6

    const-string/jumbo v4, "net"

    aput-object v4, v3, v7

    const-string/jumbo v4, "per"

    aput-object v4, v3, v8

    const-string/jumbo v4, "rec"

    aput-object v4, v3, v9

    const-string/jumbo v4, "web"

    aput-object v4, v3, v10

    const-string/jumbo v4, "arts"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    const-string/jumbo v4, "firm"

    const/4 v5, 0x6

    aput-object v4, v3, v5

    const-string/jumbo v4, "info"

    const/4 v5, 0x7

    aput-object v4, v3, v5

    const-string/jumbo v4, "other"

    const/16 v5, 0x8

    aput-object v4, v3, v5

    const-string/jumbo v4, "store"

    const/16 v5, 0x9

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "no"

    new-instance v2, Ljava/util/HashSet;

    const/16 v3, 0x2cd

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "fhs"

    aput-object v4, v3, v6

    const-string/jumbo v4, "vgs"

    aput-object v4, v3, v7

    const-string/jumbo v4, "fylkesbibl"

    aput-object v4, v3, v8

    const-string/jumbo v4, "folkebibl"

    aput-object v4, v3, v9

    const-string/jumbo v4, "museum"

    aput-object v4, v3, v10

    const-string/jumbo v4, "idrett"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    const-string/jumbo v4, "priv"

    const/4 v5, 0x6

    aput-object v4, v3, v5

    const-string/jumbo v4, "mil"

    const/4 v5, 0x7

    aput-object v4, v3, v5

    const-string/jumbo v4, "stat"

    const/16 v5, 0x8

    aput-object v4, v3, v5

    const-string/jumbo v4, "dep"

    const/16 v5, 0x9

    aput-object v4, v3, v5

    const-string/jumbo v4, "kommune"

    const/16 v5, 0xa

    aput-object v4, v3, v5

    const-string/jumbo v4, "herad"

    const/16 v5, 0xb

    aput-object v4, v3, v5

    const-string/jumbo v4, "aa"

    const/16 v5, 0xc

    aput-object v4, v3, v5

    const-string/jumbo v4, "ah"

    const/16 v5, 0xd

    aput-object v4, v3, v5

    const-string/jumbo v4, "bu"

    const/16 v5, 0xe

    aput-object v4, v3, v5

    const-string/jumbo v4, "fm"

    const/16 v5, 0xf

    aput-object v4, v3, v5

    const-string/jumbo v4, "hl"

    const/16 v5, 0x10

    aput-object v4, v3, v5

    const-string/jumbo v4, "hm"

    const/16 v5, 0x11

    aput-object v4, v3, v5

    const-string/jumbo v4, "jan-mayen"

    const/16 v5, 0x12

    aput-object v4, v3, v5

    const-string/jumbo v4, "mr"

    const/16 v5, 0x13

    aput-object v4, v3, v5

    const-string/jumbo v4, "nl"

    const/16 v5, 0x14

    aput-object v4, v3, v5

    const-string/jumbo v4, "nt"

    const/16 v5, 0x15

    aput-object v4, v3, v5

    const-string/jumbo v4, "of"

    const/16 v5, 0x16

    aput-object v4, v3, v5

    const-string/jumbo v4, "ol"

    const/16 v5, 0x17

    aput-object v4, v3, v5

    const-string/jumbo v4, "oslo"

    const/16 v5, 0x18

    aput-object v4, v3, v5

    const-string/jumbo v4, "rl"

    const/16 v5, 0x19

    aput-object v4, v3, v5

    const-string/jumbo v4, "sf"

    const/16 v5, 0x1a

    aput-object v4, v3, v5

    const-string/jumbo v4, "st"

    const/16 v5, 0x1b

    aput-object v4, v3, v5

    const-string/jumbo v4, "svalbard"

    const/16 v5, 0x1c

    aput-object v4, v3, v5

    const-string/jumbo v4, "tm"

    const/16 v5, 0x1d

    aput-object v4, v3, v5

    const-string/jumbo v4, "tr"

    const/16 v5, 0x1e

    aput-object v4, v3, v5

    const-string/jumbo v4, "va"

    const/16 v5, 0x1f

    aput-object v4, v3, v5

    const-string/jumbo v4, "vf"

    const/16 v5, 0x20

    aput-object v4, v3, v5

    const-string/jumbo v4, "akrehamn"

    const/16 v5, 0x21

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--krehamn-dxa"

    const/16 v5, 0x22

    aput-object v4, v3, v5

    const-string/jumbo v4, "algard"

    const/16 v5, 0x23

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--lgrd-poac"

    const/16 v5, 0x24

    aput-object v4, v3, v5

    const-string/jumbo v4, "arna"

    const/16 v5, 0x25

    aput-object v4, v3, v5

    const-string/jumbo v4, "brumunddal"

    const/16 v5, 0x26

    aput-object v4, v3, v5

    const-string/jumbo v4, "bryne"

    const/16 v5, 0x27

    aput-object v4, v3, v5

    const-string/jumbo v4, "bronnoysund"

    const/16 v5, 0x28

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--brnnysund-m8ac"

    const/16 v5, 0x29

    aput-object v4, v3, v5

    const-string/jumbo v4, "drobak"

    const/16 v5, 0x2a

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--drbak-wua"

    const/16 v5, 0x2b

    aput-object v4, v3, v5

    const-string/jumbo v4, "egersund"

    const/16 v5, 0x2c

    aput-object v4, v3, v5

    const-string/jumbo v4, "fetsund"

    const/16 v5, 0x2d

    aput-object v4, v3, v5

    const-string/jumbo v4, "floro"

    const/16 v5, 0x2e

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--flor-jra"

    const/16 v5, 0x2f

    aput-object v4, v3, v5

    const-string/jumbo v4, "fredrikstad"

    const/16 v5, 0x30

    aput-object v4, v3, v5

    const-string/jumbo v4, "hokksund"

    const/16 v5, 0x31

    aput-object v4, v3, v5

    const-string/jumbo v4, "honefoss"

    const/16 v5, 0x32

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--hnefoss-q1a"

    const/16 v5, 0x33

    aput-object v4, v3, v5

    const-string/jumbo v4, "jessheim"

    const/16 v5, 0x34

    aput-object v4, v3, v5

    const-string/jumbo v4, "jorpeland"

    const/16 v5, 0x35

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--jrpeland-54a"

    const/16 v5, 0x36

    aput-object v4, v3, v5

    const-string/jumbo v4, "kirkenes"

    const/16 v5, 0x37

    aput-object v4, v3, v5

    const-string/jumbo v4, "kopervik"

    const/16 v5, 0x38

    aput-object v4, v3, v5

    const-string/jumbo v4, "krokstadelva"

    const/16 v5, 0x39

    aput-object v4, v3, v5

    const-string/jumbo v4, "langevag"

    const/16 v5, 0x3a

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--langevg-jxa"

    const/16 v5, 0x3b

    aput-object v4, v3, v5

    const-string/jumbo v4, "leirvik"

    const/16 v5, 0x3c

    aput-object v4, v3, v5

    const-string/jumbo v4, "mjondalen"

    const/16 v5, 0x3d

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--mjndalen-64a"

    const/16 v5, 0x3e

    aput-object v4, v3, v5

    const-string/jumbo v4, "mo-i-rana"

    const/16 v5, 0x3f

    aput-object v4, v3, v5

    const-string/jumbo v4, "mosjoen"

    const/16 v5, 0x40

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--mosjen-eya"

    const/16 v5, 0x41

    aput-object v4, v3, v5

    const-string/jumbo v4, "nesoddtangen"

    const/16 v5, 0x42

    aput-object v4, v3, v5

    const-string/jumbo v4, "orkanger"

    const/16 v5, 0x43

    aput-object v4, v3, v5

    const-string/jumbo v4, "osoyro"

    const/16 v5, 0x44

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--osyro-wua"

    const/16 v5, 0x45

    aput-object v4, v3, v5

    const-string/jumbo v4, "raholt"

    const/16 v5, 0x46

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--rholt-mra"

    const/16 v5, 0x47

    aput-object v4, v3, v5

    const-string/jumbo v4, "sandnessjoen"

    const/16 v5, 0x48

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--sandnessjen-ogb"

    const/16 v5, 0x49

    aput-object v4, v3, v5

    const-string/jumbo v4, "skedsmokorset"

    const/16 v5, 0x4a

    aput-object v4, v3, v5

    const-string/jumbo v4, "slattum"

    const/16 v5, 0x4b

    aput-object v4, v3, v5

    const-string/jumbo v4, "spjelkavik"

    const/16 v5, 0x4c

    aput-object v4, v3, v5

    const-string/jumbo v4, "stathelle"

    const/16 v5, 0x4d

    aput-object v4, v3, v5

    const-string/jumbo v4, "stavern"

    const/16 v5, 0x4e

    aput-object v4, v3, v5

    const-string/jumbo v4, "stjordalshalsen"

    const/16 v5, 0x4f

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--stjrdalshalsen-sqb"

    const/16 v5, 0x50

    aput-object v4, v3, v5

    const-string/jumbo v4, "tananger"

    const/16 v5, 0x51

    aput-object v4, v3, v5

    const-string/jumbo v4, "tranby"

    const/16 v5, 0x52

    aput-object v4, v3, v5

    const-string/jumbo v4, "vossevangen"

    const/16 v5, 0x53

    aput-object v4, v3, v5

    const-string/jumbo v4, "tranby"

    const/16 v5, 0x54

    aput-object v4, v3, v5

    const-string/jumbo v4, "vossevangen"

    const/16 v5, 0x55

    aput-object v4, v3, v5

    const-string/jumbo v4, "afjord"

    const/16 v5, 0x56

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--fjord-lra"

    const/16 v5, 0x57

    aput-object v4, v3, v5

    const-string/jumbo v4, "agdenes"

    const/16 v5, 0x58

    aput-object v4, v3, v5

    const-string/jumbo v4, "al"

    const/16 v5, 0x59

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--l-1fa"

    const/16 v5, 0x5a

    aput-object v4, v3, v5

    const-string/jumbo v4, "alesund"

    const/16 v5, 0x5b

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--lesund-hua"

    const/16 v5, 0x5c

    aput-object v4, v3, v5

    const-string/jumbo v4, "alstahaug"

    const/16 v5, 0x5d

    aput-object v4, v3, v5

    const-string/jumbo v4, "alta"

    const/16 v5, 0x5e

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--lt-liac"

    const/16 v5, 0x5f

    aput-object v4, v3, v5

    const-string/jumbo v4, "alaheadju"

    const/16 v5, 0x60

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--laheadju-7ya"

    const/16 v5, 0x61

    aput-object v4, v3, v5

    const-string/jumbo v4, "alvdal"

    const/16 v5, 0x62

    aput-object v4, v3, v5

    const-string/jumbo v4, "amli"

    const/16 v5, 0x63

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--mli-tla"

    const/16 v5, 0x64

    aput-object v4, v3, v5

    const-string/jumbo v4, "amot"

    const/16 v5, 0x65

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--mot-tla"

    const/16 v5, 0x66

    aput-object v4, v3, v5

    const-string/jumbo v4, "andebu"

    const/16 v5, 0x67

    aput-object v4, v3, v5

    const-string/jumbo v4, "andoy"

    const/16 v5, 0x68

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--andy-ira"

    const/16 v5, 0x69

    aput-object v4, v3, v5

    const-string/jumbo v4, "andasuolo"

    const/16 v5, 0x6a

    aput-object v4, v3, v5

    const-string/jumbo v4, "ardal"

    const/16 v5, 0x6b

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--rdal-poa"

    const/16 v5, 0x6c

    aput-object v4, v3, v5

    const-string/jumbo v4, "aremark"

    const/16 v5, 0x6d

    aput-object v4, v3, v5

    const-string/jumbo v4, "arendal"

    const/16 v5, 0x6e

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--s-1fa"

    const/16 v5, 0x6f

    aput-object v4, v3, v5

    const-string/jumbo v4, "aseral"

    const/16 v5, 0x70

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--seral-lra"

    const/16 v5, 0x71

    aput-object v4, v3, v5

    const-string/jumbo v4, "asker"

    const/16 v5, 0x72

    aput-object v4, v3, v5

    const-string/jumbo v4, "askim"

    const/16 v5, 0x73

    aput-object v4, v3, v5

    const-string/jumbo v4, "askvoll"

    const/16 v5, 0x74

    aput-object v4, v3, v5

    const-string/jumbo v4, "askoy"

    const/16 v5, 0x75

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--asky-ira"

    const/16 v5, 0x76

    aput-object v4, v3, v5

    const-string/jumbo v4, "asnes"

    const/16 v5, 0x77

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--snes-poa"

    const/16 v5, 0x78

    aput-object v4, v3, v5

    const-string/jumbo v4, "audnedaln"

    const/16 v5, 0x79

    aput-object v4, v3, v5

    const-string/jumbo v4, "aukra"

    const/16 v5, 0x7a

    aput-object v4, v3, v5

    const-string/jumbo v4, "aure"

    const/16 v5, 0x7b

    aput-object v4, v3, v5

    const-string/jumbo v4, "aurland"

    const/16 v5, 0x7c

    aput-object v4, v3, v5

    const-string/jumbo v4, "aurskog-holand"

    const/16 v5, 0x7d

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--aurskog-hland-jnb"

    const/16 v5, 0x7e

    aput-object v4, v3, v5

    const-string/jumbo v4, "austevoll"

    const/16 v5, 0x7f

    aput-object v4, v3, v5

    const-string/jumbo v4, "austrheim"

    const/16 v5, 0x80

    aput-object v4, v3, v5

    const-string/jumbo v4, "averoy"

    const/16 v5, 0x81

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--avery-yua"

    const/16 v5, 0x82

    aput-object v4, v3, v5

    const-string/jumbo v4, "balestrand"

    const/16 v5, 0x83

    aput-object v4, v3, v5

    const-string/jumbo v4, "ballangen"

    const/16 v5, 0x84

    aput-object v4, v3, v5

    const-string/jumbo v4, "balat"

    const/16 v5, 0x85

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--blt-elab"

    const/16 v5, 0x86

    aput-object v4, v3, v5

    const-string/jumbo v4, "balsfjord"

    const/16 v5, 0x87

    aput-object v4, v3, v5

    const-string/jumbo v4, "bahccavuotna"

    const/16 v5, 0x88

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--bhccavuotna-k7a"

    const/16 v5, 0x89

    aput-object v4, v3, v5

    const-string/jumbo v4, "bamble"

    const/16 v5, 0x8a

    aput-object v4, v3, v5

    const-string/jumbo v4, "bardu"

    const/16 v5, 0x8b

    aput-object v4, v3, v5

    const-string/jumbo v4, "beardu"

    const/16 v5, 0x8c

    aput-object v4, v3, v5

    const-string/jumbo v4, "beiarn"

    const/16 v5, 0x8d

    aput-object v4, v3, v5

    const-string/jumbo v4, "bajddar"

    const/16 v5, 0x8e

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--bjddar-pta"

    const/16 v5, 0x8f

    aput-object v4, v3, v5

    const-string/jumbo v4, "baidar"

    const/16 v5, 0x90

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--bidr-5nac"

    const/16 v5, 0x91

    aput-object v4, v3, v5

    const-string/jumbo v4, "berg"

    const/16 v5, 0x92

    aput-object v4, v3, v5

    const-string/jumbo v4, "bergen"

    const/16 v5, 0x93

    aput-object v4, v3, v5

    const-string/jumbo v4, "berlevag"

    const/16 v5, 0x94

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--berlevg-jxa"

    const/16 v5, 0x95

    aput-object v4, v3, v5

    const-string/jumbo v4, "bearalvahki"

    const/16 v5, 0x96

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--bearalvhki-y4a"

    const/16 v5, 0x97

    aput-object v4, v3, v5

    const-string/jumbo v4, "bindal"

    const/16 v5, 0x98

    aput-object v4, v3, v5

    const-string/jumbo v4, "birkenes"

    const/16 v5, 0x99

    aput-object v4, v3, v5

    const-string/jumbo v4, "bjarkoy"

    const/16 v5, 0x9a

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--bjarky-fya"

    const/16 v5, 0x9b

    aput-object v4, v3, v5

    const-string/jumbo v4, "bjerkreim"

    const/16 v5, 0x9c

    aput-object v4, v3, v5

    const-string/jumbo v4, "bjugn"

    const/16 v5, 0x9d

    aput-object v4, v3, v5

    const-string/jumbo v4, "bodo"

    const/16 v5, 0x9e

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--bod-2na"

    const/16 v5, 0x9f

    aput-object v4, v3, v5

    const-string/jumbo v4, "badaddja"

    const/16 v5, 0xa0

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--bdddj-mrabd"

    const/16 v5, 0xa1

    aput-object v4, v3, v5

    const-string/jumbo v4, "budejju"

    const/16 v5, 0xa2

    aput-object v4, v3, v5

    const-string/jumbo v4, "bokn"

    const/16 v5, 0xa3

    aput-object v4, v3, v5

    const-string/jumbo v4, "bremanger"

    const/16 v5, 0xa4

    aput-object v4, v3, v5

    const-string/jumbo v4, "bronnoy"

    const/16 v5, 0xa5

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--brnny-wuac"

    const/16 v5, 0xa6

    aput-object v4, v3, v5

    const-string/jumbo v4, "bygland"

    const/16 v5, 0xa7

    aput-object v4, v3, v5

    const-string/jumbo v4, "bykle"

    const/16 v5, 0xa8

    aput-object v4, v3, v5

    const-string/jumbo v4, "barum"

    const/16 v5, 0xa9

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--brum-voa"

    const/16 v5, 0xaa

    aput-object v4, v3, v5

    const-string/jumbo v4, "bievat"

    const/16 v5, 0xab

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--bievt-0qa"

    const/16 v5, 0xac

    aput-object v4, v3, v5

    const-string/jumbo v4, "bomlo"

    const/16 v5, 0xad

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--bmlo-gra"

    const/16 v5, 0xae

    aput-object v4, v3, v5

    const-string/jumbo v4, "batsfjord"

    const/16 v5, 0xaf

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--btsfjord-9za"

    const/16 v5, 0xb0

    aput-object v4, v3, v5

    const-string/jumbo v4, "bahcavuotna"

    const/16 v5, 0xb1

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--bhcavuotna-s4a"

    const/16 v5, 0xb2

    aput-object v4, v3, v5

    const-string/jumbo v4, "dovre"

    const/16 v5, 0xb3

    aput-object v4, v3, v5

    const-string/jumbo v4, "drammen"

    const/16 v5, 0xb4

    aput-object v4, v3, v5

    const-string/jumbo v4, "drangedal"

    const/16 v5, 0xb5

    aput-object v4, v3, v5

    const-string/jumbo v4, "dyroy"

    const/16 v5, 0xb6

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--dyry-ira"

    const/16 v5, 0xb7

    aput-object v4, v3, v5

    const-string/jumbo v4, "donna"

    const/16 v5, 0xb8

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--dnna-gra"

    const/16 v5, 0xb9

    aput-object v4, v3, v5

    const-string/jumbo v4, "eid"

    const/16 v5, 0xba

    aput-object v4, v3, v5

    const-string/jumbo v4, "eidfjord"

    const/16 v5, 0xbb

    aput-object v4, v3, v5

    const-string/jumbo v4, "eidsberg"

    const/16 v5, 0xbc

    aput-object v4, v3, v5

    const-string/jumbo v4, "eidskog"

    const/16 v5, 0xbd

    aput-object v4, v3, v5

    const-string/jumbo v4, "eidsvoll"

    const/16 v5, 0xbe

    aput-object v4, v3, v5

    const-string/jumbo v4, "eigersund"

    const/16 v5, 0xbf

    aput-object v4, v3, v5

    const-string/jumbo v4, "elverum"

    const/16 v5, 0xc0

    aput-object v4, v3, v5

    const-string/jumbo v4, "enebakk"

    const/16 v5, 0xc1

    aput-object v4, v3, v5

    const-string/jumbo v4, "engerdal"

    const/16 v5, 0xc2

    aput-object v4, v3, v5

    const-string/jumbo v4, "etne"

    const/16 v5, 0xc3

    aput-object v4, v3, v5

    const-string/jumbo v4, "etnedal"

    const/16 v5, 0xc4

    aput-object v4, v3, v5

    const-string/jumbo v4, "evenes"

    const/16 v5, 0xc5

    aput-object v4, v3, v5

    const-string/jumbo v4, "evenassi"

    const/16 v5, 0xc6

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--eveni-0qa01ga"

    const/16 v5, 0xc7

    aput-object v4, v3, v5

    const-string/jumbo v4, "evje-og-hornnes"

    const/16 v5, 0xc8

    aput-object v4, v3, v5

    const-string/jumbo v4, "farsund"

    const/16 v5, 0xc9

    aput-object v4, v3, v5

    const-string/jumbo v4, "fauske"

    const/16 v5, 0xca

    aput-object v4, v3, v5

    const-string/jumbo v4, "fuossko"

    const/16 v5, 0xcb

    aput-object v4, v3, v5

    const-string/jumbo v4, "fuoisku"

    const/16 v5, 0xcc

    aput-object v4, v3, v5

    const-string/jumbo v4, "fedje"

    const/16 v5, 0xcd

    aput-object v4, v3, v5

    const-string/jumbo v4, "fet"

    const/16 v5, 0xce

    aput-object v4, v3, v5

    const-string/jumbo v4, "finnoy"

    const/16 v5, 0xcf

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--finny-yua"

    const/16 v5, 0xd0

    aput-object v4, v3, v5

    const-string/jumbo v4, "fitjar"

    const/16 v5, 0xd1

    aput-object v4, v3, v5

    const-string/jumbo v4, "fjaler"

    const/16 v5, 0xd2

    aput-object v4, v3, v5

    const-string/jumbo v4, "fjell"

    const/16 v5, 0xd3

    aput-object v4, v3, v5

    const-string/jumbo v4, "flakstad"

    const/16 v5, 0xd4

    aput-object v4, v3, v5

    const-string/jumbo v4, "flatanger"

    const/16 v5, 0xd5

    aput-object v4, v3, v5

    const-string/jumbo v4, "flekkefjord"

    const/16 v5, 0xd6

    aput-object v4, v3, v5

    const-string/jumbo v4, "flesberg"

    const/16 v5, 0xd7

    aput-object v4, v3, v5

    const-string/jumbo v4, "flora"

    const/16 v5, 0xd8

    aput-object v4, v3, v5

    const-string/jumbo v4, "fla"

    const/16 v5, 0xd9

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--fl-zia"

    const/16 v5, 0xda

    aput-object v4, v3, v5

    const-string/jumbo v4, "folldal"

    const/16 v5, 0xdb

    aput-object v4, v3, v5

    const-string/jumbo v4, "forsand"

    const/16 v5, 0xdc

    aput-object v4, v3, v5

    const-string/jumbo v4, "fosnes"

    const/16 v5, 0xdd

    aput-object v4, v3, v5

    const-string/jumbo v4, "frei"

    const/16 v5, 0xde

    aput-object v4, v3, v5

    const-string/jumbo v4, "frogn"

    const/16 v5, 0xdf

    aput-object v4, v3, v5

    const-string/jumbo v4, "froland"

    const/16 v5, 0xe0

    aput-object v4, v3, v5

    const-string/jumbo v4, "frosta"

    const/16 v5, 0xe1

    aput-object v4, v3, v5

    const-string/jumbo v4, "frana"

    const/16 v5, 0xe2

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--frna-woa"

    const/16 v5, 0xe3

    aput-object v4, v3, v5

    const-string/jumbo v4, "froya"

    const/16 v5, 0xe4

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--frya-hra"

    const/16 v5, 0xe5

    aput-object v4, v3, v5

    const-string/jumbo v4, "fusa"

    const/16 v5, 0xe6

    aput-object v4, v3, v5

    const-string/jumbo v4, "fyresdal"

    const/16 v5, 0xe7

    aput-object v4, v3, v5

    const-string/jumbo v4, "forde"

    const/16 v5, 0xe8

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--frde-gra"

    const/16 v5, 0xe9

    aput-object v4, v3, v5

    const-string/jumbo v4, "gamvik"

    const/16 v5, 0xea

    aput-object v4, v3, v5

    const-string/jumbo v4, "gangaviika"

    const/16 v5, 0xeb

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--ggaviika-8ya47h"

    const/16 v5, 0xec

    aput-object v4, v3, v5

    const-string/jumbo v4, "gaular"

    const/16 v5, 0xed

    aput-object v4, v3, v5

    const-string/jumbo v4, "gausdal"

    const/16 v5, 0xee

    aput-object v4, v3, v5

    const-string/jumbo v4, "gildeskal"

    const/16 v5, 0xef

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--gildeskl-g0a"

    const/16 v5, 0xf0

    aput-object v4, v3, v5

    const-string/jumbo v4, "giske"

    const/16 v5, 0xf1

    aput-object v4, v3, v5

    const-string/jumbo v4, "gjemnes"

    const/16 v5, 0xf2

    aput-object v4, v3, v5

    const-string/jumbo v4, "gjerdrum"

    const/16 v5, 0xf3

    aput-object v4, v3, v5

    const-string/jumbo v4, "gjerstad"

    const/16 v5, 0xf4

    aput-object v4, v3, v5

    const-string/jumbo v4, "gjesdal"

    const/16 v5, 0xf5

    aput-object v4, v3, v5

    const-string/jumbo v4, "gjovik"

    const/16 v5, 0xf6

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--gjvik-wua"

    const/16 v5, 0xf7

    aput-object v4, v3, v5

    const-string/jumbo v4, "gloppen"

    const/16 v5, 0xf8

    aput-object v4, v3, v5

    const-string/jumbo v4, "gol"

    const/16 v5, 0xf9

    aput-object v4, v3, v5

    const-string/jumbo v4, "gran"

    const/16 v5, 0xfa

    aput-object v4, v3, v5

    const-string/jumbo v4, "grane"

    const/16 v5, 0xfb

    aput-object v4, v3, v5

    const-string/jumbo v4, "granvin"

    const/16 v5, 0xfc

    aput-object v4, v3, v5

    const-string/jumbo v4, "gratangen"

    const/16 v5, 0xfd

    aput-object v4, v3, v5

    const-string/jumbo v4, "grimstad"

    const/16 v5, 0xfe

    aput-object v4, v3, v5

    const-string/jumbo v4, "grong"

    const/16 v5, 0xff

    aput-object v4, v3, v5

    const-string/jumbo v4, "kraanghke"

    const/16 v5, 0x100

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--kranghke-b0a"

    const/16 v5, 0x101

    aput-object v4, v3, v5

    const-string/jumbo v4, "grue"

    const/16 v5, 0x102

    aput-object v4, v3, v5

    const-string/jumbo v4, "gulen"

    const/16 v5, 0x103

    aput-object v4, v3, v5

    const-string/jumbo v4, "hadsel"

    const/16 v5, 0x104

    aput-object v4, v3, v5

    const-string/jumbo v4, "halden"

    const/16 v5, 0x105

    aput-object v4, v3, v5

    const-string/jumbo v4, "halsa"

    const/16 v5, 0x106

    aput-object v4, v3, v5

    const-string/jumbo v4, "hamar"

    const/16 v5, 0x107

    aput-object v4, v3, v5

    const-string/jumbo v4, "hamaroy"

    const/16 v5, 0x108

    aput-object v4, v3, v5

    const-string/jumbo v4, "habmer"

    const/16 v5, 0x109

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--hbmer-xqa"

    const/16 v5, 0x10a

    aput-object v4, v3, v5

    const-string/jumbo v4, "hapmir"

    const/16 v5, 0x10b

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--hpmir-xqa"

    const/16 v5, 0x10c

    aput-object v4, v3, v5

    const-string/jumbo v4, "hammerfest"

    const/16 v5, 0x10d

    aput-object v4, v3, v5

    const-string/jumbo v4, "hammarfeasta"

    const/16 v5, 0x10e

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--hmmrfeasta-s4ac"

    const/16 v5, 0x10f

    aput-object v4, v3, v5

    const-string/jumbo v4, "haram"

    const/16 v5, 0x110

    aput-object v4, v3, v5

    const-string/jumbo v4, "hareid"

    const/16 v5, 0x111

    aput-object v4, v3, v5

    const-string/jumbo v4, "harstad"

    const/16 v5, 0x112

    aput-object v4, v3, v5

    const-string/jumbo v4, "hasvik"

    const/16 v5, 0x113

    aput-object v4, v3, v5

    const-string/jumbo v4, "aknoluokta"

    const/16 v5, 0x114

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--koluokta-7ya57h"

    const/16 v5, 0x115

    aput-object v4, v3, v5

    const-string/jumbo v4, "hattfjelldal"

    const/16 v5, 0x116

    aput-object v4, v3, v5

    const-string/jumbo v4, "aarborte"

    const/16 v5, 0x117

    aput-object v4, v3, v5

    const-string/jumbo v4, "haugesund"

    const/16 v5, 0x118

    aput-object v4, v3, v5

    const-string/jumbo v4, "hemne"

    const/16 v5, 0x119

    aput-object v4, v3, v5

    const-string/jumbo v4, "hemnes"

    const/16 v5, 0x11a

    aput-object v4, v3, v5

    const-string/jumbo v4, "hemsedal"

    const/16 v5, 0x11b

    aput-object v4, v3, v5

    const-string/jumbo v4, "hitra"

    const/16 v5, 0x11c

    aput-object v4, v3, v5

    const-string/jumbo v4, "hjartdal"

    const/16 v5, 0x11d

    aput-object v4, v3, v5

    const-string/jumbo v4, "hjelmeland"

    const/16 v5, 0x11e

    aput-object v4, v3, v5

    const-string/jumbo v4, "hobol"

    const/16 v5, 0x11f

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--hobl-ira"

    const/16 v5, 0x120

    aput-object v4, v3, v5

    const-string/jumbo v4, "hof"

    const/16 v5, 0x121

    aput-object v4, v3, v5

    const-string/jumbo v4, "hol"

    const/16 v5, 0x122

    aput-object v4, v3, v5

    const-string/jumbo v4, "hole"

    const/16 v5, 0x123

    aput-object v4, v3, v5

    const-string/jumbo v4, "holmestrand"

    const/16 v5, 0x124

    aput-object v4, v3, v5

    const-string/jumbo v4, "holtalen"

    const/16 v5, 0x125

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--holtlen-hxa"

    const/16 v5, 0x126

    aput-object v4, v3, v5

    const-string/jumbo v4, "hornindal"

    const/16 v5, 0x127

    aput-object v4, v3, v5

    const-string/jumbo v4, "horten"

    const/16 v5, 0x128

    aput-object v4, v3, v5

    const-string/jumbo v4, "hurdal"

    const/16 v5, 0x129

    aput-object v4, v3, v5

    const-string/jumbo v4, "hurum"

    const/16 v5, 0x12a

    aput-object v4, v3, v5

    const-string/jumbo v4, "hvaler"

    const/16 v5, 0x12b

    aput-object v4, v3, v5

    const-string/jumbo v4, "hyllestad"

    const/16 v5, 0x12c

    aput-object v4, v3, v5

    const-string/jumbo v4, "hagebostad"

    const/16 v5, 0x12d

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--hgebostad-g3a"

    const/16 v5, 0x12e

    aput-object v4, v3, v5

    const-string/jumbo v4, "hoyanger"

    const/16 v5, 0x12f

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--hyanger-q1a"

    const/16 v5, 0x130

    aput-object v4, v3, v5

    const-string/jumbo v4, "hoylandet"

    const/16 v5, 0x131

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--hylandet-54a"

    const/16 v5, 0x132

    aput-object v4, v3, v5

    const-string/jumbo v4, "ha"

    const/16 v5, 0x133

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--h-2fa"

    const/16 v5, 0x134

    aput-object v4, v3, v5

    const-string/jumbo v4, "ibestad"

    const/16 v5, 0x135

    aput-object v4, v3, v5

    const-string/jumbo v4, "inderoy"

    const/16 v5, 0x136

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--indery-fya"

    const/16 v5, 0x137

    aput-object v4, v3, v5

    const-string/jumbo v4, "iveland"

    const/16 v5, 0x138

    aput-object v4, v3, v5

    const-string/jumbo v4, "jevnaker"

    const/16 v5, 0x139

    aput-object v4, v3, v5

    const-string/jumbo v4, "jondal"

    const/16 v5, 0x13a

    aput-object v4, v3, v5

    const-string/jumbo v4, "jolster"

    const/16 v5, 0x13b

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--jlster-bya"

    const/16 v5, 0x13c

    aput-object v4, v3, v5

    const-string/jumbo v4, "karasjok"

    const/16 v5, 0x13d

    aput-object v4, v3, v5

    const-string/jumbo v4, "karasjohka"

    const/16 v5, 0x13e

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--krjohka-hwab49j"

    const/16 v5, 0x13f

    aput-object v4, v3, v5

    const-string/jumbo v4, "karlsoy"

    const/16 v5, 0x140

    aput-object v4, v3, v5

    const-string/jumbo v4, "galsa"

    const/16 v5, 0x141

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--gls-elac"

    const/16 v5, 0x142

    aput-object v4, v3, v5

    const-string/jumbo v4, "karmoy"

    const/16 v5, 0x143

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--karmy-yua"

    const/16 v5, 0x144

    aput-object v4, v3, v5

    const-string/jumbo v4, "kautokeino"

    const/16 v5, 0x145

    aput-object v4, v3, v5

    const-string/jumbo v4, "guovdageaidnu"

    const/16 v5, 0x146

    aput-object v4, v3, v5

    const-string/jumbo v4, "klepp"

    const/16 v5, 0x147

    aput-object v4, v3, v5

    const-string/jumbo v4, "klabu"

    const/16 v5, 0x148

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--klbu-woa"

    const/16 v5, 0x149

    aput-object v4, v3, v5

    const-string/jumbo v4, "kongsberg"

    const/16 v5, 0x14a

    aput-object v4, v3, v5

    const-string/jumbo v4, "kongsvinger"

    const/16 v5, 0x14b

    aput-object v4, v3, v5

    const-string/jumbo v4, "kragero"

    const/16 v5, 0x14c

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--krager-gya"

    const/16 v5, 0x14d

    aput-object v4, v3, v5

    const-string/jumbo v4, "kristiansand"

    const/16 v5, 0x14e

    aput-object v4, v3, v5

    const-string/jumbo v4, "kristiansund"

    const/16 v5, 0x14f

    aput-object v4, v3, v5

    const-string/jumbo v4, "krodsherad"

    const/16 v5, 0x150

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--krdsherad-m8a"

    const/16 v5, 0x151

    aput-object v4, v3, v5

    const-string/jumbo v4, "kvalsund"

    const/16 v5, 0x152

    aput-object v4, v3, v5

    const-string/jumbo v4, "rahkkeravju"

    const/16 v5, 0x153

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--rhkkervju-01af"

    const/16 v5, 0x154

    aput-object v4, v3, v5

    const-string/jumbo v4, "kvam"

    const/16 v5, 0x155

    aput-object v4, v3, v5

    const-string/jumbo v4, "kvinesdal"

    const/16 v5, 0x156

    aput-object v4, v3, v5

    const-string/jumbo v4, "kvinnherad"

    const/16 v5, 0x157

    aput-object v4, v3, v5

    const-string/jumbo v4, "kviteseid"

    const/16 v5, 0x158

    aput-object v4, v3, v5

    const-string/jumbo v4, "kvitsoy"

    const/16 v5, 0x159

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--kvitsy-fya"

    const/16 v5, 0x15a

    aput-object v4, v3, v5

    const-string/jumbo v4, "kvafjord"

    const/16 v5, 0x15b

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--kvfjord-nxa"

    const/16 v5, 0x15c

    aput-object v4, v3, v5

    const-string/jumbo v4, "giehtavuoatna"

    const/16 v5, 0x15d

    aput-object v4, v3, v5

    const-string/jumbo v4, "kvanangen"

    const/16 v5, 0x15e

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--kvnangen-k0a"

    const/16 v5, 0x15f

    aput-object v4, v3, v5

    const-string/jumbo v4, "navuotna"

    const/16 v5, 0x160

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--nvuotna-hwa"

    const/16 v5, 0x161

    aput-object v4, v3, v5

    const-string/jumbo v4, "kafjord"

    const/16 v5, 0x162

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--kfjord-iua"

    const/16 v5, 0x163

    aput-object v4, v3, v5

    const-string/jumbo v4, "gaivuotna"

    const/16 v5, 0x164

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--givuotna-8ya"

    const/16 v5, 0x165

    aput-object v4, v3, v5

    const-string/jumbo v4, "larvik"

    const/16 v5, 0x166

    aput-object v4, v3, v5

    const-string/jumbo v4, "lavangen"

    const/16 v5, 0x167

    aput-object v4, v3, v5

    const-string/jumbo v4, "lavagis"

    const/16 v5, 0x168

    aput-object v4, v3, v5

    const-string/jumbo v4, "loabat"

    const/16 v5, 0x169

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--loabt-0qa"

    const/16 v5, 0x16a

    aput-object v4, v3, v5

    const-string/jumbo v4, "lebesby"

    const/16 v5, 0x16b

    aput-object v4, v3, v5

    const-string/jumbo v4, "davvesiida"

    const/16 v5, 0x16c

    aput-object v4, v3, v5

    const-string/jumbo v4, "leikanger"

    const/16 v5, 0x16d

    aput-object v4, v3, v5

    const-string/jumbo v4, "leirfjord"

    const/16 v5, 0x16e

    aput-object v4, v3, v5

    const-string/jumbo v4, "leka"

    const/16 v5, 0x16f

    aput-object v4, v3, v5

    const-string/jumbo v4, "leksvik"

    const/16 v5, 0x170

    aput-object v4, v3, v5

    const-string/jumbo v4, "lenvik"

    const/16 v5, 0x171

    aput-object v4, v3, v5

    const-string/jumbo v4, "leangaviika"

    const/16 v5, 0x172

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--leagaviika-52b"

    const/16 v5, 0x173

    aput-object v4, v3, v5

    const-string/jumbo v4, "lesja"

    const/16 v5, 0x174

    aput-object v4, v3, v5

    const-string/jumbo v4, "levanger"

    const/16 v5, 0x175

    aput-object v4, v3, v5

    const-string/jumbo v4, "lier"

    const/16 v5, 0x176

    aput-object v4, v3, v5

    const-string/jumbo v4, "lierne"

    const/16 v5, 0x177

    aput-object v4, v3, v5

    const-string/jumbo v4, "lillehammer"

    const/16 v5, 0x178

    aput-object v4, v3, v5

    const-string/jumbo v4, "lillesand"

    const/16 v5, 0x179

    aput-object v4, v3, v5

    const-string/jumbo v4, "lindesnes"

    const/16 v5, 0x17a

    aput-object v4, v3, v5

    const-string/jumbo v4, "lindas"

    const/16 v5, 0x17b

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--linds-pra"

    const/16 v5, 0x17c

    aput-object v4, v3, v5

    const-string/jumbo v4, "lom"

    const/16 v5, 0x17d

    aput-object v4, v3, v5

    const-string/jumbo v4, "loppa"

    const/16 v5, 0x17e

    aput-object v4, v3, v5

    const-string/jumbo v4, "lahppi"

    const/16 v5, 0x17f

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--lhppi-xqa"

    const/16 v5, 0x180

    aput-object v4, v3, v5

    const-string/jumbo v4, "lund"

    const/16 v5, 0x181

    aput-object v4, v3, v5

    const-string/jumbo v4, "lunner"

    const/16 v5, 0x182

    aput-object v4, v3, v5

    const-string/jumbo v4, "luroy"

    const/16 v5, 0x183

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--lury-ira"

    const/16 v5, 0x184

    aput-object v4, v3, v5

    const-string/jumbo v4, "luster"

    const/16 v5, 0x185

    aput-object v4, v3, v5

    const-string/jumbo v4, "lyngdal"

    const/16 v5, 0x186

    aput-object v4, v3, v5

    const-string/jumbo v4, "lyngen"

    const/16 v5, 0x187

    aput-object v4, v3, v5

    const-string/jumbo v4, "ivgu"

    const/16 v5, 0x188

    aput-object v4, v3, v5

    const-string/jumbo v4, "lardal"

    const/16 v5, 0x189

    aput-object v4, v3, v5

    const-string/jumbo v4, "lerdal"

    const/16 v5, 0x18a

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--lrdal-sra"

    const/16 v5, 0x18b

    aput-object v4, v3, v5

    const-string/jumbo v4, "lodingen"

    const/16 v5, 0x18c

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--ldingen-q1a"

    const/16 v5, 0x18d

    aput-object v4, v3, v5

    const-string/jumbo v4, "lorenskog"

    const/16 v5, 0x18e

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--lrenskog-54a"

    const/16 v5, 0x18f

    aput-object v4, v3, v5

    const-string/jumbo v4, "loten"

    const/16 v5, 0x190

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--lten-gra"

    const/16 v5, 0x191

    aput-object v4, v3, v5

    const-string/jumbo v4, "malvik"

    const/16 v5, 0x192

    aput-object v4, v3, v5

    const-string/jumbo v4, "masoy"

    const/16 v5, 0x193

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--msy-ula0h"

    const/16 v5, 0x194

    aput-object v4, v3, v5

    const-string/jumbo v4, "muosat"

    const/16 v5, 0x195

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--muost-0qa"

    const/16 v5, 0x196

    aput-object v4, v3, v5

    const-string/jumbo v4, "mandal"

    const/16 v5, 0x197

    aput-object v4, v3, v5

    const-string/jumbo v4, "marker"

    const/16 v5, 0x198

    aput-object v4, v3, v5

    const-string/jumbo v4, "marnardal"

    const/16 v5, 0x199

    aput-object v4, v3, v5

    const-string/jumbo v4, "masfjorden"

    const/16 v5, 0x19a

    aput-object v4, v3, v5

    const-string/jumbo v4, "meland"

    const/16 v5, 0x19b

    aput-object v4, v3, v5

    const-string/jumbo v4, "meldal"

    const/16 v5, 0x19c

    aput-object v4, v3, v5

    const-string/jumbo v4, "melhus"

    const/16 v5, 0x19d

    aput-object v4, v3, v5

    const-string/jumbo v4, "meloy"

    const/16 v5, 0x19e

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--mely-ira"

    const/16 v5, 0x19f

    aput-object v4, v3, v5

    const-string/jumbo v4, "meraker"

    const/16 v5, 0x1a0

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--merker-kua"

    const/16 v5, 0x1a1

    aput-object v4, v3, v5

    const-string/jumbo v4, "moareke"

    const/16 v5, 0x1a2

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--moreke-jua"

    const/16 v5, 0x1a3

    aput-object v4, v3, v5

    const-string/jumbo v4, "midsund"

    const/16 v5, 0x1a4

    aput-object v4, v3, v5

    const-string/jumbo v4, "midtre-gauldal"

    const/16 v5, 0x1a5

    aput-object v4, v3, v5

    const-string/jumbo v4, "modalen"

    const/16 v5, 0x1a6

    aput-object v4, v3, v5

    const-string/jumbo v4, "modum"

    const/16 v5, 0x1a7

    aput-object v4, v3, v5

    const-string/jumbo v4, "molde"

    const/16 v5, 0x1a8

    aput-object v4, v3, v5

    const-string/jumbo v4, "moskenes"

    const/16 v5, 0x1a9

    aput-object v4, v3, v5

    const-string/jumbo v4, "moss"

    const/16 v5, 0x1aa

    aput-object v4, v3, v5

    const-string/jumbo v4, "mosvik"

    const/16 v5, 0x1ab

    aput-object v4, v3, v5

    const-string/jumbo v4, "malselv"

    const/16 v5, 0x1ac

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--mlselv-iua"

    const/16 v5, 0x1ad

    aput-object v4, v3, v5

    const-string/jumbo v4, "malatvuopmi"

    const/16 v5, 0x1ae

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--mlatvuopmi-s4a"

    const/16 v5, 0x1af

    aput-object v4, v3, v5

    const-string/jumbo v4, "namdalseid"

    const/16 v5, 0x1b0

    aput-object v4, v3, v5

    const-string/jumbo v4, "aejrie"

    const/16 v5, 0x1b1

    aput-object v4, v3, v5

    const-string/jumbo v4, "namsos"

    const/16 v5, 0x1b2

    aput-object v4, v3, v5

    const-string/jumbo v4, "namsskogan"

    const/16 v5, 0x1b3

    aput-object v4, v3, v5

    const-string/jumbo v4, "naamesjevuemie"

    const/16 v5, 0x1b4

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--nmesjevuemie-tcba"

    const/16 v5, 0x1b5

    aput-object v4, v3, v5

    const-string/jumbo v4, "laakesvuemie"

    const/16 v5, 0x1b6

    aput-object v4, v3, v5

    const-string/jumbo v4, "nannestad"

    const/16 v5, 0x1b7

    aput-object v4, v3, v5

    const-string/jumbo v4, "narvik"

    const/16 v5, 0x1b8

    aput-object v4, v3, v5

    const-string/jumbo v4, "narviika"

    const/16 v5, 0x1b9

    aput-object v4, v3, v5

    const-string/jumbo v4, "naustdal"

    const/16 v5, 0x1ba

    aput-object v4, v3, v5

    const-string/jumbo v4, "nedre-eiker"

    const/16 v5, 0x1bb

    aput-object v4, v3, v5

    const-string/jumbo v4, "nesna"

    const/16 v5, 0x1bc

    aput-object v4, v3, v5

    const-string/jumbo v4, "nesodden"

    const/16 v5, 0x1bd

    aput-object v4, v3, v5

    const-string/jumbo v4, "nesseby"

    const/16 v5, 0x1be

    aput-object v4, v3, v5

    const-string/jumbo v4, "unjarga"

    const/16 v5, 0x1bf

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--unjrga-rta"

    const/16 v5, 0x1c0

    aput-object v4, v3, v5

    const-string/jumbo v4, "nesset"

    const/16 v5, 0x1c1

    aput-object v4, v3, v5

    const-string/jumbo v4, "nissedal"

    const/16 v5, 0x1c2

    aput-object v4, v3, v5

    const-string/jumbo v4, "nittedal"

    const/16 v5, 0x1c3

    aput-object v4, v3, v5

    const-string/jumbo v4, "nord-aurdal"

    const/16 v5, 0x1c4

    aput-object v4, v3, v5

    const-string/jumbo v4, "nord-fron"

    const/16 v5, 0x1c5

    aput-object v4, v3, v5

    const-string/jumbo v4, "nord-odal"

    const/16 v5, 0x1c6

    aput-object v4, v3, v5

    const-string/jumbo v4, "norddal"

    const/16 v5, 0x1c7

    aput-object v4, v3, v5

    const-string/jumbo v4, "nordkapp"

    const/16 v5, 0x1c8

    aput-object v4, v3, v5

    const-string/jumbo v4, "davvenjarga"

    const/16 v5, 0x1c9

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--davvenjrga-y4a"

    const/16 v5, 0x1ca

    aput-object v4, v3, v5

    const-string/jumbo v4, "nordre-land"

    const/16 v5, 0x1cb

    aput-object v4, v3, v5

    const-string/jumbo v4, "nordreisa"

    const/16 v5, 0x1cc

    aput-object v4, v3, v5

    const-string/jumbo v4, "raisa"

    const/16 v5, 0x1cd

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--risa-5na"

    const/16 v5, 0x1ce

    aput-object v4, v3, v5

    const-string/jumbo v4, "nore-og-uvdal"

    const/16 v5, 0x1cf

    aput-object v4, v3, v5

    const-string/jumbo v4, "notodden"

    const/16 v5, 0x1d0

    aput-object v4, v3, v5

    const-string/jumbo v4, "naroy"

    const/16 v5, 0x1d1

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--nry-yla5g"

    const/16 v5, 0x1d2

    aput-object v4, v3, v5

    const-string/jumbo v4, "notteroy"

    const/16 v5, 0x1d3

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--nttery-byae"

    const/16 v5, 0x1d4

    aput-object v4, v3, v5

    const-string/jumbo v4, "odda"

    const/16 v5, 0x1d5

    aput-object v4, v3, v5

    const-string/jumbo v4, "oksnes"

    const/16 v5, 0x1d6

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--ksnes-uua"

    const/16 v5, 0x1d7

    aput-object v4, v3, v5

    const-string/jumbo v4, "oppdal"

    const/16 v5, 0x1d8

    aput-object v4, v3, v5

    const-string/jumbo v4, "oppegard"

    const/16 v5, 0x1d9

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--oppegrd-ixa"

    const/16 v5, 0x1da

    aput-object v4, v3, v5

    const-string/jumbo v4, "orkdal"

    const/16 v5, 0x1db

    aput-object v4, v3, v5

    const-string/jumbo v4, "orland"

    const/16 v5, 0x1dc

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--rland-uua"

    const/16 v5, 0x1dd

    aput-object v4, v3, v5

    const-string/jumbo v4, "orskog"

    const/16 v5, 0x1de

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--rskog-uua"

    const/16 v5, 0x1df

    aput-object v4, v3, v5

    const-string/jumbo v4, "orsta"

    const/16 v5, 0x1e0

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--rsta-fra"

    const/16 v5, 0x1e1

    aput-object v4, v3, v5

    const-string/jumbo v4, "os.hedmark"

    const/16 v5, 0x1e2

    aput-object v4, v3, v5

    const-string/jumbo v4, "os.hordaland"

    const/16 v5, 0x1e3

    aput-object v4, v3, v5

    const-string/jumbo v4, "osen"

    const/16 v5, 0x1e4

    aput-object v4, v3, v5

    const-string/jumbo v4, "osteroy"

    const/16 v5, 0x1e5

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--ostery-fya"

    const/16 v5, 0x1e6

    aput-object v4, v3, v5

    const-string/jumbo v4, "ostre-toten"

    const/16 v5, 0x1e7

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--stre-toten-zcb"

    const/16 v5, 0x1e8

    aput-object v4, v3, v5

    const-string/jumbo v4, "overhalla"

    const/16 v5, 0x1e9

    aput-object v4, v3, v5

    const-string/jumbo v4, "ovre-eiker"

    const/16 v5, 0x1ea

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--vre-eiker-k8a"

    const/16 v5, 0x1eb

    aput-object v4, v3, v5

    const-string/jumbo v4, "oyer"

    const/16 v5, 0x1ec

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--yer-zna"

    const/16 v5, 0x1ed

    aput-object v4, v3, v5

    const-string/jumbo v4, "oygarden"

    const/16 v5, 0x1ee

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--ygarden-p1a"

    const/16 v5, 0x1ef

    aput-object v4, v3, v5

    const-string/jumbo v4, "oystre-slidre"

    const/16 v5, 0x1f0

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--ystre-slidre-ujb"

    const/16 v5, 0x1f1

    aput-object v4, v3, v5

    const-string/jumbo v4, "porsanger"

    const/16 v5, 0x1f2

    aput-object v4, v3, v5

    const-string/jumbo v4, "porsangu"

    const/16 v5, 0x1f3

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--porsgu-sta26f"

    const/16 v5, 0x1f4

    aput-object v4, v3, v5

    const-string/jumbo v4, "porsgrunn"

    const/16 v5, 0x1f5

    aput-object v4, v3, v5

    const-string/jumbo v4, "radoy"

    const/16 v5, 0x1f6

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--rady-ira"

    const/16 v5, 0x1f7

    aput-object v4, v3, v5

    const-string/jumbo v4, "rakkestad"

    const/16 v5, 0x1f8

    aput-object v4, v3, v5

    const-string/jumbo v4, "rana"

    const/16 v5, 0x1f9

    aput-object v4, v3, v5

    const-string/jumbo v4, "ruovat"

    const/16 v5, 0x1fa

    aput-object v4, v3, v5

    const-string/jumbo v4, "randaberg"

    const/16 v5, 0x1fb

    aput-object v4, v3, v5

    const-string/jumbo v4, "rauma"

    const/16 v5, 0x1fc

    aput-object v4, v3, v5

    const-string/jumbo v4, "rendalen"

    const/16 v5, 0x1fd

    aput-object v4, v3, v5

    const-string/jumbo v4, "rennebu"

    const/16 v5, 0x1fe

    aput-object v4, v3, v5

    const-string/jumbo v4, "rennesoy"

    const/16 v5, 0x1ff

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--rennesy-v1a"

    const/16 v5, 0x200

    aput-object v4, v3, v5

    const-string/jumbo v4, "rindal"

    const/16 v5, 0x201

    aput-object v4, v3, v5

    const-string/jumbo v4, "ringebu"

    const/16 v5, 0x202

    aput-object v4, v3, v5

    const-string/jumbo v4, "ringerike"

    const/16 v5, 0x203

    aput-object v4, v3, v5

    const-string/jumbo v4, "ringsaker"

    const/16 v5, 0x204

    aput-object v4, v3, v5

    const-string/jumbo v4, "rissa"

    const/16 v5, 0x205

    aput-object v4, v3, v5

    const-string/jumbo v4, "risor"

    const/16 v5, 0x206

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--risr-ira"

    const/16 v5, 0x207

    aput-object v4, v3, v5

    const-string/jumbo v4, "roan"

    const/16 v5, 0x208

    aput-object v4, v3, v5

    const-string/jumbo v4, "rollag"

    const/16 v5, 0x209

    aput-object v4, v3, v5

    const-string/jumbo v4, "rygge"

    const/16 v5, 0x20a

    aput-object v4, v3, v5

    const-string/jumbo v4, "ralingen"

    const/16 v5, 0x20b

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--rlingen-mxa"

    const/16 v5, 0x20c

    aput-object v4, v3, v5

    const-string/jumbo v4, "rodoy"

    const/16 v5, 0x20d

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--rdy-0nab"

    const/16 v5, 0x20e

    aput-object v4, v3, v5

    const-string/jumbo v4, "romskog"

    const/16 v5, 0x20f

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--rmskog-bya"

    const/16 v5, 0x210

    aput-object v4, v3, v5

    const-string/jumbo v4, "roros"

    const/16 v5, 0x211

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--rros-gra"

    const/16 v5, 0x212

    aput-object v4, v3, v5

    const-string/jumbo v4, "rost"

    const/16 v5, 0x213

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--rst-0na"

    const/16 v5, 0x214

    aput-object v4, v3, v5

    const-string/jumbo v4, "royken"

    const/16 v5, 0x215

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--ryken-vua"

    const/16 v5, 0x216

    aput-object v4, v3, v5

    const-string/jumbo v4, "royrvik"

    const/16 v5, 0x217

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--ryrvik-bya"

    const/16 v5, 0x218

    aput-object v4, v3, v5

    const-string/jumbo v4, "rade"

    const/16 v5, 0x219

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--rde-ula"

    const/16 v5, 0x21a

    aput-object v4, v3, v5

    const-string/jumbo v4, "salangen"

    const/16 v5, 0x21b

    aput-object v4, v3, v5

    const-string/jumbo v4, "siellak"

    const/16 v5, 0x21c

    aput-object v4, v3, v5

    const-string/jumbo v4, "saltdal"

    const/16 v5, 0x21d

    aput-object v4, v3, v5

    const-string/jumbo v4, "salat"

    const/16 v5, 0x21e

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--slt-elab"

    const/16 v5, 0x21f

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--slat-5na"

    const/16 v5, 0x220

    aput-object v4, v3, v5

    const-string/jumbo v4, "samnanger"

    const/16 v5, 0x221

    aput-object v4, v3, v5

    const-string/jumbo v4, "sandefjord"

    const/16 v5, 0x222

    aput-object v4, v3, v5

    const-string/jumbo v4, "sandnes"

    const/16 v5, 0x223

    aput-object v4, v3, v5

    const-string/jumbo v4, "sandoy"

    const/16 v5, 0x224

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--sandy-yua"

    const/16 v5, 0x225

    aput-object v4, v3, v5

    const-string/jumbo v4, "sarpsborg"

    const/16 v5, 0x226

    aput-object v4, v3, v5

    const-string/jumbo v4, "sauda"

    const/16 v5, 0x227

    aput-object v4, v3, v5

    const-string/jumbo v4, "sauherad"

    const/16 v5, 0x228

    aput-object v4, v3, v5

    const-string/jumbo v4, "sel"

    const/16 v5, 0x229

    aput-object v4, v3, v5

    const-string/jumbo v4, "selbu"

    const/16 v5, 0x22a

    aput-object v4, v3, v5

    const-string/jumbo v4, "selje"

    const/16 v5, 0x22b

    aput-object v4, v3, v5

    const-string/jumbo v4, "seljord"

    const/16 v5, 0x22c

    aput-object v4, v3, v5

    const-string/jumbo v4, "sigdal"

    const/16 v5, 0x22d

    aput-object v4, v3, v5

    const-string/jumbo v4, "siljan"

    const/16 v5, 0x22e

    aput-object v4, v3, v5

    const-string/jumbo v4, "sirdal"

    const/16 v5, 0x22f

    aput-object v4, v3, v5

    const-string/jumbo v4, "skaun"

    const/16 v5, 0x230

    aput-object v4, v3, v5

    const-string/jumbo v4, "skedsmo"

    const/16 v5, 0x231

    aput-object v4, v3, v5

    const-string/jumbo v4, "ski"

    const/16 v5, 0x232

    aput-object v4, v3, v5

    const-string/jumbo v4, "skien"

    const/16 v5, 0x233

    aput-object v4, v3, v5

    const-string/jumbo v4, "skiptvet"

    const/16 v5, 0x234

    aput-object v4, v3, v5

    const-string/jumbo v4, "skjervoy"

    const/16 v5, 0x235

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--skjervy-v1a"

    const/16 v5, 0x236

    aput-object v4, v3, v5

    const-string/jumbo v4, "skierva"

    const/16 v5, 0x237

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--skierv-uta"

    const/16 v5, 0x238

    aput-object v4, v3, v5

    const-string/jumbo v4, "skjak"

    const/16 v5, 0x239

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--skjk-soa"

    const/16 v5, 0x23a

    aput-object v4, v3, v5

    const-string/jumbo v4, "skodje"

    const/16 v5, 0x23b

    aput-object v4, v3, v5

    const-string/jumbo v4, "skanland"

    const/16 v5, 0x23c

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--sknland-fxa"

    const/16 v5, 0x23d

    aput-object v4, v3, v5

    const-string/jumbo v4, "skanit"

    const/16 v5, 0x23e

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--sknit-yqa"

    const/16 v5, 0x23f

    aput-object v4, v3, v5

    const-string/jumbo v4, "smola"

    const/16 v5, 0x240

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--smla-hra"

    const/16 v5, 0x241

    aput-object v4, v3, v5

    const-string/jumbo v4, "snillfjord"

    const/16 v5, 0x242

    aput-object v4, v3, v5

    const-string/jumbo v4, "snasa"

    const/16 v5, 0x243

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--snsa-roa"

    const/16 v5, 0x244

    aput-object v4, v3, v5

    const-string/jumbo v4, "snoasa"

    const/16 v5, 0x245

    aput-object v4, v3, v5

    const-string/jumbo v4, "snaase"

    const/16 v5, 0x246

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--snase-nra"

    const/16 v5, 0x247

    aput-object v4, v3, v5

    const-string/jumbo v4, "sogndal"

    const/16 v5, 0x248

    aput-object v4, v3, v5

    const-string/jumbo v4, "sokndal"

    const/16 v5, 0x249

    aput-object v4, v3, v5

    const-string/jumbo v4, "sola"

    const/16 v5, 0x24a

    aput-object v4, v3, v5

    const-string/jumbo v4, "solund"

    const/16 v5, 0x24b

    aput-object v4, v3, v5

    const-string/jumbo v4, "songdalen"

    const/16 v5, 0x24c

    aput-object v4, v3, v5

    const-string/jumbo v4, "sortland"

    const/16 v5, 0x24d

    aput-object v4, v3, v5

    const-string/jumbo v4, "spydeberg"

    const/16 v5, 0x24e

    aput-object v4, v3, v5

    const-string/jumbo v4, "stange"

    const/16 v5, 0x24f

    aput-object v4, v3, v5

    const-string/jumbo v4, "stavanger"

    const/16 v5, 0x250

    aput-object v4, v3, v5

    const-string/jumbo v4, "steigen"

    const/16 v5, 0x251

    aput-object v4, v3, v5

    const-string/jumbo v4, "steinkjer"

    const/16 v5, 0x252

    aput-object v4, v3, v5

    const-string/jumbo v4, "stjordal"

    const/16 v5, 0x253

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--stjrdal-s1a"

    const/16 v5, 0x254

    aput-object v4, v3, v5

    const-string/jumbo v4, "stokke"

    const/16 v5, 0x255

    aput-object v4, v3, v5

    const-string/jumbo v4, "stor-elvdal"

    const/16 v5, 0x256

    aput-object v4, v3, v5

    const-string/jumbo v4, "stord"

    const/16 v5, 0x257

    aput-object v4, v3, v5

    const-string/jumbo v4, "stordal"

    const/16 v5, 0x258

    aput-object v4, v3, v5

    const-string/jumbo v4, "storfjord"

    const/16 v5, 0x259

    aput-object v4, v3, v5

    const-string/jumbo v4, "omasvuotna"

    const/16 v5, 0x25a

    aput-object v4, v3, v5

    const-string/jumbo v4, "strand"

    const/16 v5, 0x25b

    aput-object v4, v3, v5

    const-string/jumbo v4, "stranda"

    const/16 v5, 0x25c

    aput-object v4, v3, v5

    const-string/jumbo v4, "stryn"

    const/16 v5, 0x25d

    aput-object v4, v3, v5

    const-string/jumbo v4, "sula"

    const/16 v5, 0x25e

    aput-object v4, v3, v5

    const-string/jumbo v4, "suldal"

    const/16 v5, 0x25f

    aput-object v4, v3, v5

    const-string/jumbo v4, "sund"

    const/16 v5, 0x260

    aput-object v4, v3, v5

    const-string/jumbo v4, "sunndal"

    const/16 v5, 0x261

    aput-object v4, v3, v5

    const-string/jumbo v4, "surnadal"

    const/16 v5, 0x262

    aput-object v4, v3, v5

    const-string/jumbo v4, "sveio"

    const/16 v5, 0x263

    aput-object v4, v3, v5

    const-string/jumbo v4, "svelvik"

    const/16 v5, 0x264

    aput-object v4, v3, v5

    const-string/jumbo v4, "sykkylven"

    const/16 v5, 0x265

    aput-object v4, v3, v5

    const-string/jumbo v4, "sogne"

    const/16 v5, 0x266

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--sgne-gra"

    const/16 v5, 0x267

    aput-object v4, v3, v5

    const-string/jumbo v4, "somna"

    const/16 v5, 0x268

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--smna-gra"

    const/16 v5, 0x269

    aput-object v4, v3, v5

    const-string/jumbo v4, "sondre-land"

    const/16 v5, 0x26a

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--sndre-land-0cb"

    const/16 v5, 0x26b

    aput-object v4, v3, v5

    const-string/jumbo v4, "sor-aurdal"

    const/16 v5, 0x26c

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--sr-aurdal-l8a"

    const/16 v5, 0x26d

    aput-object v4, v3, v5

    const-string/jumbo v4, "sor-fron"

    const/16 v5, 0x26e

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--sr-fron-q1a"

    const/16 v5, 0x26f

    aput-object v4, v3, v5

    const-string/jumbo v4, "sor-odal"

    const/16 v5, 0x270

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--sr-odal-q1a"

    const/16 v5, 0x271

    aput-object v4, v3, v5

    const-string/jumbo v4, "sor-varanger"

    const/16 v5, 0x272

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--sr-varanger-ggb"

    const/16 v5, 0x273

    aput-object v4, v3, v5

    const-string/jumbo v4, "matta-varjjat"

    const/16 v5, 0x274

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--mtta-vrjjat-k7af"

    const/16 v5, 0x275

    aput-object v4, v3, v5

    const-string/jumbo v4, "sorfold"

    const/16 v5, 0x276

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--srfold-bya"

    const/16 v5, 0x277

    aput-object v4, v3, v5

    const-string/jumbo v4, "sorreisa"

    const/16 v5, 0x278

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--srreisa-q1a"

    const/16 v5, 0x279

    aput-object v4, v3, v5

    const-string/jumbo v4, "sorum"

    const/16 v5, 0x27a

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--srum-gra"

    const/16 v5, 0x27b

    aput-object v4, v3, v5

    const-string/jumbo v4, "tana"

    const/16 v5, 0x27c

    aput-object v4, v3, v5

    const-string/jumbo v4, "deatnu"

    const/16 v5, 0x27d

    aput-object v4, v3, v5

    const-string/jumbo v4, "time"

    const/16 v5, 0x27e

    aput-object v4, v3, v5

    const-string/jumbo v4, "tingvoll"

    const/16 v5, 0x27f

    aput-object v4, v3, v5

    const-string/jumbo v4, "tinn"

    const/16 v5, 0x280

    aput-object v4, v3, v5

    const-string/jumbo v4, "tjeldsund"

    const/16 v5, 0x281

    aput-object v4, v3, v5

    const-string/jumbo v4, "dielddanuorri"

    const/16 v5, 0x282

    aput-object v4, v3, v5

    const-string/jumbo v4, "tjome"

    const/16 v5, 0x283

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--tjme-hra"

    const/16 v5, 0x284

    aput-object v4, v3, v5

    const-string/jumbo v4, "tokke"

    const/16 v5, 0x285

    aput-object v4, v3, v5

    const-string/jumbo v4, "tolga"

    const/16 v5, 0x286

    aput-object v4, v3, v5

    const-string/jumbo v4, "torsken"

    const/16 v5, 0x287

    aput-object v4, v3, v5

    const-string/jumbo v4, "tranoy"

    const/16 v5, 0x288

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--trany-yua"

    const/16 v5, 0x289

    aput-object v4, v3, v5

    const-string/jumbo v4, "tromso"

    const/16 v5, 0x28a

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--troms-zua"

    const/16 v5, 0x28b

    aput-object v4, v3, v5

    const-string/jumbo v4, "tromsa"

    const/16 v5, 0x28c

    aput-object v4, v3, v5

    const-string/jumbo v4, "romsa"

    const/16 v5, 0x28d

    aput-object v4, v3, v5

    const-string/jumbo v4, "trondheim"

    const/16 v5, 0x28e

    aput-object v4, v3, v5

    const-string/jumbo v4, "troandin"

    const/16 v5, 0x28f

    aput-object v4, v3, v5

    const-string/jumbo v4, "trysil"

    const/16 v5, 0x290

    aput-object v4, v3, v5

    const-string/jumbo v4, "trana"

    const/16 v5, 0x291

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--trna-woa"

    const/16 v5, 0x292

    aput-object v4, v3, v5

    const-string/jumbo v4, "trogstad"

    const/16 v5, 0x293

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--trgstad-r1a"

    const/16 v5, 0x294

    aput-object v4, v3, v5

    const-string/jumbo v4, "tvedestrand"

    const/16 v5, 0x295

    aput-object v4, v3, v5

    const-string/jumbo v4, "tydal"

    const/16 v5, 0x296

    aput-object v4, v3, v5

    const-string/jumbo v4, "tynset"

    const/16 v5, 0x297

    aput-object v4, v3, v5

    const-string/jumbo v4, "tysfjord"

    const/16 v5, 0x298

    aput-object v4, v3, v5

    const-string/jumbo v4, "divtasvuodna"

    const/16 v5, 0x299

    aput-object v4, v3, v5

    const-string/jumbo v4, "divttasvuotna"

    const/16 v5, 0x29a

    aput-object v4, v3, v5

    const-string/jumbo v4, "tysnes"

    const/16 v5, 0x29b

    aput-object v4, v3, v5

    const-string/jumbo v4, "tysvar"

    const/16 v5, 0x29c

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--tysvr-vra"

    const/16 v5, 0x29d

    aput-object v4, v3, v5

    const-string/jumbo v4, "tonsberg"

    const/16 v5, 0x29e

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--tnsberg-q1a"

    const/16 v5, 0x29f

    aput-object v4, v3, v5

    const-string/jumbo v4, "ullensaker"

    const/16 v5, 0x2a0

    aput-object v4, v3, v5

    const-string/jumbo v4, "ullensvang"

    const/16 v5, 0x2a1

    aput-object v4, v3, v5

    const-string/jumbo v4, "ulvik"

    const/16 v5, 0x2a2

    aput-object v4, v3, v5

    const-string/jumbo v4, "utsira"

    const/16 v5, 0x2a3

    aput-object v4, v3, v5

    const-string/jumbo v4, "vadso"

    const/16 v5, 0x2a4

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--vads-jra"

    const/16 v5, 0x2a5

    aput-object v4, v3, v5

    const-string/jumbo v4, "cahcesuolo"

    const/16 v5, 0x2a6

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--hcesuolo-7ya35b"

    const/16 v5, 0x2a7

    aput-object v4, v3, v5

    const-string/jumbo v4, "vaksdal"

    const/16 v5, 0x2a8

    aput-object v4, v3, v5

    const-string/jumbo v4, "valle"

    const/16 v5, 0x2a9

    aput-object v4, v3, v5

    const-string/jumbo v4, "vang"

    const/16 v5, 0x2aa

    aput-object v4, v3, v5

    const-string/jumbo v4, "vanylven"

    const/16 v5, 0x2ab

    aput-object v4, v3, v5

    const-string/jumbo v4, "vardo"

    const/16 v5, 0x2ac

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--vard-jra"

    const/16 v5, 0x2ad

    aput-object v4, v3, v5

    const-string/jumbo v4, "varggat"

    const/16 v5, 0x2ae

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--vrggt-xqad"

    const/16 v5, 0x2af

    aput-object v4, v3, v5

    const-string/jumbo v4, "vefsn"

    const/16 v5, 0x2b0

    aput-object v4, v3, v5

    const-string/jumbo v4, "vaapste"

    const/16 v5, 0x2b1

    aput-object v4, v3, v5

    const-string/jumbo v4, "vega"

    const/16 v5, 0x2b2

    aput-object v4, v3, v5

    const-string/jumbo v4, "vegarshei"

    const/16 v5, 0x2b3

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--vegrshei-c0a"

    const/16 v5, 0x2b4

    aput-object v4, v3, v5

    const-string/jumbo v4, "vennesla"

    const/16 v5, 0x2b5

    aput-object v4, v3, v5

    const-string/jumbo v4, "verdal"

    const/16 v5, 0x2b6

    aput-object v4, v3, v5

    const-string/jumbo v4, "verran"

    const/16 v5, 0x2b7

    aput-object v4, v3, v5

    const-string/jumbo v4, "vestby"

    const/16 v5, 0x2b8

    aput-object v4, v3, v5

    const-string/jumbo v4, "vestnes"

    const/16 v5, 0x2b9

    aput-object v4, v3, v5

    const-string/jumbo v4, "vestre-slidre"

    const/16 v5, 0x2ba

    aput-object v4, v3, v5

    const-string/jumbo v4, "vestre-toten"

    const/16 v5, 0x2bb

    aput-object v4, v3, v5

    const-string/jumbo v4, "vestvagoy"

    const/16 v5, 0x2bc

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--vestvgy-ixa6o"

    const/16 v5, 0x2bd

    aput-object v4, v3, v5

    const-string/jumbo v4, "vevelstad"

    const/16 v5, 0x2be

    aput-object v4, v3, v5

    const-string/jumbo v4, "vik"

    const/16 v5, 0x2bf

    aput-object v4, v3, v5

    const-string/jumbo v4, "vikna"

    const/16 v5, 0x2c0

    aput-object v4, v3, v5

    const-string/jumbo v4, "vindafjord"

    const/16 v5, 0x2c1

    aput-object v4, v3, v5

    const-string/jumbo v4, "volda"

    const/16 v5, 0x2c2

    aput-object v4, v3, v5

    const-string/jumbo v4, "voss"

    const/16 v5, 0x2c3

    aput-object v4, v3, v5

    const-string/jumbo v4, "varoy"

    const/16 v5, 0x2c4

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--vry-yla5g"

    const/16 v5, 0x2c5

    aput-object v4, v3, v5

    const-string/jumbo v4, "vagan"

    const/16 v5, 0x2c6

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--vgan-qoa"

    const/16 v5, 0x2c7

    aput-object v4, v3, v5

    const-string/jumbo v4, "voagat"

    const/16 v5, 0x2c8

    aput-object v4, v3, v5

    const-string/jumbo v4, "vagsoy"

    const/16 v5, 0x2c9

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--vgsy-qoa0j"

    const/16 v5, 0x2ca

    aput-object v4, v3, v5

    const-string/jumbo v4, "vaga"

    const/16 v5, 0x2cb

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--vg-yiab"

    const/16 v5, 0x2cc

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "nr"

    new-instance v2, Ljava/util/HashSet;

    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "biz"

    aput-object v4, v3, v6

    const-string/jumbo v4, "info"

    aput-object v4, v3, v7

    const-string/jumbo v4, "gov"

    aput-object v4, v3, v8

    const-string/jumbo v4, "edu"

    aput-object v4, v3, v9

    const-string/jumbo v4, "org"

    aput-object v4, v3, v10

    const-string/jumbo v4, "net"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    const-string/jumbo v4, "com"

    const/4 v5, 0x6

    aput-object v4, v3, v5

    const-string/jumbo v4, "co"

    const/4 v5, 0x7

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "pa"

    new-instance v2, Ljava/util/HashSet;

    const/16 v3, 0xb

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "ac"

    aput-object v4, v3, v6

    const-string/jumbo v4, "gob"

    aput-object v4, v3, v7

    const-string/jumbo v4, "com"

    aput-object v4, v3, v8

    const-string/jumbo v4, "org"

    aput-object v4, v3, v9

    const-string/jumbo v4, "sld"

    aput-object v4, v3, v10

    const-string/jumbo v4, "edu"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    const-string/jumbo v4, "net"

    const/4 v5, 0x6

    aput-object v4, v3, v5

    const-string/jumbo v4, "ing"

    const/4 v5, 0x7

    aput-object v4, v3, v5

    const-string/jumbo v4, "abo"

    const/16 v5, 0x8

    aput-object v4, v3, v5

    const-string/jumbo v4, "med"

    const/16 v5, 0x9

    aput-object v4, v3, v5

    const-string/jumbo v4, "nom"

    const/16 v5, 0xa

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "pe"

    new-instance v2, Ljava/util/HashSet;

    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "edu"

    aput-object v4, v3, v6

    const-string/jumbo v4, "gob"

    aput-object v4, v3, v7

    const-string/jumbo v4, "nom"

    aput-object v4, v3, v8

    const-string/jumbo v4, "mil"

    aput-object v4, v3, v9

    const-string/jumbo v4, "org"

    aput-object v4, v3, v10

    const-string/jumbo v4, "com"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    const-string/jumbo v4, "net"

    const/4 v5, 0x6

    aput-object v4, v3, v5

    const-string/jumbo v4, "sld"

    const/4 v5, 0x7

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "pf"

    new-instance v2, Ljava/util/HashSet;

    new-array v3, v7, [Ljava/lang/String;

    const-string/jumbo v4, "com"

    aput-object v4, v3, v6

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "ph"

    new-instance v2, Ljava/util/HashSet;

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "com"

    aput-object v4, v3, v6

    const-string/jumbo v4, "net"

    aput-object v4, v3, v7

    const-string/jumbo v4, "org"

    aput-object v4, v3, v8

    const-string/jumbo v4, "gov"

    aput-object v4, v3, v9

    const-string/jumbo v4, "edu"

    aput-object v4, v3, v10

    const-string/jumbo v4, "ngo"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    const-string/jumbo v4, "mil"

    const/4 v5, 0x6

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "pk"

    new-instance v2, Ljava/util/HashSet;

    const/16 v3, 0x10

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "com"

    aput-object v4, v3, v6

    const-string/jumbo v4, "net"

    aput-object v4, v3, v7

    const-string/jumbo v4, "edu"

    aput-object v4, v3, v8

    const-string/jumbo v4, "org"

    aput-object v4, v3, v9

    const-string/jumbo v4, "fam"

    aput-object v4, v3, v10

    const-string/jumbo v4, "biz"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    const-string/jumbo v4, "web"

    const/4 v5, 0x6

    aput-object v4, v3, v5

    const-string/jumbo v4, "gov"

    const/4 v5, 0x7

    aput-object v4, v3, v5

    const-string/jumbo v4, "gob"

    const/16 v5, 0x8

    aput-object v4, v3, v5

    const-string/jumbo v4, "gok"

    const/16 v5, 0x9

    aput-object v4, v3, v5

    const-string/jumbo v4, "gon"

    const/16 v5, 0xa

    aput-object v4, v3, v5

    const-string/jumbo v4, "gop"

    const/16 v5, 0xb

    aput-object v4, v3, v5

    const-string/jumbo v4, "gos"

    const/16 v5, 0xc

    aput-object v4, v3, v5

    const-string/jumbo v4, "gog"

    const/16 v5, 0xd

    aput-object v4, v3, v5

    const-string/jumbo v4, "gkp"

    const/16 v5, 0xe

    aput-object v4, v3, v5

    const-string/jumbo v4, "info"

    const/16 v5, 0xf

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "pl"

    new-instance v2, Ljava/util/HashSet;

    const/16 v3, 0xa5

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "aid"

    aput-object v4, v3, v6

    const-string/jumbo v4, "agro"

    aput-object v4, v3, v7

    const-string/jumbo v4, "atm"

    aput-object v4, v3, v8

    const-string/jumbo v4, "auto"

    aput-object v4, v3, v9

    const-string/jumbo v4, "biz"

    aput-object v4, v3, v10

    const-string/jumbo v4, "com"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    const-string/jumbo v4, "edu"

    const/4 v5, 0x6

    aput-object v4, v3, v5

    const-string/jumbo v4, "gmina"

    const/4 v5, 0x7

    aput-object v4, v3, v5

    const-string/jumbo v4, "gsm"

    const/16 v5, 0x8

    aput-object v4, v3, v5

    const-string/jumbo v4, "info"

    const/16 v5, 0x9

    aput-object v4, v3, v5

    const-string/jumbo v4, "mail"

    const/16 v5, 0xa

    aput-object v4, v3, v5

    const-string/jumbo v4, "miasta"

    const/16 v5, 0xb

    aput-object v4, v3, v5

    const-string/jumbo v4, "media"

    const/16 v5, 0xc

    aput-object v4, v3, v5

    const-string/jumbo v4, "mil"

    const/16 v5, 0xd

    aput-object v4, v3, v5

    const-string/jumbo v4, "net"

    const/16 v5, 0xe

    aput-object v4, v3, v5

    const-string/jumbo v4, "nieruchomosci"

    const/16 v5, 0xf

    aput-object v4, v3, v5

    const-string/jumbo v4, "nom"

    const/16 v5, 0x10

    aput-object v4, v3, v5

    const-string/jumbo v4, "org"

    const/16 v5, 0x11

    aput-object v4, v3, v5

    const-string/jumbo v4, "pc"

    const/16 v5, 0x12

    aput-object v4, v3, v5

    const-string/jumbo v4, "powiat"

    const/16 v5, 0x13

    aput-object v4, v3, v5

    const-string/jumbo v4, "priv"

    const/16 v5, 0x14

    aput-object v4, v3, v5

    const-string/jumbo v4, "realestate"

    const/16 v5, 0x15

    aput-object v4, v3, v5

    const-string/jumbo v4, "rel"

    const/16 v5, 0x16

    aput-object v4, v3, v5

    const-string/jumbo v4, "sex"

    const/16 v5, 0x17

    aput-object v4, v3, v5

    const-string/jumbo v4, "shop"

    const/16 v5, 0x18

    aput-object v4, v3, v5

    const-string/jumbo v4, "sklep"

    const/16 v5, 0x19

    aput-object v4, v3, v5

    const-string/jumbo v4, "sos"

    const/16 v5, 0x1a

    aput-object v4, v3, v5

    const-string/jumbo v4, "szkola"

    const/16 v5, 0x1b

    aput-object v4, v3, v5

    const-string/jumbo v4, "targi"

    const/16 v5, 0x1c

    aput-object v4, v3, v5

    const-string/jumbo v4, "tm"

    const/16 v5, 0x1d

    aput-object v4, v3, v5

    const-string/jumbo v4, "tourism"

    const/16 v5, 0x1e

    aput-object v4, v3, v5

    const-string/jumbo v4, "travel"

    const/16 v5, 0x1f

    aput-object v4, v3, v5

    const-string/jumbo v4, "turystyka"

    const/16 v5, 0x20

    aput-object v4, v3, v5

    const-string/jumbo v4, "art"

    const/16 v5, 0x21

    aput-object v4, v3, v5

    const-string/jumbo v4, "gov"

    const/16 v5, 0x22

    aput-object v4, v3, v5

    const-string/jumbo v4, "ngo"

    const/16 v5, 0x23

    aput-object v4, v3, v5

    const-string/jumbo v4, "augustow"

    const/16 v5, 0x24

    aput-object v4, v3, v5

    const-string/jumbo v4, "babia-gora"

    const/16 v5, 0x25

    aput-object v4, v3, v5

    const-string/jumbo v4, "bedzin"

    const/16 v5, 0x26

    aput-object v4, v3, v5

    const-string/jumbo v4, "beskidy"

    const/16 v5, 0x27

    aput-object v4, v3, v5

    const-string/jumbo v4, "bialowieza"

    const/16 v5, 0x28

    aput-object v4, v3, v5

    const-string/jumbo v4, "bialystok"

    const/16 v5, 0x29

    aput-object v4, v3, v5

    const-string/jumbo v4, "bielawa"

    const/16 v5, 0x2a

    aput-object v4, v3, v5

    const-string/jumbo v4, "bieszczady"

    const/16 v5, 0x2b

    aput-object v4, v3, v5

    const-string/jumbo v4, "boleslawiec"

    const/16 v5, 0x2c

    aput-object v4, v3, v5

    const-string/jumbo v4, "bydgoszcz"

    const/16 v5, 0x2d

    aput-object v4, v3, v5

    const-string/jumbo v4, "bytom"

    const/16 v5, 0x2e

    aput-object v4, v3, v5

    const-string/jumbo v4, "cieszyn"

    const/16 v5, 0x2f

    aput-object v4, v3, v5

    const-string/jumbo v4, "czeladz"

    const/16 v5, 0x30

    aput-object v4, v3, v5

    const-string/jumbo v4, "czest"

    const/16 v5, 0x31

    aput-object v4, v3, v5

    const-string/jumbo v4, "dlugoleka"

    const/16 v5, 0x32

    aput-object v4, v3, v5

    const-string/jumbo v4, "elblag"

    const/16 v5, 0x33

    aput-object v4, v3, v5

    const-string/jumbo v4, "elk"

    const/16 v5, 0x34

    aput-object v4, v3, v5

    const-string/jumbo v4, "glogow"

    const/16 v5, 0x35

    aput-object v4, v3, v5

    const-string/jumbo v4, "gniezno"

    const/16 v5, 0x36

    aput-object v4, v3, v5

    const-string/jumbo v4, "gorlice"

    const/16 v5, 0x37

    aput-object v4, v3, v5

    const-string/jumbo v4, "grajewo"

    const/16 v5, 0x38

    aput-object v4, v3, v5

    const-string/jumbo v4, "ilawa"

    const/16 v5, 0x39

    aput-object v4, v3, v5

    const-string/jumbo v4, "jaworzno"

    const/16 v5, 0x3a

    aput-object v4, v3, v5

    const-string/jumbo v4, "jelenia-gora"

    const/16 v5, 0x3b

    aput-object v4, v3, v5

    const-string/jumbo v4, "jgora"

    const/16 v5, 0x3c

    aput-object v4, v3, v5

    const-string/jumbo v4, "kalisz"

    const/16 v5, 0x3d

    aput-object v4, v3, v5

    const-string/jumbo v4, "kazimierz-dolny"

    const/16 v5, 0x3e

    aput-object v4, v3, v5

    const-string/jumbo v4, "karpacz"

    const/16 v5, 0x3f

    aput-object v4, v3, v5

    const-string/jumbo v4, "kartuzy"

    const/16 v5, 0x40

    aput-object v4, v3, v5

    const-string/jumbo v4, "kaszuby"

    const/16 v5, 0x41

    aput-object v4, v3, v5

    const-string/jumbo v4, "katowice"

    const/16 v5, 0x42

    aput-object v4, v3, v5

    const-string/jumbo v4, "kepno"

    const/16 v5, 0x43

    aput-object v4, v3, v5

    const-string/jumbo v4, "ketrzyn"

    const/16 v5, 0x44

    aput-object v4, v3, v5

    const-string/jumbo v4, "klodzko"

    const/16 v5, 0x45

    aput-object v4, v3, v5

    const-string/jumbo v4, "kobierzyce"

    const/16 v5, 0x46

    aput-object v4, v3, v5

    const-string/jumbo v4, "kolobrzeg"

    const/16 v5, 0x47

    aput-object v4, v3, v5

    const-string/jumbo v4, "konin"

    const/16 v5, 0x48

    aput-object v4, v3, v5

    const-string/jumbo v4, "konskowola"

    const/16 v5, 0x49

    aput-object v4, v3, v5

    const-string/jumbo v4, "kutno"

    const/16 v5, 0x4a

    aput-object v4, v3, v5

    const-string/jumbo v4, "lapy"

    const/16 v5, 0x4b

    aput-object v4, v3, v5

    const-string/jumbo v4, "lebork"

    const/16 v5, 0x4c

    aput-object v4, v3, v5

    const-string/jumbo v4, "legnica"

    const/16 v5, 0x4d

    aput-object v4, v3, v5

    const-string/jumbo v4, "lezajsk"

    const/16 v5, 0x4e

    aput-object v4, v3, v5

    const-string/jumbo v4, "limanowa"

    const/16 v5, 0x4f

    aput-object v4, v3, v5

    const-string/jumbo v4, "lomza"

    const/16 v5, 0x50

    aput-object v4, v3, v5

    const-string/jumbo v4, "lowicz"

    const/16 v5, 0x51

    aput-object v4, v3, v5

    const-string/jumbo v4, "lubin"

    const/16 v5, 0x52

    aput-object v4, v3, v5

    const-string/jumbo v4, "lukow"

    const/16 v5, 0x53

    aput-object v4, v3, v5

    const-string/jumbo v4, "malbork"

    const/16 v5, 0x54

    aput-object v4, v3, v5

    const-string/jumbo v4, "malopolska"

    const/16 v5, 0x55

    aput-object v4, v3, v5

    const-string/jumbo v4, "mazowsze"

    const/16 v5, 0x56

    aput-object v4, v3, v5

    const-string/jumbo v4, "mazury"

    const/16 v5, 0x57

    aput-object v4, v3, v5

    const-string/jumbo v4, "mielec"

    const/16 v5, 0x58

    aput-object v4, v3, v5

    const-string/jumbo v4, "mielno"

    const/16 v5, 0x59

    aput-object v4, v3, v5

    const-string/jumbo v4, "mragowo"

    const/16 v5, 0x5a

    aput-object v4, v3, v5

    const-string/jumbo v4, "naklo"

    const/16 v5, 0x5b

    aput-object v4, v3, v5

    const-string/jumbo v4, "nowaruda"

    const/16 v5, 0x5c

    aput-object v4, v3, v5

    const-string/jumbo v4, "nysa"

    const/16 v5, 0x5d

    aput-object v4, v3, v5

    const-string/jumbo v4, "olawa"

    const/16 v5, 0x5e

    aput-object v4, v3, v5

    const-string/jumbo v4, "olecko"

    const/16 v5, 0x5f

    aput-object v4, v3, v5

    const-string/jumbo v4, "olkusz"

    const/16 v5, 0x60

    aput-object v4, v3, v5

    const-string/jumbo v4, "olsztyn"

    const/16 v5, 0x61

    aput-object v4, v3, v5

    const-string/jumbo v4, "opoczno"

    const/16 v5, 0x62

    aput-object v4, v3, v5

    const-string/jumbo v4, "opole"

    const/16 v5, 0x63

    aput-object v4, v3, v5

    const-string/jumbo v4, "ostroda"

    const/16 v5, 0x64

    aput-object v4, v3, v5

    const-string/jumbo v4, "ostroleka"

    const/16 v5, 0x65

    aput-object v4, v3, v5

    const-string/jumbo v4, "ostrowiec"

    const/16 v5, 0x66

    aput-object v4, v3, v5

    const-string/jumbo v4, "ostrowwlkp"

    const/16 v5, 0x67

    aput-object v4, v3, v5

    const-string/jumbo v4, "pila"

    const/16 v5, 0x68

    aput-object v4, v3, v5

    const-string/jumbo v4, "pisz"

    const/16 v5, 0x69

    aput-object v4, v3, v5

    const-string/jumbo v4, "podhale"

    const/16 v5, 0x6a

    aput-object v4, v3, v5

    const-string/jumbo v4, "podlasie"

    const/16 v5, 0x6b

    aput-object v4, v3, v5

    const-string/jumbo v4, "polkowice"

    const/16 v5, 0x6c

    aput-object v4, v3, v5

    const-string/jumbo v4, "pomorze"

    const/16 v5, 0x6d

    aput-object v4, v3, v5

    const-string/jumbo v4, "pomorskie"

    const/16 v5, 0x6e

    aput-object v4, v3, v5

    const-string/jumbo v4, "prochowice"

    const/16 v5, 0x6f

    aput-object v4, v3, v5

    const-string/jumbo v4, "pruszkow"

    const/16 v5, 0x70

    aput-object v4, v3, v5

    const-string/jumbo v4, "przeworsk"

    const/16 v5, 0x71

    aput-object v4, v3, v5

    const-string/jumbo v4, "pulawy"

    const/16 v5, 0x72

    aput-object v4, v3, v5

    const-string/jumbo v4, "radom"

    const/16 v5, 0x73

    aput-object v4, v3, v5

    const-string/jumbo v4, "rawa-maz"

    const/16 v5, 0x74

    aput-object v4, v3, v5

    const-string/jumbo v4, "rybnik"

    const/16 v5, 0x75

    aput-object v4, v3, v5

    const-string/jumbo v4, "rzeszow"

    const/16 v5, 0x76

    aput-object v4, v3, v5

    const-string/jumbo v4, "sanok"

    const/16 v5, 0x77

    aput-object v4, v3, v5

    const-string/jumbo v4, "sejny"

    const/16 v5, 0x78

    aput-object v4, v3, v5

    const-string/jumbo v4, "siedlce"

    const/16 v5, 0x79

    aput-object v4, v3, v5

    const-string/jumbo v4, "slask"

    const/16 v5, 0x7a

    aput-object v4, v3, v5

    const-string/jumbo v4, "slupsk"

    const/16 v5, 0x7b

    aput-object v4, v3, v5

    const-string/jumbo v4, "sosnowiec"

    const/16 v5, 0x7c

    aput-object v4, v3, v5

    const-string/jumbo v4, "stalowa-wola"

    const/16 v5, 0x7d

    aput-object v4, v3, v5

    const-string/jumbo v4, "skoczow"

    const/16 v5, 0x7e

    aput-object v4, v3, v5

    const-string/jumbo v4, "starachowice"

    const/16 v5, 0x7f

    aput-object v4, v3, v5

    const-string/jumbo v4, "stargard"

    const/16 v5, 0x80

    aput-object v4, v3, v5

    const-string/jumbo v4, "suwalki"

    const/16 v5, 0x81

    aput-object v4, v3, v5

    const-string/jumbo v4, "swidnica"

    const/16 v5, 0x82

    aput-object v4, v3, v5

    const-string/jumbo v4, "swiebodzin"

    const/16 v5, 0x83

    aput-object v4, v3, v5

    const-string/jumbo v4, "swinoujscie"

    const/16 v5, 0x84

    aput-object v4, v3, v5

    const-string/jumbo v4, "szczecin"

    const/16 v5, 0x85

    aput-object v4, v3, v5

    const-string/jumbo v4, "szczytno"

    const/16 v5, 0x86

    aput-object v4, v3, v5

    const-string/jumbo v4, "tarnobrzeg"

    const/16 v5, 0x87

    aput-object v4, v3, v5

    const-string/jumbo v4, "tgory"

    const/16 v5, 0x88

    aput-object v4, v3, v5

    const-string/jumbo v4, "turek"

    const/16 v5, 0x89

    aput-object v4, v3, v5

    const-string/jumbo v4, "tychy"

    const/16 v5, 0x8a

    aput-object v4, v3, v5

    const-string/jumbo v4, "ustka"

    const/16 v5, 0x8b

    aput-object v4, v3, v5

    const-string/jumbo v4, "walbrzych"

    const/16 v5, 0x8c

    aput-object v4, v3, v5

    const-string/jumbo v4, "warmia"

    const/16 v5, 0x8d

    aput-object v4, v3, v5

    const-string/jumbo v4, "warszawa"

    const/16 v5, 0x8e

    aput-object v4, v3, v5

    const-string/jumbo v4, "waw"

    const/16 v5, 0x8f

    aput-object v4, v3, v5

    const-string/jumbo v4, "wegrow"

    const/16 v5, 0x90

    aput-object v4, v3, v5

    const-string/jumbo v4, "wielun"

    const/16 v5, 0x91

    aput-object v4, v3, v5

    const-string/jumbo v4, "wlocl"

    const/16 v5, 0x92

    aput-object v4, v3, v5

    const-string/jumbo v4, "wloclawek"

    const/16 v5, 0x93

    aput-object v4, v3, v5

    const-string/jumbo v4, "wodzislaw"

    const/16 v5, 0x94

    aput-object v4, v3, v5

    const-string/jumbo v4, "wolomin"

    const/16 v5, 0x95

    aput-object v4, v3, v5

    const-string/jumbo v4, "wroclaw"

    const/16 v5, 0x96

    aput-object v4, v3, v5

    const-string/jumbo v4, "zachpomor"

    const/16 v5, 0x97

    aput-object v4, v3, v5

    const-string/jumbo v4, "zagan"

    const/16 v5, 0x98

    aput-object v4, v3, v5

    const-string/jumbo v4, "zarow"

    const/16 v5, 0x99

    aput-object v4, v3, v5

    const-string/jumbo v4, "zgora"

    const/16 v5, 0x9a

    aput-object v4, v3, v5

    const-string/jumbo v4, "zgorzelec"

    const/16 v5, 0x9b

    aput-object v4, v3, v5

    const-string/jumbo v4, "gda"

    const/16 v5, 0x9c

    aput-object v4, v3, v5

    const-string/jumbo v4, "gdansk"

    const/16 v5, 0x9d

    aput-object v4, v3, v5

    const-string/jumbo v4, "krakow"

    const/16 v5, 0x9e

    aput-object v4, v3, v5

    const-string/jumbo v4, "poznan"

    const/16 v5, 0x9f

    aput-object v4, v3, v5

    const-string/jumbo v4, "wroc"

    const/16 v5, 0xa0

    aput-object v4, v3, v5

    const-string/jumbo v4, "co"

    const/16 v5, 0xa1

    aput-object v4, v3, v5

    const-string/jumbo v4, "lodz"

    const/16 v5, 0xa2

    aput-object v4, v3, v5

    const-string/jumbo v4, "lublin"

    const/16 v5, 0xa3

    aput-object v4, v3, v5

    const-string/jumbo v4, "torun"

    const/16 v5, 0xa4

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "pn"

    new-instance v2, Ljava/util/HashSet;

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "gov"

    aput-object v4, v3, v6

    const-string/jumbo v4, "co"

    aput-object v4, v3, v7

    const-string/jumbo v4, "org"

    aput-object v4, v3, v8

    const-string/jumbo v4, "edu"

    aput-object v4, v3, v9

    const-string/jumbo v4, "net"

    aput-object v4, v3, v10

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "pr"

    new-instance v2, Ljava/util/HashSet;

    const/16 v3, 0xe

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "com"

    aput-object v4, v3, v6

    const-string/jumbo v4, "net"

    aput-object v4, v3, v7

    const-string/jumbo v4, "org"

    aput-object v4, v3, v8

    const-string/jumbo v4, "gov"

    aput-object v4, v3, v9

    const-string/jumbo v4, "edu"

    aput-object v4, v3, v10

    const-string/jumbo v4, "isla"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    const-string/jumbo v4, "pro"

    const/4 v5, 0x6

    aput-object v4, v3, v5

    const-string/jumbo v4, "biz"

    const/4 v5, 0x7

    aput-object v4, v3, v5

    const-string/jumbo v4, "info"

    const/16 v5, 0x8

    aput-object v4, v3, v5

    const-string/jumbo v4, "name"

    const/16 v5, 0x9

    aput-object v4, v3, v5

    const-string/jumbo v4, "est"

    const/16 v5, 0xa

    aput-object v4, v3, v5

    const-string/jumbo v4, "prof"

    const/16 v5, 0xb

    aput-object v4, v3, v5

    const-string/jumbo v4, "ac"

    const/16 v5, 0xc

    aput-object v4, v3, v5

    const-string/jumbo v4, "gobierno"

    const/16 v5, 0xd

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "pro"

    new-instance v2, Ljava/util/HashSet;

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "aca"

    aput-object v4, v3, v6

    const-string/jumbo v4, "bar"

    aput-object v4, v3, v7

    const-string/jumbo v4, "cpa"

    aput-object v4, v3, v8

    const-string/jumbo v4, "jur"

    aput-object v4, v3, v9

    const-string/jumbo v4, "law"

    aput-object v4, v3, v10

    const-string/jumbo v4, "med"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    const-string/jumbo v4, "eng"

    const/4 v5, 0x6

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "ps"

    new-instance v2, Ljava/util/HashSet;

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "edu"

    aput-object v4, v3, v6

    const-string/jumbo v4, "gov"

    aput-object v4, v3, v7

    const-string/jumbo v4, "sec"

    aput-object v4, v3, v8

    const-string/jumbo v4, "plo"

    aput-object v4, v3, v9

    const-string/jumbo v4, "com"

    aput-object v4, v3, v10

    const-string/jumbo v4, "org"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    const-string/jumbo v4, "net"

    const/4 v5, 0x6

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "pt"

    new-instance v2, Ljava/util/HashSet;

    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "net"

    aput-object v4, v3, v6

    const-string/jumbo v4, "gov"

    aput-object v4, v3, v7

    const-string/jumbo v4, "org"

    aput-object v4, v3, v8

    const-string/jumbo v4, "edu"

    aput-object v4, v3, v9

    const-string/jumbo v4, "int"

    aput-object v4, v3, v10

    const-string/jumbo v4, "publ"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    const-string/jumbo v4, "com"

    const/4 v5, 0x6

    aput-object v4, v3, v5

    const-string/jumbo v4, "nome"

    const/4 v5, 0x7

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "pw"

    new-instance v2, Ljava/util/HashSet;

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "co"

    aput-object v4, v3, v6

    const-string/jumbo v4, "ne"

    aput-object v4, v3, v7

    const-string/jumbo v4, "or"

    aput-object v4, v3, v8

    const-string/jumbo v4, "ed"

    aput-object v4, v3, v9

    const-string/jumbo v4, "go"

    aput-object v4, v3, v10

    const-string/jumbo v4, "belau"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "qa"

    new-instance v2, Ljava/util/HashSet;

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "com"

    aput-object v4, v3, v6

    const-string/jumbo v4, "net"

    aput-object v4, v3, v7

    const-string/jumbo v4, "org"

    aput-object v4, v3, v8

    const-string/jumbo v4, "gov"

    aput-object v4, v3, v9

    const-string/jumbo v4, "edu"

    aput-object v4, v3, v10

    const-string/jumbo v4, "mil"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "re"

    new-instance v2, Ljava/util/HashSet;

    new-array v3, v9, [Ljava/lang/String;

    const-string/jumbo v4, "com"

    aput-object v4, v3, v6

    const-string/jumbo v4, "asso"

    aput-object v4, v3, v7

    const-string/jumbo v4, "nom"

    aput-object v4, v3, v8

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "ro"

    new-instance v2, Ljava/util/HashSet;

    const/16 v3, 0xb

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "com"

    aput-object v4, v3, v6

    const-string/jumbo v4, "org"

    aput-object v4, v3, v7

    const-string/jumbo v4, "tm"

    aput-object v4, v3, v8

    const-string/jumbo v4, "nt"

    aput-object v4, v3, v9

    const-string/jumbo v4, "nom"

    aput-object v4, v3, v10

    const-string/jumbo v4, "info"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    const-string/jumbo v4, "rec"

    const/4 v5, 0x6

    aput-object v4, v3, v5

    const-string/jumbo v4, "arts"

    const/4 v5, 0x7

    aput-object v4, v3, v5

    const-string/jumbo v4, "firm"

    const/16 v5, 0x8

    aput-object v4, v3, v5

    const-string/jumbo v4, "store"

    const/16 v5, 0x9

    aput-object v4, v3, v5

    const-string/jumbo v4, "www"

    const/16 v5, 0xa

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "rs"

    new-instance v2, Ljava/util/HashSet;

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "co"

    aput-object v4, v3, v6

    const-string/jumbo v4, "org"

    aput-object v4, v3, v7

    const-string/jumbo v4, "edu"

    aput-object v4, v3, v8

    const-string/jumbo v4, "ac"

    aput-object v4, v3, v9

    const-string/jumbo v4, "gov"

    aput-object v4, v3, v10

    const-string/jumbo v4, "in"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "ru"

    new-instance v2, Ljava/util/HashSet;

    const/16 v3, 0x84

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "ac"

    aput-object v4, v3, v6

    const-string/jumbo v4, "com"

    aput-object v4, v3, v7

    const-string/jumbo v4, "edu"

    aput-object v4, v3, v8

    const-string/jumbo v4, "int"

    aput-object v4, v3, v9

    const-string/jumbo v4, "net"

    aput-object v4, v3, v10

    const-string/jumbo v4, "org"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    const-string/jumbo v4, "pp"

    const/4 v5, 0x6

    aput-object v4, v3, v5

    const-string/jumbo v4, "adygeya"

    const/4 v5, 0x7

    aput-object v4, v3, v5

    const-string/jumbo v4, "altai"

    const/16 v5, 0x8

    aput-object v4, v3, v5

    const-string/jumbo v4, "amur"

    const/16 v5, 0x9

    aput-object v4, v3, v5

    const-string/jumbo v4, "arkhangelsk"

    const/16 v5, 0xa

    aput-object v4, v3, v5

    const-string/jumbo v4, "astrakhan"

    const/16 v5, 0xb

    aput-object v4, v3, v5

    const-string/jumbo v4, "bashkiria"

    const/16 v5, 0xc

    aput-object v4, v3, v5

    const-string/jumbo v4, "belgorod"

    const/16 v5, 0xd

    aput-object v4, v3, v5

    const-string/jumbo v4, "bir"

    const/16 v5, 0xe

    aput-object v4, v3, v5

    const-string/jumbo v4, "bryansk"

    const/16 v5, 0xf

    aput-object v4, v3, v5

    const-string/jumbo v4, "buryatia"

    const/16 v5, 0x10

    aput-object v4, v3, v5

    const-string/jumbo v4, "cap"

    const/16 v5, 0x11

    aput-object v4, v3, v5

    const-string/jumbo v4, "cbg"

    const/16 v5, 0x12

    aput-object v4, v3, v5

    const-string/jumbo v4, "chel"

    const/16 v5, 0x13

    aput-object v4, v3, v5

    const-string/jumbo v4, "chelyabinsk"

    const/16 v5, 0x14

    aput-object v4, v3, v5

    const-string/jumbo v4, "chita"

    const/16 v5, 0x15

    aput-object v4, v3, v5

    const-string/jumbo v4, "chukotka"

    const/16 v5, 0x16

    aput-object v4, v3, v5

    const-string/jumbo v4, "dagestan"

    const/16 v5, 0x17

    aput-object v4, v3, v5

    const-string/jumbo v4, "e-burg"

    const/16 v5, 0x18

    aput-object v4, v3, v5

    const-string/jumbo v4, "grozny"

    const/16 v5, 0x19

    aput-object v4, v3, v5

    const-string/jumbo v4, "irkutsk"

    const/16 v5, 0x1a

    aput-object v4, v3, v5

    const-string/jumbo v4, "ivanovo"

    const/16 v5, 0x1b

    aput-object v4, v3, v5

    const-string/jumbo v4, "izhevsk"

    const/16 v5, 0x1c

    aput-object v4, v3, v5

    const-string/jumbo v4, "jar"

    const/16 v5, 0x1d

    aput-object v4, v3, v5

    const-string/jumbo v4, "joshkar-ola"

    const/16 v5, 0x1e

    aput-object v4, v3, v5

    const-string/jumbo v4, "kalmykia"

    const/16 v5, 0x1f

    aput-object v4, v3, v5

    const-string/jumbo v4, "kaluga"

    const/16 v5, 0x20

    aput-object v4, v3, v5

    const-string/jumbo v4, "kamchatka"

    const/16 v5, 0x21

    aput-object v4, v3, v5

    const-string/jumbo v4, "karelia"

    const/16 v5, 0x22

    aput-object v4, v3, v5

    const-string/jumbo v4, "kazan"

    const/16 v5, 0x23

    aput-object v4, v3, v5

    const-string/jumbo v4, "kchr"

    const/16 v5, 0x24

    aput-object v4, v3, v5

    const-string/jumbo v4, "kemerovo"

    const/16 v5, 0x25

    aput-object v4, v3, v5

    const-string/jumbo v4, "khabarovsk"

    const/16 v5, 0x26

    aput-object v4, v3, v5

    const-string/jumbo v4, "khakassia"

    const/16 v5, 0x27

    aput-object v4, v3, v5

    const-string/jumbo v4, "khv"

    const/16 v5, 0x28

    aput-object v4, v3, v5

    const-string/jumbo v4, "kirov"

    const/16 v5, 0x29

    aput-object v4, v3, v5

    const-string/jumbo v4, "koenig"

    const/16 v5, 0x2a

    aput-object v4, v3, v5

    const-string/jumbo v4, "komi"

    const/16 v5, 0x2b

    aput-object v4, v3, v5

    const-string/jumbo v4, "kostroma"

    const/16 v5, 0x2c

    aput-object v4, v3, v5

    const-string/jumbo v4, "krasnoyarsk"

    const/16 v5, 0x2d

    aput-object v4, v3, v5

    const-string/jumbo v4, "kuban"

    const/16 v5, 0x2e

    aput-object v4, v3, v5

    const-string/jumbo v4, "kurgan"

    const/16 v5, 0x2f

    aput-object v4, v3, v5

    const-string/jumbo v4, "kursk"

    const/16 v5, 0x30

    aput-object v4, v3, v5

    const-string/jumbo v4, "lipetsk"

    const/16 v5, 0x31

    aput-object v4, v3, v5

    const-string/jumbo v4, "magadan"

    const/16 v5, 0x32

    aput-object v4, v3, v5

    const-string/jumbo v4, "mari"

    const/16 v5, 0x33

    aput-object v4, v3, v5

    const-string/jumbo v4, "mari-el"

    const/16 v5, 0x34

    aput-object v4, v3, v5

    const-string/jumbo v4, "marine"

    const/16 v5, 0x35

    aput-object v4, v3, v5

    const-string/jumbo v4, "mordovia"

    const/16 v5, 0x36

    aput-object v4, v3, v5

    const-string/jumbo v4, "mosreg"

    const/16 v5, 0x37

    aput-object v4, v3, v5

    const-string/jumbo v4, "msk"

    const/16 v5, 0x38

    aput-object v4, v3, v5

    const-string/jumbo v4, "murmansk"

    const/16 v5, 0x39

    aput-object v4, v3, v5

    const-string/jumbo v4, "nalchik"

    const/16 v5, 0x3a

    aput-object v4, v3, v5

    const-string/jumbo v4, "nnov"

    const/16 v5, 0x3b

    aput-object v4, v3, v5

    const-string/jumbo v4, "nov"

    const/16 v5, 0x3c

    aput-object v4, v3, v5

    const-string/jumbo v4, "novosibirsk"

    const/16 v5, 0x3d

    aput-object v4, v3, v5

    const-string/jumbo v4, "nsk"

    const/16 v5, 0x3e

    aput-object v4, v3, v5

    const-string/jumbo v4, "omsk"

    const/16 v5, 0x3f

    aput-object v4, v3, v5

    const-string/jumbo v4, "orenburg"

    const/16 v5, 0x40

    aput-object v4, v3, v5

    const-string/jumbo v4, "oryol"

    const/16 v5, 0x41

    aput-object v4, v3, v5

    const-string/jumbo v4, "palana"

    const/16 v5, 0x42

    aput-object v4, v3, v5

    const-string/jumbo v4, "penza"

    const/16 v5, 0x43

    aput-object v4, v3, v5

    const-string/jumbo v4, "perm"

    const/16 v5, 0x44

    aput-object v4, v3, v5

    const-string/jumbo v4, "pskov"

    const/16 v5, 0x45

    aput-object v4, v3, v5

    const-string/jumbo v4, "ptz"

    const/16 v5, 0x46

    aput-object v4, v3, v5

    const-string/jumbo v4, "rnd"

    const/16 v5, 0x47

    aput-object v4, v3, v5

    const-string/jumbo v4, "ryazan"

    const/16 v5, 0x48

    aput-object v4, v3, v5

    const-string/jumbo v4, "sakhalin"

    const/16 v5, 0x49

    aput-object v4, v3, v5

    const-string/jumbo v4, "samara"

    const/16 v5, 0x4a

    aput-object v4, v3, v5

    const-string/jumbo v4, "saratov"

    const/16 v5, 0x4b

    aput-object v4, v3, v5

    const-string/jumbo v4, "simbirsk"

    const/16 v5, 0x4c

    aput-object v4, v3, v5

    const-string/jumbo v4, "smolensk"

    const/16 v5, 0x4d

    aput-object v4, v3, v5

    const-string/jumbo v4, "spb"

    const/16 v5, 0x4e

    aput-object v4, v3, v5

    const-string/jumbo v4, "stavropol"

    const/16 v5, 0x4f

    aput-object v4, v3, v5

    const-string/jumbo v4, "stv"

    const/16 v5, 0x50

    aput-object v4, v3, v5

    const-string/jumbo v4, "surgut"

    const/16 v5, 0x51

    aput-object v4, v3, v5

    const-string/jumbo v4, "tambov"

    const/16 v5, 0x52

    aput-object v4, v3, v5

    const-string/jumbo v4, "tatarstan"

    const/16 v5, 0x53

    aput-object v4, v3, v5

    const-string/jumbo v4, "tom"

    const/16 v5, 0x54

    aput-object v4, v3, v5

    const-string/jumbo v4, "tomsk"

    const/16 v5, 0x55

    aput-object v4, v3, v5

    const-string/jumbo v4, "tsaritsyn"

    const/16 v5, 0x56

    aput-object v4, v3, v5

    const-string/jumbo v4, "tsk"

    const/16 v5, 0x57

    aput-object v4, v3, v5

    const-string/jumbo v4, "tula"

    const/16 v5, 0x58

    aput-object v4, v3, v5

    const-string/jumbo v4, "tuva"

    const/16 v5, 0x59

    aput-object v4, v3, v5

    const-string/jumbo v4, "tver"

    const/16 v5, 0x5a

    aput-object v4, v3, v5

    const-string/jumbo v4, "tyumen"

    const/16 v5, 0x5b

    aput-object v4, v3, v5

    const-string/jumbo v4, "udm"

    const/16 v5, 0x5c

    aput-object v4, v3, v5

    const-string/jumbo v4, "udmurtia"

    const/16 v5, 0x5d

    aput-object v4, v3, v5

    const-string/jumbo v4, "ulan-ude"

    const/16 v5, 0x5e

    aput-object v4, v3, v5

    const-string/jumbo v4, "vladikavkaz"

    const/16 v5, 0x5f

    aput-object v4, v3, v5

    const-string/jumbo v4, "vladimir"

    const/16 v5, 0x60

    aput-object v4, v3, v5

    const-string/jumbo v4, "vladivostok"

    const/16 v5, 0x61

    aput-object v4, v3, v5

    const-string/jumbo v4, "volgograd"

    const/16 v5, 0x62

    aput-object v4, v3, v5

    const-string/jumbo v4, "vologda"

    const/16 v5, 0x63

    aput-object v4, v3, v5

    const-string/jumbo v4, "voronezh"

    const/16 v5, 0x64

    aput-object v4, v3, v5

    const-string/jumbo v4, "vrn"

    const/16 v5, 0x65

    aput-object v4, v3, v5

    const-string/jumbo v4, "vyatka"

    const/16 v5, 0x66

    aput-object v4, v3, v5

    const-string/jumbo v4, "yakutia"

    const/16 v5, 0x67

    aput-object v4, v3, v5

    const-string/jumbo v4, "yamal"

    const/16 v5, 0x68

    aput-object v4, v3, v5

    const-string/jumbo v4, "yaroslavl"

    const/16 v5, 0x69

    aput-object v4, v3, v5

    const-string/jumbo v4, "yekaterinburg"

    const/16 v5, 0x6a

    aput-object v4, v3, v5

    const-string/jumbo v4, "yuzhno-sakhalinsk"

    const/16 v5, 0x6b

    aput-object v4, v3, v5

    const-string/jumbo v4, "amursk"

    const/16 v5, 0x6c

    aput-object v4, v3, v5

    const-string/jumbo v4, "baikal"

    const/16 v5, 0x6d

    aput-object v4, v3, v5

    const-string/jumbo v4, "cmw"

    const/16 v5, 0x6e

    aput-object v4, v3, v5

    const-string/jumbo v4, "fareast"

    const/16 v5, 0x6f

    aput-object v4, v3, v5

    const-string/jumbo v4, "jamal"

    const/16 v5, 0x70

    aput-object v4, v3, v5

    const-string/jumbo v4, "kms"

    const/16 v5, 0x71

    aput-object v4, v3, v5

    const-string/jumbo v4, "k-uralsk"

    const/16 v5, 0x72

    aput-object v4, v3, v5

    const-string/jumbo v4, "kustanai"

    const/16 v5, 0x73

    aput-object v4, v3, v5

    const-string/jumbo v4, "kuzbass"

    const/16 v5, 0x74

    aput-object v4, v3, v5

    const-string/jumbo v4, "magnitka"

    const/16 v5, 0x75

    aput-object v4, v3, v5

    const-string/jumbo v4, "mytis"

    const/16 v5, 0x76

    aput-object v4, v3, v5

    const-string/jumbo v4, "nakhodka"

    const/16 v5, 0x77

    aput-object v4, v3, v5

    const-string/jumbo v4, "nkz"

    const/16 v5, 0x78

    aput-object v4, v3, v5

    const-string/jumbo v4, "norilsk"

    const/16 v5, 0x79

    aput-object v4, v3, v5

    const-string/jumbo v4, "oskol"

    const/16 v5, 0x7a

    aput-object v4, v3, v5

    const-string/jumbo v4, "pyatigorsk"

    const/16 v5, 0x7b

    aput-object v4, v3, v5

    const-string/jumbo v4, "rubtsovsk"

    const/16 v5, 0x7c

    aput-object v4, v3, v5

    const-string/jumbo v4, "snz"

    const/16 v5, 0x7d

    aput-object v4, v3, v5

    const-string/jumbo v4, "syzran"

    const/16 v5, 0x7e

    aput-object v4, v3, v5

    const-string/jumbo v4, "vdonsk"

    const/16 v5, 0x7f

    aput-object v4, v3, v5

    const-string/jumbo v4, "zgrad"

    const/16 v5, 0x80

    aput-object v4, v3, v5

    const-string/jumbo v4, "gov"

    const/16 v5, 0x81

    aput-object v4, v3, v5

    const-string/jumbo v4, "mil"

    const/16 v5, 0x82

    aput-object v4, v3, v5

    const-string/jumbo v4, "test"

    const/16 v5, 0x83

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "rw"

    new-instance v2, Ljava/util/HashSet;

    const/16 v3, 0x9

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "gov"

    aput-object v4, v3, v6

    const-string/jumbo v4, "net"

    aput-object v4, v3, v7

    const-string/jumbo v4, "edu"

    aput-object v4, v3, v8

    const-string/jumbo v4, "ac"

    aput-object v4, v3, v9

    const-string/jumbo v4, "com"

    aput-object v4, v3, v10

    const-string/jumbo v4, "co"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    const-string/jumbo v4, "int"

    const/4 v5, 0x6

    aput-object v4, v3, v5

    const-string/jumbo v4, "mil"

    const/4 v5, 0x7

    aput-object v4, v3, v5

    const-string/jumbo v4, "gouv"

    const/16 v5, 0x8

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "sa"

    new-instance v2, Ljava/util/HashSet;

    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "com"

    aput-object v4, v3, v6

    const-string/jumbo v4, "net"

    aput-object v4, v3, v7

    const-string/jumbo v4, "org"

    aput-object v4, v3, v8

    const-string/jumbo v4, "gov"

    aput-object v4, v3, v9

    const-string/jumbo v4, "med"

    aput-object v4, v3, v10

    const-string/jumbo v4, "pub"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    const-string/jumbo v4, "edu"

    const/4 v5, 0x6

    aput-object v4, v3, v5

    const-string/jumbo v4, "sch"

    const/4 v5, 0x7

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "sd"

    new-instance v2, Ljava/util/HashSet;

    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "com"

    aput-object v4, v3, v6

    const-string/jumbo v4, "net"

    aput-object v4, v3, v7

    const-string/jumbo v4, "org"

    aput-object v4, v3, v8

    const-string/jumbo v4, "edu"

    aput-object v4, v3, v9

    const-string/jumbo v4, "med"

    aput-object v4, v3, v10

    const-string/jumbo v4, "gov"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    const-string/jumbo v4, "info"

    const/4 v5, 0x6

    aput-object v4, v3, v5

    const-string/jumbo v4, "tv"

    const/4 v5, 0x7

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "se"

    new-instance v2, Ljava/util/HashSet;

    const/16 v3, 0x29

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "a"

    aput-object v4, v3, v6

    const-string/jumbo v4, "ac"

    aput-object v4, v3, v7

    const-string/jumbo v4, "b"

    aput-object v4, v3, v8

    const-string/jumbo v4, "bd"

    aput-object v4, v3, v9

    const-string/jumbo v4, "brand"

    aput-object v4, v3, v10

    const-string/jumbo v4, "c"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    const-string/jumbo v4, "d"

    const/4 v5, 0x6

    aput-object v4, v3, v5

    const-string/jumbo v4, "e"

    const/4 v5, 0x7

    aput-object v4, v3, v5

    const-string/jumbo v4, "f"

    const/16 v5, 0x8

    aput-object v4, v3, v5

    const-string/jumbo v4, "fh"

    const/16 v5, 0x9

    aput-object v4, v3, v5

    const-string/jumbo v4, "fhsk"

    const/16 v5, 0xa

    aput-object v4, v3, v5

    const-string/jumbo v4, "fhv"

    const/16 v5, 0xb

    aput-object v4, v3, v5

    const-string/jumbo v4, "g"

    const/16 v5, 0xc

    aput-object v4, v3, v5

    const-string/jumbo v4, "h"

    const/16 v5, 0xd

    aput-object v4, v3, v5

    const-string/jumbo v4, "i"

    const/16 v5, 0xe

    aput-object v4, v3, v5

    const-string/jumbo v4, "k"

    const/16 v5, 0xf

    aput-object v4, v3, v5

    const-string/jumbo v4, "komforb"

    const/16 v5, 0x10

    aput-object v4, v3, v5

    const-string/jumbo v4, "kommunalforbund"

    const/16 v5, 0x11

    aput-object v4, v3, v5

    const-string/jumbo v4, "komvux"

    const/16 v5, 0x12

    aput-object v4, v3, v5

    const-string/jumbo v4, "l"

    const/16 v5, 0x13

    aput-object v4, v3, v5

    const-string/jumbo v4, "lanarb"

    const/16 v5, 0x14

    aput-object v4, v3, v5

    const-string/jumbo v4, "lanbib"

    const/16 v5, 0x15

    aput-object v4, v3, v5

    const-string/jumbo v4, "m"

    const/16 v5, 0x16

    aput-object v4, v3, v5

    const-string/jumbo v4, "n"

    const/16 v5, 0x17

    aput-object v4, v3, v5

    const-string/jumbo v4, "naturbruksgymn"

    const/16 v5, 0x18

    aput-object v4, v3, v5

    const-string/jumbo v4, "o"

    const/16 v5, 0x19

    aput-object v4, v3, v5

    const-string/jumbo v4, "org"

    const/16 v5, 0x1a

    aput-object v4, v3, v5

    const-string/jumbo v4, "p"

    const/16 v5, 0x1b

    aput-object v4, v3, v5

    const-string/jumbo v4, "parti"

    const/16 v5, 0x1c

    aput-object v4, v3, v5

    const-string/jumbo v4, "pp"

    const/16 v5, 0x1d

    aput-object v4, v3, v5

    const-string/jumbo v4, "press"

    const/16 v5, 0x1e

    aput-object v4, v3, v5

    const-string/jumbo v4, "r"

    const/16 v5, 0x1f

    aput-object v4, v3, v5

    const-string/jumbo v4, "s"

    const/16 v5, 0x20

    aput-object v4, v3, v5

    const-string/jumbo v4, "sshn"

    const/16 v5, 0x21

    aput-object v4, v3, v5

    const-string/jumbo v4, "t"

    const/16 v5, 0x22

    aput-object v4, v3, v5

    const-string/jumbo v4, "tm"

    const/16 v5, 0x23

    aput-object v4, v3, v5

    const-string/jumbo v4, "u"

    const/16 v5, 0x24

    aput-object v4, v3, v5

    const-string/jumbo v4, "w"

    const/16 v5, 0x25

    aput-object v4, v3, v5

    const-string/jumbo v4, "x"

    const/16 v5, 0x26

    aput-object v4, v3, v5

    const-string/jumbo v4, "y"

    const/16 v5, 0x27

    aput-object v4, v3, v5

    const-string/jumbo v4, "z"

    const/16 v5, 0x28

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "sg"

    new-instance v2, Ljava/util/HashSet;

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "com"

    aput-object v4, v3, v6

    const-string/jumbo v4, "net"

    aput-object v4, v3, v7

    const-string/jumbo v4, "org"

    aput-object v4, v3, v8

    const-string/jumbo v4, "gov"

    aput-object v4, v3, v9

    const-string/jumbo v4, "edu"

    aput-object v4, v3, v10

    const-string/jumbo v4, "per"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "sh"

    new-instance v2, Ljava/util/HashSet;

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "co"

    aput-object v4, v3, v6

    const-string/jumbo v4, "com"

    aput-object v4, v3, v7

    const-string/jumbo v4, "net"

    aput-object v4, v3, v8

    const-string/jumbo v4, "org"

    aput-object v4, v3, v9

    const-string/jumbo v4, "gov"

    aput-object v4, v3, v10

    const-string/jumbo v4, "edu"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    const-string/jumbo v4, "nom"

    const/4 v5, 0x6

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "sk"

    new-instance v2, Ljava/util/HashSet;

    new-array v3, v8, [Ljava/lang/String;

    const-string/jumbo v4, "gov"

    aput-object v4, v3, v6

    const-string/jumbo v4, "edu"

    aput-object v4, v3, v7

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "sn"

    new-instance v2, Ljava/util/HashSet;

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "art"

    aput-object v4, v3, v6

    const-string/jumbo v4, "com"

    aput-object v4, v3, v7

    const-string/jumbo v4, "edu"

    aput-object v4, v3, v8

    const-string/jumbo v4, "gouv"

    aput-object v4, v3, v9

    const-string/jumbo v4, "org"

    aput-object v4, v3, v10

    const-string/jumbo v4, "perso"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    const-string/jumbo v4, "univ"

    const/4 v5, 0x6

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "so"

    new-instance v2, Ljava/util/HashSet;

    new-array v3, v9, [Ljava/lang/String;

    const-string/jumbo v4, "com"

    aput-object v4, v3, v6

    const-string/jumbo v4, "net"

    aput-object v4, v3, v7

    const-string/jumbo v4, "org"

    aput-object v4, v3, v8

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "sr"

    new-instance v2, Ljava/util/HashSet;

    const/16 v3, 0xc

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "co"

    aput-object v4, v3, v6

    const-string/jumbo v4, "com"

    aput-object v4, v3, v7

    const-string/jumbo v4, "consulado"

    aput-object v4, v3, v8

    const-string/jumbo v4, "edu"

    aput-object v4, v3, v9

    const-string/jumbo v4, "embaixada"

    aput-object v4, v3, v10

    const-string/jumbo v4, "gov"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    const-string/jumbo v4, "mil"

    const/4 v5, 0x6

    aput-object v4, v3, v5

    const-string/jumbo v4, "net"

    const/4 v5, 0x7

    aput-object v4, v3, v5

    const-string/jumbo v4, "org"

    const/16 v5, 0x8

    aput-object v4, v3, v5

    const-string/jumbo v4, "principe"

    const/16 v5, 0x9

    aput-object v4, v3, v5

    const-string/jumbo v4, "saotome"

    const/16 v5, 0xa

    aput-object v4, v3, v5

    const-string/jumbo v4, "store"

    const/16 v5, 0xb

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "sy"

    new-instance v2, Ljava/util/HashSet;

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "edu"

    aput-object v4, v3, v6

    const-string/jumbo v4, "gov"

    aput-object v4, v3, v7

    const-string/jumbo v4, "net"

    aput-object v4, v3, v8

    const-string/jumbo v4, "mil"

    aput-object v4, v3, v9

    const-string/jumbo v4, "com"

    aput-object v4, v3, v10

    const-string/jumbo v4, "org"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    const-string/jumbo v4, "news"

    const/4 v5, 0x6

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "sz"

    new-instance v2, Ljava/util/HashSet;

    new-array v3, v9, [Ljava/lang/String;

    const-string/jumbo v4, "co"

    aput-object v4, v3, v6

    const-string/jumbo v4, "ac"

    aput-object v4, v3, v7

    const-string/jumbo v4, "org"

    aput-object v4, v3, v8

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "th"

    new-instance v2, Ljava/util/HashSet;

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "ac"

    aput-object v4, v3, v6

    const-string/jumbo v4, "co"

    aput-object v4, v3, v7

    const-string/jumbo v4, "go"

    aput-object v4, v3, v8

    const-string/jumbo v4, "in"

    aput-object v4, v3, v9

    const-string/jumbo v4, "mi"

    aput-object v4, v3, v10

    const-string/jumbo v4, "net"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    const-string/jumbo v4, "or"

    const/4 v5, 0x6

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "tj"

    new-instance v2, Ljava/util/HashSet;

    const/16 v3, 0xf

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "ac"

    aput-object v4, v3, v6

    const-string/jumbo v4, "biz"

    aput-object v4, v3, v7

    const-string/jumbo v4, "co"

    aput-object v4, v3, v8

    const-string/jumbo v4, "com"

    aput-object v4, v3, v9

    const-string/jumbo v4, "edu"

    aput-object v4, v3, v10

    const-string/jumbo v4, "go"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    const-string/jumbo v4, "gov"

    const/4 v5, 0x6

    aput-object v4, v3, v5

    const-string/jumbo v4, "int"

    const/4 v5, 0x7

    aput-object v4, v3, v5

    const-string/jumbo v4, "mil"

    const/16 v5, 0x8

    aput-object v4, v3, v5

    const-string/jumbo v4, "name"

    const/16 v5, 0x9

    aput-object v4, v3, v5

    const-string/jumbo v4, "net"

    const/16 v5, 0xa

    aput-object v4, v3, v5

    const-string/jumbo v4, "nic"

    const/16 v5, 0xb

    aput-object v4, v3, v5

    const-string/jumbo v4, "org"

    const/16 v5, 0xc

    aput-object v4, v3, v5

    const-string/jumbo v4, "test"

    const/16 v5, 0xd

    aput-object v4, v3, v5

    const-string/jumbo v4, "web"

    const/16 v5, 0xe

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "tn"

    new-instance v2, Ljava/util/HashSet;

    const/16 v3, 0x14

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "com"

    aput-object v4, v3, v6

    const-string/jumbo v4, "ens"

    aput-object v4, v3, v7

    const-string/jumbo v4, "fin"

    aput-object v4, v3, v8

    const-string/jumbo v4, "gov"

    aput-object v4, v3, v9

    const-string/jumbo v4, "ind"

    aput-object v4, v3, v10

    const-string/jumbo v4, "intl"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    const-string/jumbo v4, "nat"

    const/4 v5, 0x6

    aput-object v4, v3, v5

    const-string/jumbo v4, "net"

    const/4 v5, 0x7

    aput-object v4, v3, v5

    const-string/jumbo v4, "org"

    const/16 v5, 0x8

    aput-object v4, v3, v5

    const-string/jumbo v4, "info"

    const/16 v5, 0x9

    aput-object v4, v3, v5

    const-string/jumbo v4, "perso"

    const/16 v5, 0xa

    aput-object v4, v3, v5

    const-string/jumbo v4, "tourism"

    const/16 v5, 0xb

    aput-object v4, v3, v5

    const-string/jumbo v4, "edunet"

    const/16 v5, 0xc

    aput-object v4, v3, v5

    const-string/jumbo v4, "rnrt"

    const/16 v5, 0xd

    aput-object v4, v3, v5

    const-string/jumbo v4, "rns"

    const/16 v5, 0xe

    aput-object v4, v3, v5

    const-string/jumbo v4, "rnu"

    const/16 v5, 0xf

    aput-object v4, v3, v5

    const-string/jumbo v4, "mincom"

    const/16 v5, 0x10

    aput-object v4, v3, v5

    const-string/jumbo v4, "agrinet"

    const/16 v5, 0x11

    aput-object v4, v3, v5

    const-string/jumbo v4, "defense"

    const/16 v5, 0x12

    aput-object v4, v3, v5

    const-string/jumbo v4, "turen"

    const/16 v5, 0x13

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "to"

    new-instance v2, Ljava/util/HashSet;

    new-array v3, v7, [Ljava/lang/String;

    const-string/jumbo v4, "gov"

    aput-object v4, v3, v6

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "tt"

    new-instance v2, Ljava/util/HashSet;

    const/16 v3, 0x14

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "co"

    aput-object v4, v3, v6

    const-string/jumbo v4, "com"

    aput-object v4, v3, v7

    const-string/jumbo v4, "org"

    aput-object v4, v3, v8

    const-string/jumbo v4, "net"

    aput-object v4, v3, v9

    const-string/jumbo v4, "biz"

    aput-object v4, v3, v10

    const-string/jumbo v4, "info"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    const-string/jumbo v4, "pro"

    const/4 v5, 0x6

    aput-object v4, v3, v5

    const-string/jumbo v4, "int"

    const/4 v5, 0x7

    aput-object v4, v3, v5

    const-string/jumbo v4, "coop"

    const/16 v5, 0x8

    aput-object v4, v3, v5

    const-string/jumbo v4, "jobs"

    const/16 v5, 0x9

    aput-object v4, v3, v5

    const-string/jumbo v4, "mobi"

    const/16 v5, 0xa

    aput-object v4, v3, v5

    const-string/jumbo v4, "travel"

    const/16 v5, 0xb

    aput-object v4, v3, v5

    const-string/jumbo v4, "museum"

    const/16 v5, 0xc

    aput-object v4, v3, v5

    const-string/jumbo v4, "aero"

    const/16 v5, 0xd

    aput-object v4, v3, v5

    const-string/jumbo v4, "name"

    const/16 v5, 0xe

    aput-object v4, v3, v5

    const-string/jumbo v4, "gov"

    const/16 v5, 0xf

    aput-object v4, v3, v5

    const-string/jumbo v4, "edu"

    const/16 v5, 0x10

    aput-object v4, v3, v5

    const-string/jumbo v4, "cat"

    const/16 v5, 0x11

    aput-object v4, v3, v5

    const-string/jumbo v4, "tel"

    const/16 v5, 0x12

    aput-object v4, v3, v5

    const-string/jumbo v4, "mil"

    const/16 v5, 0x13

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "tw"

    new-instance v2, Ljava/util/HashSet;

    const/16 v3, 0xd

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "edu"

    aput-object v4, v3, v6

    const-string/jumbo v4, "gov"

    aput-object v4, v3, v7

    const-string/jumbo v4, "mil"

    aput-object v4, v3, v8

    const-string/jumbo v4, "com"

    aput-object v4, v3, v9

    const-string/jumbo v4, "net"

    aput-object v4, v3, v10

    const-string/jumbo v4, "org"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    const-string/jumbo v4, "idv"

    const/4 v5, 0x6

    aput-object v4, v3, v5

    const-string/jumbo v4, "game"

    const/4 v5, 0x7

    aput-object v4, v3, v5

    const-string/jumbo v4, "ebiz"

    const/16 v5, 0x8

    aput-object v4, v3, v5

    const-string/jumbo v4, "club"

    const/16 v5, 0x9

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--zf0ao64a"

    const/16 v5, 0xa

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--uc0atv"

    const/16 v5, 0xb

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--czrw28b"

    const/16 v5, 0xc

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "ua"

    new-instance v2, Ljava/util/HashSet;

    const/16 v3, 0x3f

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "com"

    aput-object v4, v3, v6

    const-string/jumbo v4, "edu"

    aput-object v4, v3, v7

    const-string/jumbo v4, "gov"

    aput-object v4, v3, v8

    const-string/jumbo v4, "in"

    aput-object v4, v3, v9

    const-string/jumbo v4, "net"

    aput-object v4, v3, v10

    const-string/jumbo v4, "org"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    const-string/jumbo v4, "cherkassy"

    const/4 v5, 0x6

    aput-object v4, v3, v5

    const-string/jumbo v4, "chernigov"

    const/4 v5, 0x7

    aput-object v4, v3, v5

    const-string/jumbo v4, "chernovtsy"

    const/16 v5, 0x8

    aput-object v4, v3, v5

    const-string/jumbo v4, "ck"

    const/16 v5, 0x9

    aput-object v4, v3, v5

    const-string/jumbo v4, "cn"

    const/16 v5, 0xa

    aput-object v4, v3, v5

    const-string/jumbo v4, "crimea"

    const/16 v5, 0xb

    aput-object v4, v3, v5

    const-string/jumbo v4, "cv"

    const/16 v5, 0xc

    aput-object v4, v3, v5

    const-string/jumbo v4, "dn"

    const/16 v5, 0xd

    aput-object v4, v3, v5

    const-string/jumbo v4, "dnepropetrovsk"

    const/16 v5, 0xe

    aput-object v4, v3, v5

    const-string/jumbo v4, "donetsk"

    const/16 v5, 0xf

    aput-object v4, v3, v5

    const-string/jumbo v4, "dp"

    const/16 v5, 0x10

    aput-object v4, v3, v5

    const-string/jumbo v4, "if"

    const/16 v5, 0x11

    aput-object v4, v3, v5

    const-string/jumbo v4, "ivano-frankivsk"

    const/16 v5, 0x12

    aput-object v4, v3, v5

    const-string/jumbo v4, "kh"

    const/16 v5, 0x13

    aput-object v4, v3, v5

    const-string/jumbo v4, "kharkov"

    const/16 v5, 0x14

    aput-object v4, v3, v5

    const-string/jumbo v4, "kherson"

    const/16 v5, 0x15

    aput-object v4, v3, v5

    const-string/jumbo v4, "kiev"

    const/16 v5, 0x16

    aput-object v4, v3, v5

    const-string/jumbo v4, "kirovograd"

    const/16 v5, 0x17

    aput-object v4, v3, v5

    const-string/jumbo v4, "km"

    const/16 v5, 0x18

    aput-object v4, v3, v5

    const-string/jumbo v4, "kr"

    const/16 v5, 0x19

    aput-object v4, v3, v5

    const-string/jumbo v4, "ks"

    const/16 v5, 0x1a

    aput-object v4, v3, v5

    const-string/jumbo v4, "lg"

    const/16 v5, 0x1b

    aput-object v4, v3, v5

    const-string/jumbo v4, "lugansk"

    const/16 v5, 0x1c

    aput-object v4, v3, v5

    const-string/jumbo v4, "lutsk"

    const/16 v5, 0x1d

    aput-object v4, v3, v5

    const-string/jumbo v4, "lviv"

    const/16 v5, 0x1e

    aput-object v4, v3, v5

    const-string/jumbo v4, "mk"

    const/16 v5, 0x1f

    aput-object v4, v3, v5

    const-string/jumbo v4, "nikolaev"

    const/16 v5, 0x20

    aput-object v4, v3, v5

    const-string/jumbo v4, "od"

    const/16 v5, 0x21

    aput-object v4, v3, v5

    const-string/jumbo v4, "odessa"

    const/16 v5, 0x22

    aput-object v4, v3, v5

    const-string/jumbo v4, "pl"

    const/16 v5, 0x23

    aput-object v4, v3, v5

    const-string/jumbo v4, "poltava"

    const/16 v5, 0x24

    aput-object v4, v3, v5

    const-string/jumbo v4, "rovno"

    const/16 v5, 0x25

    aput-object v4, v3, v5

    const-string/jumbo v4, "rv"

    const/16 v5, 0x26

    aput-object v4, v3, v5

    const-string/jumbo v4, "sebastopol"

    const/16 v5, 0x27

    aput-object v4, v3, v5

    const-string/jumbo v4, "sumy"

    const/16 v5, 0x28

    aput-object v4, v3, v5

    const-string/jumbo v4, "te"

    const/16 v5, 0x29

    aput-object v4, v3, v5

    const-string/jumbo v4, "ternopil"

    const/16 v5, 0x2a

    aput-object v4, v3, v5

    const-string/jumbo v4, "uzhgorod"

    const/16 v5, 0x2b

    aput-object v4, v3, v5

    const-string/jumbo v4, "vinnica"

    const/16 v5, 0x2c

    aput-object v4, v3, v5

    const-string/jumbo v4, "vn"

    const/16 v5, 0x2d

    aput-object v4, v3, v5

    const-string/jumbo v4, "zaporizhzhe"

    const/16 v5, 0x2e

    aput-object v4, v3, v5

    const-string/jumbo v4, "zp"

    const/16 v5, 0x2f

    aput-object v4, v3, v5

    const-string/jumbo v4, "zhitomir"

    const/16 v5, 0x30

    aput-object v4, v3, v5

    const-string/jumbo v4, "zt"

    const/16 v5, 0x31

    aput-object v4, v3, v5

    const-string/jumbo v4, "cr"

    const/16 v5, 0x32

    aput-object v4, v3, v5

    const-string/jumbo v4, "lt"

    const/16 v5, 0x33

    aput-object v4, v3, v5

    const-string/jumbo v4, "lv"

    const/16 v5, 0x34

    aput-object v4, v3, v5

    const-string/jumbo v4, "sb"

    const/16 v5, 0x35

    aput-object v4, v3, v5

    const-string/jumbo v4, "sm"

    const/16 v5, 0x36

    aput-object v4, v3, v5

    const-string/jumbo v4, "tr"

    const/16 v5, 0x37

    aput-object v4, v3, v5

    const-string/jumbo v4, "co"

    const/16 v5, 0x38

    aput-object v4, v3, v5

    const-string/jumbo v4, "biz"

    const/16 v5, 0x39

    aput-object v4, v3, v5

    const-string/jumbo v4, "in"

    const/16 v5, 0x3a

    aput-object v4, v3, v5

    const-string/jumbo v4, "ne"

    const/16 v5, 0x3b

    aput-object v4, v3, v5

    const-string/jumbo v4, "pp"

    const/16 v5, 0x3c

    aput-object v4, v3, v5

    const-string/jumbo v4, "uz"

    const/16 v5, 0x3d

    aput-object v4, v3, v5

    const-string/jumbo v4, "dominic"

    const/16 v5, 0x3e

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "ug"

    new-instance v2, Ljava/util/HashSet;

    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "co"

    aput-object v4, v3, v6

    const-string/jumbo v4, "ac"

    aput-object v4, v3, v7

    const-string/jumbo v4, "sc"

    aput-object v4, v3, v8

    const-string/jumbo v4, "go"

    aput-object v4, v3, v9

    const-string/jumbo v4, "ne"

    aput-object v4, v3, v10

    const-string/jumbo v4, "or"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    const-string/jumbo v4, "org"

    const/4 v5, 0x6

    aput-object v4, v3, v5

    const-string/jumbo v4, "com"

    const/4 v5, 0x7

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "us"

    new-instance v2, Ljava/util/HashSet;

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "dni"

    aput-object v4, v3, v6

    const-string/jumbo v4, "fed"

    aput-object v4, v3, v7

    const-string/jumbo v4, "isa"

    aput-object v4, v3, v8

    const-string/jumbo v4, "kids"

    aput-object v4, v3, v9

    const-string/jumbo v4, "nsn"

    aput-object v4, v3, v10

    const-string/jumbo v4, "kyschools"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "uz"

    new-instance v2, Ljava/util/HashSet;

    const/16 v3, 0x9

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "co"

    aput-object v4, v3, v6

    const-string/jumbo v4, "com"

    aput-object v4, v3, v7

    const-string/jumbo v4, "org"

    aput-object v4, v3, v8

    const-string/jumbo v4, "gov"

    aput-object v4, v3, v9

    const-string/jumbo v4, "ac"

    aput-object v4, v3, v10

    const-string/jumbo v4, "edu"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    const-string/jumbo v4, "int"

    const/4 v5, 0x6

    aput-object v4, v3, v5

    const-string/jumbo v4, "pp"

    const/4 v5, 0x7

    aput-object v4, v3, v5

    const-string/jumbo v4, "net"

    const/16 v5, 0x8

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "vc"

    new-instance v2, Ljava/util/HashSet;

    new-array v3, v10, [Ljava/lang/String;

    const-string/jumbo v4, "com"

    aput-object v4, v3, v6

    const-string/jumbo v4, "net"

    aput-object v4, v3, v7

    const-string/jumbo v4, "org"

    aput-object v4, v3, v8

    const-string/jumbo v4, "gov"

    aput-object v4, v3, v9

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "vi"

    new-instance v2, Ljava/util/HashSet;

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "co"

    aput-object v4, v3, v6

    const-string/jumbo v4, "com"

    aput-object v4, v3, v7

    const-string/jumbo v4, "k12"

    aput-object v4, v3, v8

    const-string/jumbo v4, "net"

    aput-object v4, v3, v9

    const-string/jumbo v4, "org"

    aput-object v4, v3, v10

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "vn"

    new-instance v2, Ljava/util/HashSet;

    const/16 v3, 0xc

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "com"

    aput-object v4, v3, v6

    const-string/jumbo v4, "net"

    aput-object v4, v3, v7

    const-string/jumbo v4, "org"

    aput-object v4, v3, v8

    const-string/jumbo v4, "edu"

    aput-object v4, v3, v9

    const-string/jumbo v4, "gov"

    aput-object v4, v3, v10

    const-string/jumbo v4, "int"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    const-string/jumbo v4, "ac"

    const/4 v5, 0x6

    aput-object v4, v3, v5

    const-string/jumbo v4, "biz"

    const/4 v5, 0x7

    aput-object v4, v3, v5

    const-string/jumbo v4, "info"

    const/16 v5, 0x8

    aput-object v4, v3, v5

    const-string/jumbo v4, "name"

    const/16 v5, 0x9

    aput-object v4, v3, v5

    const-string/jumbo v4, "pro"

    const/16 v5, 0xa

    aput-object v4, v3, v5

    const-string/jumbo v4, "health"

    const/16 v5, 0xb

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "vu"

    new-instance v2, Ljava/util/HashSet;

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "co"

    aput-object v4, v3, v6

    const-string/jumbo v4, "com"

    aput-object v4, v3, v7

    const-string/jumbo v4, "net"

    aput-object v4, v3, v8

    const-string/jumbo v4, "org"

    aput-object v4, v3, v9

    const-string/jumbo v4, "edu"

    aput-object v4, v3, v10

    const-string/jumbo v4, "gov"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    const-string/jumbo v4, "de"

    const/4 v5, 0x6

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "org"

    new-instance v2, Ljava/util/HashSet;

    new-array v3, v8, [Ljava/lang/String;

    const-string/jumbo v4, "ae"

    aput-object v4, v3, v6

    const-string/jumbo v4, "za"

    aput-object v4, v3, v7

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    const-string/jumbo v1, "pro"

    new-instance v2, Ljava/util/HashSet;

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "aca"

    aput-object v4, v3, v6

    const-string/jumbo v4, "bar"

    aput-object v4, v3, v7

    const-string/jumbo v4, "cpa"

    aput-object v4, v3, v8

    const-string/jumbo v4, "jur"

    aput-object v4, v3, v9

    const-string/jumbo v4, "law"

    aput-object v4, v3, v10

    const-string/jumbo v4, "med"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    const-string/jumbo v4, "eng"

    const/4 v5, 0x6

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->top3Map:Ljava/util/Map;

    const-string/jumbo v1, "au"

    new-instance v2, Ljava/util/HashSet;

    const/16 v3, 0x11

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "act.edu.au"

    aput-object v4, v3, v6

    const-string/jumbo v4, "eq.edu.au"

    aput-object v4, v3, v7

    const-string/jumbo v4, "nsw.edu.au"

    aput-object v4, v3, v8

    const-string/jumbo v4, "nt.edu.au"

    aput-object v4, v3, v9

    const-string/jumbo v4, "qld.edu.au"

    aput-object v4, v3, v10

    const-string/jumbo v4, "sa.edu.au"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    const-string/jumbo v4, "tas.edu.au"

    const/4 v5, 0x6

    aput-object v4, v3, v5

    const-string/jumbo v4, "vic.edu.au"

    const/4 v5, 0x7

    aput-object v4, v3, v5

    const-string/jumbo v4, "wa.edu.au"

    const/16 v5, 0x8

    aput-object v4, v3, v5

    const-string/jumbo v4, "act.gov.au"

    const/16 v5, 0x9

    aput-object v4, v3, v5

    const-string/jumbo v4, "nsw.gov.au"

    const/16 v5, 0xa

    aput-object v4, v3, v5

    const-string/jumbo v4, "nt.gov.au"

    const/16 v5, 0xb

    aput-object v4, v3, v5

    const-string/jumbo v4, "qld.gov.au"

    const/16 v5, 0xc

    aput-object v4, v3, v5

    const-string/jumbo v4, "sa.gov.au"

    const/16 v5, 0xd

    aput-object v4, v3, v5

    const-string/jumbo v4, "tas.gov.au"

    const/16 v5, 0xe

    aput-object v4, v3, v5

    const-string/jumbo v4, "vic.gov.au"

    const/16 v5, 0xf

    aput-object v4, v3, v5

    const-string/jumbo v4, "wa.gov.au"

    const/16 v5, 0x10

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->top3Map:Ljava/util/Map;

    const-string/jumbo v1, "im"

    new-instance v2, Ljava/util/HashSet;

    new-array v3, v8, [Ljava/lang/String;

    const-string/jumbo v4, "ltd.co.im"

    aput-object v4, v3, v6

    const-string/jumbo v4, "plc.co.im"

    aput-object v4, v3, v7

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->top3Map:Ljava/util/Map;

    const-string/jumbo v1, "no"

    new-instance v2, Ljava/util/HashSet;

    const/16 v3, 0x28

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "gs.aa.no"

    aput-object v4, v3, v6

    const-string/jumbo v4, "gs.ah.no"

    aput-object v4, v3, v7

    const-string/jumbo v4, "gs.bu.no"

    aput-object v4, v3, v8

    const-string/jumbo v4, "gs.fm.no"

    aput-object v4, v3, v9

    const-string/jumbo v4, "gs.hl.no"

    aput-object v4, v3, v10

    const-string/jumbo v4, "gs.hm.no"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    const-string/jumbo v4, "gs.jan-mayen.no"

    const/4 v5, 0x6

    aput-object v4, v3, v5

    const-string/jumbo v4, "gs.mr.no"

    const/4 v5, 0x7

    aput-object v4, v3, v5

    const-string/jumbo v4, "gs.nl.no"

    const/16 v5, 0x8

    aput-object v4, v3, v5

    const-string/jumbo v4, "gs.nt.no"

    const/16 v5, 0x9

    aput-object v4, v3, v5

    const-string/jumbo v4, "gs.of.no"

    const/16 v5, 0xa

    aput-object v4, v3, v5

    const-string/jumbo v4, "gs.ol.no"

    const/16 v5, 0xb

    aput-object v4, v3, v5

    const-string/jumbo v4, "gs.oslo.no"

    const/16 v5, 0xc

    aput-object v4, v3, v5

    const-string/jumbo v4, "gs.rl.no"

    const/16 v5, 0xd

    aput-object v4, v3, v5

    const-string/jumbo v4, "gs.sf.no"

    const/16 v5, 0xe

    aput-object v4, v3, v5

    const-string/jumbo v4, "gs.st.no"

    const/16 v5, 0xf

    aput-object v4, v3, v5

    const-string/jumbo v4, "gs.svalbard.no"

    const/16 v5, 0x10

    aput-object v4, v3, v5

    const-string/jumbo v4, "gs.tm.no"

    const/16 v5, 0x11

    aput-object v4, v3, v5

    const-string/jumbo v4, "gs.tr.no"

    const/16 v5, 0x12

    aput-object v4, v3, v5

    const-string/jumbo v4, "gs.va.no"

    const/16 v5, 0x13

    aput-object v4, v3, v5

    const-string/jumbo v4, "gs.vf.no"

    const/16 v5, 0x14

    aput-object v4, v3, v5

    const-string/jumbo v4, "bo.telemark.no"

    const/16 v5, 0x15

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--b-5ga.telemark.no"

    const/16 v5, 0x16

    aput-object v4, v3, v5

    const-string/jumbo v4, "bo.nordland.no"

    const/16 v5, 0x17

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--b-5ga.nordland.no"

    const/16 v5, 0x18

    aput-object v4, v3, v5

    const-string/jumbo v4, "heroy.more-og-romsdal.no"

    const/16 v5, 0x19

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--hery-ira.xn--mre-og-romsdal-qqb.no"

    const/16 v5, 0x1a

    aput-object v4, v3, v5

    const-string/jumbo v4, "heroy.nordland.no"

    const/16 v5, 0x1b

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--hery-ira.nordland.no"

    const/16 v5, 0x1c

    aput-object v4, v3, v5

    const-string/jumbo v4, "nes.akershus.no"

    const/16 v5, 0x1d

    aput-object v4, v3, v5

    const-string/jumbo v4, "nes.buskerud.no"

    const/16 v5, 0x1e

    aput-object v4, v3, v5

    const-string/jumbo v4, "os.hedmark.no"

    const/16 v5, 0x1f

    aput-object v4, v3, v5

    const-string/jumbo v4, "os.hordaland.no"

    const/16 v5, 0x20

    aput-object v4, v3, v5

    const-string/jumbo v4, "sande.more-og-romsdal.no"

    const/16 v5, 0x21

    aput-object v4, v3, v5

    const-string/jumbo v4, "sande.xn--mre-og-romsdal-qqb.no"

    const/16 v5, 0x22

    aput-object v4, v3, v5

    const-string/jumbo v4, "sande.vestfold.no"

    const/16 v5, 0x23

    aput-object v4, v3, v5

    const-string/jumbo v4, "valer.ostfold.no"

    const/16 v5, 0x24

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--vler-qoa.xn--stfold-9xa.no"

    const/16 v5, 0x25

    aput-object v4, v3, v5

    const-string/jumbo v4, "valer.hedmark.no"

    const/16 v5, 0x26

    aput-object v4, v3, v5

    const-string/jumbo v4, "xn--vler-qoa.hedmark.no"

    const/16 v5, 0x27

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/net/RegisteredDomain;->top3Map:Ljava/util/Map;

    const-string/jumbo v1, "tr"

    new-instance v2, Ljava/util/HashSet;

    new-array v3, v7, [Ljava/lang/String;

    const-string/jumbo v4, "gov.nc.tr"

    aput-object v4, v3, v6

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRegisteredDomain(Ljava/lang/String;)Ljava/lang/String;
    .locals 14

    const/16 v12, 0x2e

    invoke-virtual {p0, v12}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v12, -0x1

    if-ne v0, v12, :cond_0

    return-object p0

    :cond_0
    if-nez v0, :cond_1

    const-string/jumbo v12, ""

    return-object v12

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    if-ne v0, v12, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    const/4 v13, 0x0

    invoke-virtual {p0, v13, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const/16 v12, 0x2e

    invoke-virtual {p0, v12}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v12, -0x1

    if-ne v0, v12, :cond_2

    return-object p0

    :cond_2
    if-nez v0, :cond_3

    const-string/jumbo v12, ""

    return-object v12

    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    if-ne v0, v12, :cond_4

    const-string/jumbo v12, ""

    return-object v12

    :cond_4
    const/16 v12, 0x2e

    add-int/lit8 v13, v0, -0x1

    invoke-virtual {p0, v12, v13}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v7

    const/4 v12, -0x1

    if-ne v7, v12, :cond_5

    return-object p0

    :cond_5
    if-nez v7, :cond_6

    const-string/jumbo v12, ""

    return-object v12

    :cond_6
    const/16 v12, 0x2e

    add-int/lit8 v13, v7, -0x1

    invoke-virtual {p0, v12, v13}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v10

    const/4 v2, -0x1

    if-lez v10, :cond_7

    const/16 v12, 0x2e

    add-int/lit8 v13, v10, -0x1

    invoke-virtual {p0, v12, v13}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v2

    :cond_7
    const/4 v1, -0x1

    if-lez v2, :cond_8

    const/16 v12, 0x2e

    add-int/lit8 v13, v2, -0x1

    invoke-virtual {p0, v12, v13}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v1

    :cond_8
    add-int/lit8 v12, v0, 0x1

    invoke-virtual {p0, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v12, v7, 0x1

    invoke-virtual {p0, v12, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/4 v12, -0x1

    if-eq v2, v12, :cond_b

    const-string/jumbo v12, "us"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    sget-object v12, Lsun/net/RegisteredDomain;->usStateSet:Ljava/util/Set;

    invoke-interface {v12, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    add-int/lit8 v12, v10, 0x1

    invoke-virtual {p0, v12, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v12, v2, 0x1

    invoke-virtual {p0, v12, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v12, "k12"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    const-string/jumbo v12, "ma"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    const-string/jumbo v12, "chtr"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_9

    const-string/jumbo v12, "paroch"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    :cond_9
    add-int/lit8 v12, v1, 0x1

    invoke-virtual {p0, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    return-object v12

    :cond_a
    const-string/jumbo v12, "pvt"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    add-int/lit8 v12, v1, 0x1

    invoke-virtual {p0, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    return-object v12

    :cond_b
    add-int/lit8 v12, v10, 0x1

    invoke-virtual {p0, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    const/4 v12, -0x1

    if-eq v10, v12, :cond_12

    sget-object v12, Lsun/net/RegisteredDomain;->top3Map:Ljava/util/Map;

    invoke-interface {v12, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Set;

    if-eqz v8, :cond_c

    invoke-interface {v8, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_12

    add-int/lit8 v12, v2, 0x1

    invoke-virtual {p0, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    return-object v12

    :cond_c
    const-string/jumbo v12, "us"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    sget-object v12, Lsun/net/RegisteredDomain;->usStateSet:Ljava/util/Set;

    invoke-interface {v12, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    add-int/lit8 v12, v10, 0x1

    invoke-virtual {p0, v12, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    sget-object v12, Lsun/net/RegisteredDomain;->usSubStateSet:Ljava/util/Set;

    invoke-interface {v12, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    const/4 v12, -0x1

    if-eq v2, v12, :cond_d

    add-int/lit8 v12, v2, 0x1

    invoke-virtual {p0, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_d
    return-object p0

    :cond_e
    add-int/lit8 v12, v10, 0x1

    invoke-virtual {p0, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    return-object v12

    :cond_f
    const-string/jumbo v12, "uk"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_10

    const-string/jumbo v12, "sch"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_12

    add-int/lit8 v12, v2, 0x1

    invoke-virtual {p0, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    return-object v12

    :cond_10
    const-string/jumbo v12, "jp"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_12

    sget-object v12, Lsun/net/RegisteredDomain;->jpSet:Ljava/util/Set;

    invoke-interface {v12, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_12

    sget-object v12, Lsun/net/RegisteredDomain;->jp2Set:Ljava/util/Set;

    invoke-interface {v12, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_11

    add-int/lit8 v12, v10, 0x1

    invoke-virtual {p0, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    return-object v12

    :cond_11
    add-int/lit8 v12, v2, 0x1

    invoke-virtual {p0, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    return-object v12

    :cond_12
    sget-object v12, Lsun/net/RegisteredDomain;->jp2Set:Ljava/util/Set;

    invoke-interface {v12, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_13

    add-int/lit8 v12, v10, 0x1

    invoke-virtual {p0, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    return-object v12

    :cond_13
    sget-object v12, Lsun/net/RegisteredDomain;->topMap:Ljava/util/Map;

    invoke-interface {v12, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Set;

    if-eqz v11, :cond_18

    invoke-interface {v11, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_14

    add-int/lit8 v12, v10, 0x1

    invoke-virtual {p0, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    return-object v12

    :cond_14
    const-string/jumbo v12, "us"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_15

    sget-object v12, Lsun/net/RegisteredDomain;->usStateSet:Ljava/util/Set;

    invoke-interface {v12, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_16

    :cond_15
    const-string/jumbo v12, "jp"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_17

    sget-object v12, Lsun/net/RegisteredDomain;->jpSet:Ljava/util/Set;

    invoke-interface {v12, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    :goto_0
    if-nez v12, :cond_2b

    add-int/lit8 v12, v7, 0x1

    invoke-virtual {p0, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    return-object v12

    :cond_16
    const/4 v12, 0x1

    goto :goto_0

    :cond_17
    const/4 v12, 0x0

    goto :goto_0

    :cond_18
    sget-object v12, Lsun/net/RegisteredDomain;->top2Set:Ljava/util/Set;

    invoke-interface {v12, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1a

    const-string/jumbo v12, "gov"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_19

    add-int/lit8 v12, v10, 0x1

    invoke-virtual {p0, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    return-object v12

    :cond_19
    add-int/lit8 v12, v7, 0x1

    invoke-virtual {p0, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    return-object v12

    :cond_1a
    sget-object v12, Lsun/net/RegisteredDomain;->top3Set:Ljava/util/Set;

    invoke-interface {v12, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_27

    const-string/jumbo v12, "ad"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1b

    const-string/jumbo v12, "nom"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_25

    :cond_1b
    const-string/jumbo v12, "aw"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1c

    const-string/jumbo v12, "com"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_25

    :cond_1c
    const-string/jumbo v12, "be"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1d

    const-string/jumbo v12, "ac"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_25

    :cond_1d
    const-string/jumbo v12, "cl"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1e

    const-string/jumbo v12, "gov"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_25

    :cond_1e
    const-string/jumbo v12, "cl"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1f

    const-string/jumbo v12, "gob"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_25

    :cond_1f
    const-string/jumbo v12, "fi"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_20

    const-string/jumbo v12, "aland"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_25

    :cond_20
    const-string/jumbo v12, "int"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_21

    const-string/jumbo v12, "eu"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_25

    :cond_21
    const-string/jumbo v12, "io"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_22

    const-string/jumbo v12, "com"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_25

    :cond_22
    const-string/jumbo v12, "mc"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_23

    const-string/jumbo v12, "tm"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_25

    :cond_23
    const-string/jumbo v12, "mc"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_24

    const-string/jumbo v12, "asso"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_25

    :cond_24
    const-string/jumbo v12, "vc"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_26

    const-string/jumbo v12, "com"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_26

    :cond_25
    add-int/lit8 v12, v10, 0x1

    invoke-virtual {p0, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    return-object v12

    :cond_26
    add-int/lit8 v12, v7, 0x1

    invoke-virtual {p0, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    return-object v12

    :cond_27
    sget-object v12, Lsun/net/RegisteredDomain;->top4Set:Ljava/util/Set;

    invoke-interface {v12, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2a

    const-string/jumbo v12, "com"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_28

    const-string/jumbo v12, "edu"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_28

    const-string/jumbo v12, "gov"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_28

    const-string/jumbo v12, "net"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_28

    const-string/jumbo v12, "org"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_29

    :cond_28
    add-int/lit8 v12, v10, 0x1

    invoke-virtual {p0, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    return-object v12

    :cond_29
    add-int/lit8 v12, v7, 0x1

    invoke-virtual {p0, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    return-object v12

    :cond_2a
    sget-object v12, Lsun/net/RegisteredDomain;->top5Set:Ljava/util/Set;

    invoke-interface {v12, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2b

    add-int/lit8 v12, v10, 0x1

    invoke-virtual {p0, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    return-object v12

    :cond_2b
    const-string/jumbo v12, "tr"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2e

    const-string/jumbo v12, "nic"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2c

    const-string/jumbo v12, "tsk"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2d

    :cond_2c
    add-int/lit8 v12, v7, 0x1

    invoke-virtual {p0, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    return-object v12

    :cond_2d
    add-int/lit8 v12, v10, 0x1

    invoke-virtual {p0, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    return-object v12

    :cond_2e
    const-string/jumbo v12, "uk"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_30

    sget-object v12, Lsun/net/RegisteredDomain;->ukSet:Ljava/util/Set;

    invoke-interface {v12, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2f

    add-int/lit8 v12, v10, 0x1

    invoke-virtual {p0, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    return-object v12

    :cond_2f
    add-int/lit8 v12, v7, 0x1

    invoke-virtual {p0, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    return-object v12

    :cond_30
    const-string/jumbo v12, "ar"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_32

    sget-object v12, Lsun/net/RegisteredDomain;->arSet:Ljava/util/Set;

    invoke-interface {v12, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_31

    add-int/lit8 v12, v10, 0x1

    invoke-virtual {p0, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    return-object v12

    :cond_31
    add-int/lit8 v12, v7, 0x1

    invoke-virtual {p0, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    return-object v12

    :cond_32
    const-string/jumbo v12, "om"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_34

    sget-object v12, Lsun/net/RegisteredDomain;->omSet:Ljava/util/Set;

    invoke-interface {v12, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_33

    add-int/lit8 v12, v10, 0x1

    invoke-virtual {p0, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    return-object v12

    :cond_33
    add-int/lit8 v12, v7, 0x1

    invoke-virtual {p0, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    return-object v12

    :cond_34
    sget-object v12, Lsun/net/RegisteredDomain;->top1Set:Ljava/util/Set;

    invoke-interface {v12, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_35

    add-int/lit8 v12, v7, 0x1

    invoke-virtual {p0, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    return-object v12

    :cond_35
    return-object p0
.end method
