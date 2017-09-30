.class public Lcom/yulore/sdk/ivr/a/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yulore/sdk/ivr/a/a$a;
    }
.end annotation


# instance fields
.field private a:[Ljava/lang/String;

.field private b:[Ljava/lang/String;

.field private c:[Ljava/lang/String;

.field private d:Landroid/content/Context;

.field private e:Ljava/io/File;

.field private f:Ljava/lang/String;

.field private g:Ljava/io/File;

.field private h:I

.field private i:Lcom/yulore/sdk/ivr/b;


# direct methods
.method private constructor <init>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x16b

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u5317\u4eac"

    aput-object v1, v0, v3

    const-string v1, "\u5929\u6d25"

    aput-object v1, v0, v4

    const-string v1, "\u627f\u5fb7"

    aput-object v1, v0, v5

    const-string v1, "\u4fdd\u5b9a"

    aput-object v1, v0, v6

    const-string v1, "\u79e6\u7687\u5c9b"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "\u5f20\u5bb6\u53e3"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u90a2\u53f0"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u6ca7\u5dde"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u77f3\u5bb6\u5e84"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\u5510\u5c71"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\u8861\u6c34"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\u90af\u90f8"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\u5eca\u574a"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "\u592a\u539f"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "\u4e34\u6c7e"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "\u5927\u540c"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "\u6714\u5dde"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "\u5415\u6881"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "\u664b\u4e2d"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "\u664b\u57ce"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "\u8fd0\u57ce"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "\u957f\u6cbb"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "\u5ffb\u5dde"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "\u9633\u6cc9"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "\u5df4\u5f66\u6dd6\u5c14"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "\u547c\u4f26\u8d1d\u5c14"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "\u547c\u548c\u6d69\u7279"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "\u8d64\u5cf0"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "\u9102\u5c14\u591a\u65af"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "\u5305\u5934"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "\u963f\u62c9\u5584"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "\u9521\u6797\u90ed\u52d2"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "\u4e4c\u6d77"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "\u5174\u5b89\u76df"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "\u4e4c\u5170\u5bdf\u5e03"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "\u901a\u8fbd"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "\u672c\u6eaa"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "\u94c1\u5cad"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "\u8fbd\u9633"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "\u9526\u5dde"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "\u629a\u987a"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "\u846b\u82a6\u5c9b"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "\u8425\u53e3"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "\u4e39\u4e1c"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "\u6c88\u9633"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "\u978d\u5c71"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "\u5927\u8fde"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "\u961c\u65b0"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "\u671d\u9633"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "\u76d8\u9526"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "\u5409\u6797"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "\u677e\u539f"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "\u957f\u6625"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "\u767d\u5c71"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "\u5ef6\u8fb9"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "\u901a\u5316"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "\u8fbd\u6e90"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "\u767d\u57ce"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "\u56db\u5e73"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "\u9f50\u9f50\u54c8\u5c14"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "\u4f73\u6728\u65af"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "\u5927\u5e86"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "\u7261\u4e39\u6c5f"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "\u9ed1\u6cb3"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "\u54c8\u5c14\u6ee8"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "\u5927\u5174\u5b89\u5cad"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "\u4f0a\u6625"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "\u7ee5\u5316"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "\u9e64\u5c97"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "\u53cc\u9e2d\u5c71"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "\u4e03\u53f0\u6cb3"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "\u9e21\u897f"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "\u4e0a\u6d77"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "\u626c\u5dde"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "\u82cf\u5dde"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "\u5e38\u5dde"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "\u5357\u901a"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "\u6cf0\u5dde"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "\u5bbf\u8fc1"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "\u76d0\u57ce"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "\u9547\u6c5f"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "\u5f90\u5dde"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "\u65e0\u9521"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "\u8fde\u4e91\u6e2f"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "\u5357\u4eac"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "\u6dee\u5b89"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "\u5b81\u6ce2"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "\u8862\u5dde"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "\u676d\u5dde"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "\u5609\u5174"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "\u4e3d\u6c34"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "\u91d1\u534e"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "\u6e56\u5dde"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, "\u821f\u5c71"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "\u53f0\u5dde"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "\u7ecd\u5174"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "\u6e29\u5dde"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "\u6c60\u5dde"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "\u94dc\u9675"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "\u6ec1\u5dde"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, "\u868c\u57e0"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, "\u6dee\u5317"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "\u6dee\u5357"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v2, "\u4eb3\u5dde"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string v2, "\u961c\u9633"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, "\u5bbf\u5dde"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string v2, "\u5b89\u5e86"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string v2, "\u9a6c\u978d\u5c71"

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-string v2, "\u5ba3\u57ce"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-string v2, "\u516d\u5b89"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const-string v2, "\u829c\u6e56"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string v2, "\u9ec4\u5c71"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-string v2, "\u5408\u80a5"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const-string v2, "\u53a6\u95e8"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-string v2, "\u8386\u7530"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-string v2, "\u4e09\u660e"

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-string v2, "\u9f99\u5ca9"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-string v2, "\u798f\u5dde"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-string v2, "\u6cc9\u5dde"

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const-string v2, "\u5357\u5e73"

    aput-object v2, v0, v1

    const/16 v1, 0x78

    const-string v2, "\u5b81\u5fb7"

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const-string v2, "\u6f33\u5dde"

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    const-string v2, "\u5b9c\u6625"

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    const-string v2, "\u4e5d\u6c5f"

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    const-string v2, "\u9e70\u6f6d"

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    const-string v2, "\u5357\u660c"

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    const-string v2, "\u65b0\u4f59"

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    const-string v2, "\u629a\u5dde"

    aput-object v2, v0, v1

    const/16 v1, 0x80

    const-string v2, "\u5409\u5b89"

    aput-object v2, v0, v1

    const/16 v1, 0x81

    const-string v2, "\u4e0a\u9976"

    aput-object v2, v0, v1

    const/16 v1, 0x82

    const-string v2, "\u8d63\u5dde"

    aput-object v2, v0, v1

    const/16 v1, 0x83

    const-string v2, "\u666f\u5fb7\u9547"

    aput-object v2, v0, v1

    const/16 v1, 0x84

    const-string v2, "\u840d\u4e61"

    aput-object v2, v0, v1

    const/16 v1, 0x85

    const-string v2, "\u6dc4\u535a"

    aput-object v2, v0, v1

    const/16 v1, 0x86

    const-string v2, "\u4e1c\u8425"

    aput-object v2, v0, v1

    const/16 v1, 0x87

    const-string v2, "\u6d4e\u5b81"

    aput-object v2, v0, v1

    const/16 v1, 0x88

    const-string v2, "\u5fb7\u5dde"

    aput-object v2, v0, v1

    const/16 v1, 0x89

    const-string v2, "\u83cf\u6cfd"

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    const-string v2, "\u9752\u5c9b"

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    const-string v2, "\u6d4e\u5357"

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    const-string v2, "\u6ee8\u5dde"

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    const-string v2, "\u70df\u53f0"

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    const-string v2, "\u804a\u57ce"

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    const-string v2, "\u65e5\u7167"

    aput-object v2, v0, v1

    const/16 v1, 0x90

    const-string v2, "\u6cf0\u5b89"

    aput-object v2, v0, v1

    const/16 v1, 0x91

    const-string v2, "\u67a3\u5e84"

    aput-object v2, v0, v1

    const/16 v1, 0x92

    const-string v2, "\u4e34\u6c82"

    aput-object v2, v0, v1

    const/16 v1, 0x93

    const-string v2, "\u6f4d\u574a"

    aput-object v2, v0, v1

    const/16 v1, 0x94

    const-string v2, "\u5a01\u6d77"

    aput-object v2, v0, v1

    const/16 v1, 0x95

    const-string v2, "\u83b1\u829c"

    aput-object v2, v0, v1

    const/16 v1, 0x96

    const-string v2, "\u5e73\u9876\u5c71"

    aput-object v2, v0, v1

    const/16 v1, 0x97

    const-string v2, "\u9a7b\u9a6c\u5e97"

    aput-object v2, v0, v1

    const/16 v1, 0x98

    const-string v2, "\u4e09\u95e8\u5ce1"

    aput-object v2, v0, v1

    const/16 v1, 0x99

    const-string v2, "\u9e64\u58c1"

    aput-object v2, v0, v1

    const/16 v1, 0x9a

    const-string v2, "\u5357\u9633"

    aput-object v2, v0, v1

    const/16 v1, 0x9b

    const-string v2, "\u5468\u53e3"

    aput-object v2, v0, v1

    const/16 v1, 0x9c

    const-string v2, "\u6d1b\u9633"

    aput-object v2, v0, v1

    const/16 v1, 0x9d

    const-string v2, "\u65b0\u4e61"

    aput-object v2, v0, v1

    const/16 v1, 0x9e

    const-string v2, "\u90d1\u5dde"

    aput-object v2, v0, v1

    const/16 v1, 0x9f

    const-string v2, "\u6fee\u9633"

    aput-object v2, v0, v1

    const/16 v1, 0xa0

    const-string v2, "\u5546\u4e18"

    aput-object v2, v0, v1

    const/16 v1, 0xa1

    const-string v2, "\u6f2f\u6cb3"

    aput-object v2, v0, v1

    const/16 v1, 0xa2

    const-string v2, "\u6d4e\u6e90"

    aput-object v2, v0, v1

    const/16 v1, 0xa3

    const-string v2, "\u5f00\u5c01"

    aput-object v2, v0, v1

    const/16 v1, 0xa4

    const-string v2, "\u4fe1\u9633"

    aput-object v2, v0, v1

    const/16 v1, 0xa5

    const-string v2, "\u8bb8\u660c"

    aput-object v2, v0, v1

    const/16 v1, 0xa6

    const-string v2, "\u5b89\u9633"

    aput-object v2, v0, v1

    const/16 v1, 0xa7

    const-string v2, "\u7126\u4f5c"

    aput-object v2, v0, v1

    const/16 v1, 0xa8

    const-string v2, "\u5b5d\u611f"

    aput-object v2, v0, v1

    const/16 v1, 0xa9

    const-string v2, "\u8346\u5dde"

    aput-object v2, v0, v1

    const/16 v1, 0xaa

    const-string v2, "\u6069\u65bd"

    aput-object v2, v0, v1

    const/16 v1, 0xab

    const-string v2, "\u4ed9\u6843"

    aput-object v2, v0, v1

    const/16 v1, 0xac

    const-string v2, "\u9ec4\u5188"

    aput-object v2, v0, v1

    const/16 v1, 0xad

    const-string v2, "\u8944\u9633"

    aput-object v2, v0, v1

    const/16 v1, 0xae

    const-string v2, "\u8346\u95e8"

    aput-object v2, v0, v1

    const/16 v1, 0xaf

    const-string v2, "\u795e\u519c\u67b6\u6797\u533a"

    aput-object v2, v0, v1

    const/16 v1, 0xb0

    const-string v2, "\u5929\u95e8"

    aput-object v2, v0, v1

    const/16 v1, 0xb1

    const-string v2, "\u6f5c\u6c5f"

    aput-object v2, v0, v1

    const/16 v1, 0xb2

    const-string v2, "\u9ec4\u77f3"

    aput-object v2, v0, v1

    const/16 v1, 0xb3

    const-string v2, "\u5b9c\u660c"

    aput-object v2, v0, v1

    const/16 v1, 0xb4

    const-string v2, "\u54b8\u5b81"

    aput-object v2, v0, v1

    const/16 v1, 0xb5

    const-string v2, "\u9102\u5dde"

    aput-object v2, v0, v1

    const/16 v1, 0xb6

    const-string v2, "\u6b66\u6c49"

    aput-object v2, v0, v1

    const/16 v1, 0xb7

    const-string v2, "\u5341\u5830"

    aput-object v2, v0, v1

    const/16 v1, 0xb8

    const-string v2, "\u968f\u5dde"

    aput-object v2, v0, v1

    const/16 v1, 0xb9

    const-string v2, "\u682a\u6d32"

    aput-object v2, v0, v1

    const/16 v1, 0xba

    const-string v2, "\u8861\u9633"

    aput-object v2, v0, v1

    const/16 v1, 0xbb

    const-string v2, "\u90b5\u9633"

    aput-object v2, v0, v1

    const/16 v1, 0xbc

    const-string v2, "\u5f20\u5bb6\u754c"

    aput-object v2, v0, v1

    const/16 v1, 0xbd

    const-string v2, "\u957f\u6c99"

    aput-object v2, v0, v1

    const/16 v1, 0xbe

    const-string v2, "\u90f4\u5dde"

    aput-object v2, v0, v1

    const/16 v1, 0xbf

    const-string v2, "\u76ca\u9633"

    aput-object v2, v0, v1

    const/16 v1, 0xc0

    const-string v2, "\u5cb3\u9633"

    aput-object v2, v0, v1

    const/16 v1, 0xc1

    const-string v2, "\u6e58\u897f"

    aput-object v2, v0, v1

    const/16 v1, 0xc2

    const-string v2, "\u6c38\u5dde"

    aput-object v2, v0, v1

    const/16 v1, 0xc3

    const-string v2, "\u6000\u5316"

    aput-object v2, v0, v1

    const/16 v1, 0xc4

    const-string v2, "\u5e38\u5fb7"

    aput-object v2, v0, v1

    const/16 v1, 0xc5

    const-string v2, "\u5a04\u5e95"

    aput-object v2, v0, v1

    const/16 v1, 0xc6

    const-string v2, "\u6e58\u6f6d"

    aput-object v2, v0, v1

    const/16 v1, 0xc7

    const-string v2, "\u4e91\u6d6e"

    aput-object v2, v0, v1

    const/16 v1, 0xc8

    const-string v2, "\u6c55\u5934"

    aput-object v2, v0, v1

    const/16 v1, 0xc9

    const-string v2, "\u6e5b\u6c5f"

    aput-object v2, v0, v1

    const/16 v1, 0xca

    const-string v2, "\u6c55\u5c3e"

    aput-object v2, v0, v1

    const/16 v1, 0xcb

    const-string v2, "\u73e0\u6d77"

    aput-object v2, v0, v1

    const/16 v1, 0xcc

    const-string v2, "\u6f6e\u5dde"

    aput-object v2, v0, v1

    const/16 v1, 0xcd

    const-string v2, "\u6885\u5dde"

    aput-object v2, v0, v1

    const/16 v1, 0xce

    const-string v2, "\u6c5f\u95e8"

    aput-object v2, v0, v1

    const/16 v1, 0xcf

    const-string v2, "\u6cb3\u6e90"

    aput-object v2, v0, v1

    const/16 v1, 0xd0

    const-string v2, "\u8302\u540d"

    aput-object v2, v0, v1

    const/16 v1, 0xd1

    const-string v2, "\u6e05\u8fdc"

    aput-object v2, v0, v1

    const/16 v1, 0xd2

    const-string v2, "\u6df1\u5733"

    aput-object v2, v0, v1

    const/16 v1, 0xd3

    const-string v2, "\u9633\u6c5f"

    aput-object v2, v0, v1

    const/16 v1, 0xd4

    const-string v2, "\u5e7f\u5dde"

    aput-object v2, v0, v1

    const/16 v1, 0xd5

    const-string v2, "\u63ed\u9633"

    aput-object v2, v0, v1

    const/16 v1, 0xd6

    const-string v2, "\u60e0\u5dde"

    aput-object v2, v0, v1

    const/16 v1, 0xd7

    const-string v2, "\u4e1c\u839e"

    aput-object v2, v0, v1

    const/16 v1, 0xd8

    const-string v2, "\u4f5b\u5c71"

    aput-object v2, v0, v1

    const/16 v1, 0xd9

    const-string v2, "\u4e2d\u5c71"

    aput-object v2, v0, v1

    const/16 v1, 0xda

    const-string v2, "\u8087\u5e86"

    aput-object v2, v0, v1

    const/16 v1, 0xdb

    const-string v2, "\u97f6\u5173"

    aput-object v2, v0, v1

    const/16 v1, 0xdc

    const-string v2, "\u5d07\u5de6"

    aput-object v2, v0, v1

    const/16 v1, 0xdd

    const-string v2, "\u6765\u5bbe"

    aput-object v2, v0, v1

    const/16 v1, 0xde

    const-string v2, "\u8d3a\u5dde"

    aput-object v2, v0, v1

    const/16 v1, 0xdf

    const-string v2, "\u8d35\u6e2f"

    aput-object v2, v0, v1

    const/16 v1, 0xe0

    const-string v2, "\u7389\u6797"

    aput-object v2, v0, v1

    const/16 v1, 0xe1

    const-string v2, "\u67f3\u5dde"

    aput-object v2, v0, v1

    const/16 v1, 0xe2

    const-string v2, "\u94a6\u5dde"

    aput-object v2, v0, v1

    const/16 v1, 0xe3

    const-string v2, "\u5317\u6d77"

    aput-object v2, v0, v1

    const/16 v1, 0xe4

    const-string v2, "\u5357\u5b81"

    aput-object v2, v0, v1

    const/16 v1, 0xe5

    const-string v2, "\u68a7\u5dde"

    aput-object v2, v0, v1

    const/16 v1, 0xe6

    const-string v2, "\u6842\u6797"

    aput-object v2, v0, v1

    const/16 v1, 0xe7

    const-string v2, "\u767e\u8272"

    aput-object v2, v0, v1

    const/16 v1, 0xe8

    const-string v2, "\u6cb3\u6c60"

    aput-object v2, v0, v1

    const/16 v1, 0xe9

    const-string v2, "\u9632\u57ce\u6e2f"

    aput-object v2, v0, v1

    const/16 v1, 0xea

    const-string v2, "\u9675\u6c34"

    aput-object v2, v0, v1

    const/16 v1, 0xeb

    const-string v2, "\u510b\u5dde"

    aput-object v2, v0, v1

    const/16 v1, 0xec

    const-string v2, "\u767d\u6c99"

    aput-object v2, v0, v1

    const/16 v1, 0xed

    const-string v2, "\u743c\u6d77"

    aput-object v2, v0, v1

    const/16 v1, 0xee

    const-string v2, "\u4fdd\u4ead"

    aput-object v2, v0, v1

    const/16 v1, 0xef

    const-string v2, "\u660c\u6c5f"

    aput-object v2, v0, v1

    const/16 v1, 0xf0

    const-string v2, "\u4e50\u4e1c"

    aput-object v2, v0, v1

    const/16 v1, 0xf1

    const-string v2, "\u5b9a\u5b89\u53bf"

    aput-object v2, v0, v1

    const/16 v1, 0xf2

    const-string v2, "\u743c\u4e2d"

    aput-object v2, v0, v1

    const/16 v1, 0xf3

    const-string v2, "\u4e34\u9ad8\u53bf"

    aput-object v2, v0, v1

    const/16 v1, 0xf4

    const-string v2, "\u4e94\u6307\u5c71"

    aput-object v2, v0, v1

    const/16 v1, 0xf5

    const-string v2, "\u5c6f\u660c\u53bf"

    aput-object v2, v0, v1

    const/16 v1, 0xf6

    const-string v2, "\u4e09\u6c99"

    aput-object v2, v0, v1

    const/16 v1, 0xf7

    const-string v2, "\u4e1c\u65b9"

    aput-object v2, v0, v1

    const/16 v1, 0xf8

    const-string v2, "\u6f84\u8fc8\u53bf"

    aput-object v2, v0, v1

    const/16 v1, 0xf9

    const-string v2, "\u6587\u660c"

    aput-object v2, v0, v1

    const/16 v1, 0xfa

    const-string v2, "\u4e07\u5b81"

    aput-object v2, v0, v1

    const/16 v1, 0xfb

    const-string v2, "\u4e09\u4e9a"

    aput-object v2, v0, v1

    const/16 v1, 0xfc

    const-string v2, "\u6d77\u53e3"

    aput-object v2, v0, v1

    const/16 v1, 0xfd

    const-string v2, "\u91cd\u5e86"

    aput-object v2, v0, v1

    const/16 v1, 0xfe

    const-string v2, "\u7518\u5b5c"

    aput-object v2, v0, v1

    const/16 v1, 0xff

    const-string v2, "\u6cf8\u5dde"

    aput-object v2, v0, v1

    const/16 v1, 0x100

    const-string v2, "\u5185\u6c5f"

    aput-object v2, v0, v1

    const/16 v1, 0x101

    const-string v2, "\u5df4\u4e2d"

    aput-object v2, v0, v1

    const/16 v1, 0x102

    const-string v2, "\u6210\u90fd"

    aput-object v2, v0, v1

    const/16 v1, 0x103

    const-string v2, "\u4e50\u5c71"

    aput-object v2, v0, v1

    const/16 v1, 0x104

    const-string v2, "\u7709\u5c71"

    aput-object v2, v0, v1

    const/16 v1, 0x105

    const-string v2, "\u5e7f\u5143"

    aput-object v2, v0, v1

    const/16 v1, 0x106

    const-string v2, "\u7ef5\u9633"

    aput-object v2, v0, v1

    const/16 v1, 0x107

    const-string v2, "\u6500\u679d\u82b1"

    aput-object v2, v0, v1

    const/16 v1, 0x108

    const-string v2, "\u5e7f\u5b89"

    aput-object v2, v0, v1

    const/16 v1, 0x109

    const-string v2, "\u8fbe\u5dde"

    aput-object v2, v0, v1

    const/16 v1, 0x10a

    const-string v2, "\u5357\u5145"

    aput-object v2, v0, v1

    const/16 v1, 0x10b

    const-string v2, "\u5b9c\u5bbe"

    aput-object v2, v0, v1

    const/16 v1, 0x10c

    const-string v2, "\u51c9\u5c71"

    aput-object v2, v0, v1

    const/16 v1, 0x10d

    const-string v2, "\u8d44\u9633"

    aput-object v2, v0, v1

    const/16 v1, 0x10e

    const-string v2, "\u5fb7\u9633"

    aput-object v2, v0, v1

    const/16 v1, 0x10f

    const-string v2, "\u81ea\u8d21"

    aput-object v2, v0, v1

    const/16 v1, 0x110

    const-string v2, "\u963f\u575d"

    aput-object v2, v0, v1

    const/16 v1, 0x111

    const-string v2, "\u96c5\u5b89"

    aput-object v2, v0, v1

    const/16 v1, 0x112

    const-string v2, "\u9042\u5b81"

    aput-object v2, v0, v1

    const/16 v1, 0x113

    const-string v2, "\u9075\u4e49"

    aput-object v2, v0, v1

    const/16 v1, 0x114

    const-string v2, "\u6bd5\u8282"

    aput-object v2, v0, v1

    const/16 v1, 0x115

    const-string v2, "\u9ed4\u5357"

    aput-object v2, v0, v1

    const/16 v1, 0x116

    const-string v2, "\u9ed4\u897f\u5357"

    aput-object v2, v0, v1

    const/16 v1, 0x117

    const-string v2, "\u94dc\u4ec1"

    aput-object v2, v0, v1

    const/16 v1, 0x118

    const-string v2, "\u516d\u76d8\u6c34"

    aput-object v2, v0, v1

    const/16 v1, 0x119

    const-string v2, "\u8d35\u9633"

    aput-object v2, v0, v1

    const/16 v1, 0x11a

    const-string v2, "\u9ed4\u4e1c\u5357"

    aput-object v2, v0, v1

    const/16 v1, 0x11b

    const-string v2, "\u5b89\u987a"

    aput-object v2, v0, v1

    const/16 v1, 0x11c

    const-string v2, "\u8fea\u5e86"

    aput-object v2, v0, v1

    const/16 v1, 0x11d

    const-string v2, "\u6606\u660e"

    aput-object v2, v0, v1

    const/16 v1, 0x11e

    const-string v2, "\u6012\u6c5f"

    aput-object v2, v0, v1

    const/16 v1, 0x11f

    const-string v2, "\u66f2\u9756"

    aput-object v2, v0, v1

    const/16 v1, 0x120

    const-string v2, "\u7ea2\u6cb3"

    aput-object v2, v0, v1

    const/16 v1, 0x121

    const-string v2, "\u4e34\u6ca7"

    aput-object v2, v0, v1

    const/16 v1, 0x122

    const-string v2, "\u5927\u7406"

    aput-object v2, v0, v1

    const/16 v1, 0x123

    const-string v2, "\u666e\u6d31"

    aput-object v2, v0, v1

    const/16 v1, 0x124

    const-string v2, "\u5fb7\u5b8f"

    aput-object v2, v0, v1

    const/16 v1, 0x125

    const-string v2, "\u4e3d\u6c5f"

    aput-object v2, v0, v1

    const/16 v1, 0x126

    const-string v2, "\u7389\u6eaa"

    aput-object v2, v0, v1

    const/16 v1, 0x127

    const-string v2, "\u662d\u901a"

    aput-object v2, v0, v1

    const/16 v1, 0x128

    const-string v2, "\u4fdd\u5c71"

    aput-object v2, v0, v1

    const/16 v1, 0x129

    const-string v2, "\u897f\u53cc\u7248\u7eb3"

    aput-object v2, v0, v1

    const/16 v1, 0x12a

    const-string v2, "\u695a\u96c4"

    aput-object v2, v0, v1

    const/16 v1, 0x12b

    const-string v2, "\u6587\u5c71"

    aput-object v2, v0, v1

    const/16 v1, 0x12c

    const-string v2, "\u5c71\u5357"

    aput-object v2, v0, v1

    const/16 v1, 0x12d

    const-string v2, "\u65e5\u5580\u5219"

    aput-object v2, v0, v1

    const/16 v1, 0x12e

    const-string v2, "\u660c\u90fd"

    aput-object v2, v0, v1

    const/16 v1, 0x12f

    const-string v2, "\u6797\u829d"

    aput-object v2, v0, v1

    const/16 v1, 0x130

    const-string v2, "\u963f\u91cc"

    aput-object v2, v0, v1

    const/16 v1, 0x131

    const-string v2, "\u62c9\u8428"

    aput-object v2, v0, v1

    const/16 v1, 0x132

    const-string v2, "\u90a3\u66f2"

    aput-object v2, v0, v1

    const/16 v1, 0x133

    const-string v2, "\u5b9d\u9e21"

    aput-object v2, v0, v1

    const/16 v1, 0x134

    const-string v2, "\u54b8\u9633"

    aput-object v2, v0, v1

    const/16 v1, 0x135

    const-string v2, "\u6e2d\u5357"

    aput-object v2, v0, v1

    const/16 v1, 0x136

    const-string v2, "\u5546\u6d1b"

    aput-object v2, v0, v1

    const/16 v1, 0x137

    const-string v2, "\u897f\u5b89"

    aput-object v2, v0, v1

    const/16 v1, 0x138

    const-string v2, "\u94dc\u5ddd"

    aput-object v2, v0, v1

    const/16 v1, 0x139

    const-string v2, "\u6c49\u4e2d"

    aput-object v2, v0, v1

    const/16 v1, 0x13a

    const-string v2, "\u6986\u6797"

    aput-object v2, v0, v1

    const/16 v1, 0x13b

    const-string v2, "\u5ef6\u5b89"

    aput-object v2, v0, v1

    const/16 v1, 0x13c

    const-string v2, "\u5b89\u5eb7"

    aput-object v2, v0, v1

    const/16 v1, 0x13d

    const-string v2, "\u9647\u5357"

    aput-object v2, v0, v1

    const/16 v1, 0x13e

    const-string v2, "\u91d1\u660c"

    aput-object v2, v0, v1

    const/16 v1, 0x13f

    const-string v2, "\u7518\u5357"

    aput-object v2, v0, v1

    const/16 v1, 0x140

    const-string v2, "\u5b9a\u897f"

    aput-object v2, v0, v1

    const/16 v1, 0x141

    const-string v2, "\u5e86\u9633"

    aput-object v2, v0, v1

    const/16 v1, 0x142

    const-string v2, "\u5609\u5cea\u5173"

    aput-object v2, v0, v1

    const/16 v1, 0x143

    const-string v2, "\u5170\u5dde"

    aput-object v2, v0, v1

    const/16 v1, 0x144

    const-string v2, "\u9152\u6cc9"

    aput-object v2, v0, v1

    const/16 v1, 0x145

    const-string v2, "\u5929\u6c34"

    aput-object v2, v0, v1

    const/16 v1, 0x146

    const-string v2, "\u767d\u94f6"

    aput-object v2, v0, v1

    const/16 v1, 0x147

    const-string v2, "\u5e73\u51c9"

    aput-object v2, v0, v1

    const/16 v1, 0x148

    const-string v2, "\u5f20\u6396"

    aput-object v2, v0, v1

    const/16 v1, 0x149

    const-string v2, "\u6b66\u5a01"

    aput-object v2, v0, v1

    const/16 v1, 0x14a

    const-string v2, "\u4e34\u590f"

    aput-object v2, v0, v1

    const/16 v1, 0x14b

    const-string v2, "\u6d77\u5357"

    aput-object v2, v0, v1

    const/16 v1, 0x14c

    const-string v2, "\u7389\u6811"

    aput-object v2, v0, v1

    const/16 v1, 0x14d

    const-string v2, "\u679c\u6d1b"

    aput-object v2, v0, v1

    const/16 v1, 0x14e

    const-string v2, "\u6d77\u5317"

    aput-object v2, v0, v1

    const/16 v1, 0x14f

    const-string v2, "\u9ec4\u5357"

    aput-object v2, v0, v1

    const/16 v1, 0x150

    const-string v2, "\u6d77\u4e1c"

    aput-object v2, v0, v1

    const/16 v1, 0x151

    const-string v2, "\u897f\u5b81"

    aput-object v2, v0, v1

    const/16 v1, 0x152

    const-string v2, "\u6d77\u897f"

    aput-object v2, v0, v1

    const/16 v1, 0x153

    const-string v2, "\u56fa\u539f"

    aput-object v2, v0, v1

    const/16 v1, 0x154

    const-string v2, "\u5434\u5fe0"

    aput-object v2, v0, v1

    const/16 v1, 0x155

    const-string v2, "\u77f3\u5634\u5c71"

    aput-object v2, v0, v1

    const/16 v1, 0x156

    const-string v2, "\u94f6\u5ddd"

    aput-object v2, v0, v1

    const/16 v1, 0x157

    const-string v2, "\u4e2d\u536b"

    aput-object v2, v0, v1

    const/16 v1, 0x158

    const-string v2, "\u4f0a\u7281"

    aput-object v2, v0, v1

    const/16 v1, 0x159

    const-string v2, "\u4e4c\u9c81\u6728\u9f50"

    aput-object v2, v0, v1

    const/16 v1, 0x15a

    const-string v2, "\u963f\u62c9\u5c14"

    aput-object v2, v0, v1

    const/16 v1, 0x15b

    const-string v2, "\u5580\u4ec0"

    aput-object v2, v0, v1

    const/16 v1, 0x15c

    const-string v2, "\u514b\u5b5c\u52d2\u82cf"

    aput-object v2, v0, v1

    const/16 v1, 0x15d

    const-string v2, "\u54c8\u5bc6"

    aput-object v2, v0, v1

    const/16 v1, 0x15e

    const-string v2, "\u56fe\u6728\u8212\u514b"

    aput-object v2, v0, v1

    const/16 v1, 0x15f

    const-string v2, "\u660c\u5409"

    aput-object v2, v0, v1

    const/16 v1, 0x160

    const-string v2, "\u5410\u9c81\u756a"

    aput-object v2, v0, v1

    const/16 v1, 0x161

    const-string v2, "\u4e94\u5bb6\u6e20"

    aput-object v2, v0, v1

    const/16 v1, 0x162

    const-string v2, "\u963f\u514b\u82cf"

    aput-object v2, v0, v1

    const/16 v1, 0x163

    const-string v2, "\u77f3\u6cb3\u5b50"

    aput-object v2, v0, v1

    const/16 v1, 0x164

    const-string v2, "\u5854\u57ce"

    aput-object v2, v0, v1

    const/16 v1, 0x165

    const-string v2, "\u548c\u7530"

    aput-object v2, v0, v1

    const/16 v1, 0x166

    const-string v2, "\u514b\u62c9\u739b\u4f9d"

    aput-object v2, v0, v1

    const/16 v1, 0x167

    const-string v2, "\u963f\u52d2\u6cf0"

    aput-object v2, v0, v1

    const/16 v1, 0x168

    const-string v2, "\u535a\u5c14\u5854\u62c9"

    aput-object v2, v0, v1

    const/16 v1, 0x169

    const-string v2, "\u5df4\u97f3\u90ed\u695e"

    aput-object v2, v0, v1

    const/16 v1, 0x16a

    const-string v2, "\u4f0a\u7281"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/yulore/sdk/ivr/a/a;->a:[Ljava/lang/String;

    const/16 v0, 0x16b

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "10"

    aput-object v1, v0, v3

    const-string v1, "22"

    aput-object v1, v0, v4

    const-string v1, "314"

    aput-object v1, v0, v5

    const-string v1, "312"

    aput-object v1, v0, v6

    const-string v1, "335"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "313"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "319"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "317"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "311"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "315"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "318"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "310"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "316"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "351"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "357"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "352"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "349"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "358"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "354"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "356"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "359"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "355"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "350"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "353"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "478"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "470"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "471"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "476"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "477"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "472"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "483"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "479"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "473"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "482"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "474"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "475"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "414"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "24"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "419"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "416"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "413"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "429"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "417"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "415"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "24"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "412"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "411"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "418"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "421"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "427"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "432"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "438"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "431"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "439"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "433"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "435"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "437"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "436"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "434"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "452"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "454"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "459"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "453"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "456"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "451"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "457"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "458"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "455"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "468"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "469"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "464"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "467"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "21"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "514"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "512"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "519"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "513"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "523"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "527"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "515"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "511"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "516"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "510"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "518"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "25"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "517"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "574"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "570"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "571"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "573"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "578"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "579"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "572"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, "580"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "576"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "575"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "577"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "566"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "562"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "550"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, "552"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, "561"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "554"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v2, "558"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string v2, "558"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, "557"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string v2, "556"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string v2, "555"

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-string v2, "563"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-string v2, "564"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const-string v2, "553"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string v2, "559"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-string v2, "551"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const-string v2, "592"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-string v2, "594"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-string v2, "598"

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-string v2, "597"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-string v2, "591"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-string v2, "595"

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const-string v2, "599"

    aput-object v2, v0, v1

    const/16 v1, 0x78

    const-string v2, "593"

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const-string v2, "596"

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    const-string v2, "795"

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    const-string v2, "792"

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    const-string v2, "701"

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    const-string v2, "791"

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    const-string v2, "790"

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    const-string v2, "794"

    aput-object v2, v0, v1

    const/16 v1, 0x80

    const-string v2, "796"

    aput-object v2, v0, v1

    const/16 v1, 0x81

    const-string v2, "793"

    aput-object v2, v0, v1

    const/16 v1, 0x82

    const-string v2, "797"

    aput-object v2, v0, v1

    const/16 v1, 0x83

    const-string v2, "798"

    aput-object v2, v0, v1

    const/16 v1, 0x84

    const-string v2, "799"

    aput-object v2, v0, v1

    const/16 v1, 0x85

    const-string v2, "533"

    aput-object v2, v0, v1

    const/16 v1, 0x86

    const-string v2, "546"

    aput-object v2, v0, v1

    const/16 v1, 0x87

    const-string v2, "537"

    aput-object v2, v0, v1

    const/16 v1, 0x88

    const-string v2, "534"

    aput-object v2, v0, v1

    const/16 v1, 0x89

    const-string v2, "530"

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    const-string v2, "532"

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    const-string v2, "531"

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    const-string v2, "543"

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    const-string v2, "535"

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    const-string v2, "635"

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    const-string v2, "633"

    aput-object v2, v0, v1

    const/16 v1, 0x90

    const-string v2, "538"

    aput-object v2, v0, v1

    const/16 v1, 0x91

    const-string v2, "632"

    aput-object v2, v0, v1

    const/16 v1, 0x92

    const-string v2, "539"

    aput-object v2, v0, v1

    const/16 v1, 0x93

    const-string v2, "536"

    aput-object v2, v0, v1

    const/16 v1, 0x94

    const-string v2, "631"

    aput-object v2, v0, v1

    const/16 v1, 0x95

    const-string v2, "634"

    aput-object v2, v0, v1

    const/16 v1, 0x96

    const-string v2, "375"

    aput-object v2, v0, v1

    const/16 v1, 0x97

    const-string v2, "396"

    aput-object v2, v0, v1

    const/16 v1, 0x98

    const-string v2, "398"

    aput-object v2, v0, v1

    const/16 v1, 0x99

    const-string v2, "392"

    aput-object v2, v0, v1

    const/16 v1, 0x9a

    const-string v2, "377"

    aput-object v2, v0, v1

    const/16 v1, 0x9b

    const-string v2, "394"

    aput-object v2, v0, v1

    const/16 v1, 0x9c

    const-string v2, "379"

    aput-object v2, v0, v1

    const/16 v1, 0x9d

    const-string v2, "373"

    aput-object v2, v0, v1

    const/16 v1, 0x9e

    const-string v2, "371"

    aput-object v2, v0, v1

    const/16 v1, 0x9f

    const-string v2, "393"

    aput-object v2, v0, v1

    const/16 v1, 0xa0

    const-string v2, "370"

    aput-object v2, v0, v1

    const/16 v1, 0xa1

    const-string v2, "395"

    aput-object v2, v0, v1

    const/16 v1, 0xa2

    const-string v2, "391"

    aput-object v2, v0, v1

    const/16 v1, 0xa3

    const-string v2, "378"

    aput-object v2, v0, v1

    const/16 v1, 0xa4

    const-string v2, "376"

    aput-object v2, v0, v1

    const/16 v1, 0xa5

    const-string v2, "374"

    aput-object v2, v0, v1

    const/16 v1, 0xa6

    const-string v2, "372"

    aput-object v2, v0, v1

    const/16 v1, 0xa7

    const-string v2, "391"

    aput-object v2, v0, v1

    const/16 v1, 0xa8

    const-string v2, "712"

    aput-object v2, v0, v1

    const/16 v1, 0xa9

    const-string v2, "716"

    aput-object v2, v0, v1

    const/16 v1, 0xaa

    const-string v2, "718"

    aput-object v2, v0, v1

    const/16 v1, 0xab

    const-string v2, "728"

    aput-object v2, v0, v1

    const/16 v1, 0xac

    const-string v2, "713"

    aput-object v2, v0, v1

    const/16 v1, 0xad

    const-string v2, "710"

    aput-object v2, v0, v1

    const/16 v1, 0xae

    const-string v2, "724"

    aput-object v2, v0, v1

    const/16 v1, 0xaf

    const-string v2, "719"

    aput-object v2, v0, v1

    const/16 v1, 0xb0

    const-string v2, "728"

    aput-object v2, v0, v1

    const/16 v1, 0xb1

    const-string v2, "728"

    aput-object v2, v0, v1

    const/16 v1, 0xb2

    const-string v2, "714"

    aput-object v2, v0, v1

    const/16 v1, 0xb3

    const-string v2, "717"

    aput-object v2, v0, v1

    const/16 v1, 0xb4

    const-string v2, "715"

    aput-object v2, v0, v1

    const/16 v1, 0xb5

    const-string v2, "711"

    aput-object v2, v0, v1

    const/16 v1, 0xb6

    const-string v2, "27"

    aput-object v2, v0, v1

    const/16 v1, 0xb7

    const-string v2, "719"

    aput-object v2, v0, v1

    const/16 v1, 0xb8

    const-string v2, "722"

    aput-object v2, v0, v1

    const/16 v1, 0xb9

    const-string v2, "731"

    aput-object v2, v0, v1

    const/16 v1, 0xba

    const-string v2, "734"

    aput-object v2, v0, v1

    const/16 v1, 0xbb

    const-string v2, "739"

    aput-object v2, v0, v1

    const/16 v1, 0xbc

    const-string v2, "744"

    aput-object v2, v0, v1

    const/16 v1, 0xbd

    const-string v2, "731"

    aput-object v2, v0, v1

    const/16 v1, 0xbe

    const-string v2, "735"

    aput-object v2, v0, v1

    const/16 v1, 0xbf

    const-string v2, "737"

    aput-object v2, v0, v1

    const/16 v1, 0xc0

    const-string v2, "730"

    aput-object v2, v0, v1

    const/16 v1, 0xc1

    const-string v2, "743"

    aput-object v2, v0, v1

    const/16 v1, 0xc2

    const-string v2, "746"

    aput-object v2, v0, v1

    const/16 v1, 0xc3

    const-string v2, "745"

    aput-object v2, v0, v1

    const/16 v1, 0xc4

    const-string v2, "736"

    aput-object v2, v0, v1

    const/16 v1, 0xc5

    const-string v2, "738"

    aput-object v2, v0, v1

    const/16 v1, 0xc6

    const-string v2, "731"

    aput-object v2, v0, v1

    const/16 v1, 0xc7

    const-string v2, "766"

    aput-object v2, v0, v1

    const/16 v1, 0xc8

    const-string v2, "754"

    aput-object v2, v0, v1

    const/16 v1, 0xc9

    const-string v2, "759"

    aput-object v2, v0, v1

    const/16 v1, 0xca

    const-string v2, "660"

    aput-object v2, v0, v1

    const/16 v1, 0xcb

    const-string v2, "756"

    aput-object v2, v0, v1

    const/16 v1, 0xcc

    const-string v2, "768"

    aput-object v2, v0, v1

    const/16 v1, 0xcd

    const-string v2, "753"

    aput-object v2, v0, v1

    const/16 v1, 0xce

    const-string v2, "750"

    aput-object v2, v0, v1

    const/16 v1, 0xcf

    const-string v2, "762"

    aput-object v2, v0, v1

    const/16 v1, 0xd0

    const-string v2, "668"

    aput-object v2, v0, v1

    const/16 v1, 0xd1

    const-string v2, "763"

    aput-object v2, v0, v1

    const/16 v1, 0xd2

    const-string v2, "755"

    aput-object v2, v0, v1

    const/16 v1, 0xd3

    const-string v2, "662"

    aput-object v2, v0, v1

    const/16 v1, 0xd4

    const-string v2, "20"

    aput-object v2, v0, v1

    const/16 v1, 0xd5

    const-string v2, "663"

    aput-object v2, v0, v1

    const/16 v1, 0xd6

    const-string v2, "752"

    aput-object v2, v0, v1

    const/16 v1, 0xd7

    const-string v2, "769"

    aput-object v2, v0, v1

    const/16 v1, 0xd8

    const-string v2, "757"

    aput-object v2, v0, v1

    const/16 v1, 0xd9

    const-string v2, "760"

    aput-object v2, v0, v1

    const/16 v1, 0xda

    const-string v2, "758"

    aput-object v2, v0, v1

    const/16 v1, 0xdb

    const-string v2, "751"

    aput-object v2, v0, v1

    const/16 v1, 0xdc

    const-string v2, "771"

    aput-object v2, v0, v1

    const/16 v1, 0xdd

    const-string v2, "772"

    aput-object v2, v0, v1

    const/16 v1, 0xde

    const-string v2, "774"

    aput-object v2, v0, v1

    const/16 v1, 0xdf

    const-string v2, "775"

    aput-object v2, v0, v1

    const/16 v1, 0xe0

    const-string v2, "775"

    aput-object v2, v0, v1

    const/16 v1, 0xe1

    const-string v2, "772"

    aput-object v2, v0, v1

    const/16 v1, 0xe2

    const-string v2, "777"

    aput-object v2, v0, v1

    const/16 v1, 0xe3

    const-string v2, "779"

    aput-object v2, v0, v1

    const/16 v1, 0xe4

    const-string v2, "771"

    aput-object v2, v0, v1

    const/16 v1, 0xe5

    const-string v2, "774"

    aput-object v2, v0, v1

    const/16 v1, 0xe6

    const-string v2, "773"

    aput-object v2, v0, v1

    const/16 v1, 0xe7

    const-string v2, "776"

    aput-object v2, v0, v1

    const/16 v1, 0xe8

    const-string v2, "778"

    aput-object v2, v0, v1

    const/16 v1, 0xe9

    const-string v2, "770"

    aput-object v2, v0, v1

    const/16 v1, 0xea

    const-string v2, "898"

    aput-object v2, v0, v1

    const/16 v1, 0xeb

    const-string v2, "898"

    aput-object v2, v0, v1

    const/16 v1, 0xec

    const-string v2, "898"

    aput-object v2, v0, v1

    const/16 v1, 0xed

    const-string v2, "898"

    aput-object v2, v0, v1

    const/16 v1, 0xee

    const-string v2, "898"

    aput-object v2, v0, v1

    const/16 v1, 0xef

    const-string v2, "898"

    aput-object v2, v0, v1

    const/16 v1, 0xf0

    const-string v2, "898"

    aput-object v2, v0, v1

    const/16 v1, 0xf1

    const-string v2, "898"

    aput-object v2, v0, v1

    const/16 v1, 0xf2

    const-string v2, "898"

    aput-object v2, v0, v1

    const/16 v1, 0xf3

    const-string v2, "898"

    aput-object v2, v0, v1

    const/16 v1, 0xf4

    const-string v2, "898"

    aput-object v2, v0, v1

    const/16 v1, 0xf5

    const-string v2, "898"

    aput-object v2, v0, v1

    const/16 v1, 0xf6

    const-string v2, "898"

    aput-object v2, v0, v1

    const/16 v1, 0xf7

    const-string v2, "898"

    aput-object v2, v0, v1

    const/16 v1, 0xf8

    const-string v2, "898"

    aput-object v2, v0, v1

    const/16 v1, 0xf9

    const-string v2, "898"

    aput-object v2, v0, v1

    const/16 v1, 0xfa

    const-string v2, "898"

    aput-object v2, v0, v1

    const/16 v1, 0xfb

    const-string v2, "898"

    aput-object v2, v0, v1

    const/16 v1, 0xfc

    const-string v2, "898"

    aput-object v2, v0, v1

    const/16 v1, 0xfd

    const-string v2, "23"

    aput-object v2, v0, v1

    const/16 v1, 0xfe

    const-string v2, "836"

    aput-object v2, v0, v1

    const/16 v1, 0xff

    const-string v2, "830"

    aput-object v2, v0, v1

    const/16 v1, 0x100

    const-string v2, "832"

    aput-object v2, v0, v1

    const/16 v1, 0x101

    const-string v2, "827"

    aput-object v2, v0, v1

    const/16 v1, 0x102

    const-string v2, "28"

    aput-object v2, v0, v1

    const/16 v1, 0x103

    const-string v2, "833"

    aput-object v2, v0, v1

    const/16 v1, 0x104

    const-string v2, "28"

    aput-object v2, v0, v1

    const/16 v1, 0x105

    const-string v2, "839"

    aput-object v2, v0, v1

    const/16 v1, 0x106

    const-string v2, "816"

    aput-object v2, v0, v1

    const/16 v1, 0x107

    const-string v2, "812"

    aput-object v2, v0, v1

    const/16 v1, 0x108

    const-string v2, "826"

    aput-object v2, v0, v1

    const/16 v1, 0x109

    const-string v2, "818"

    aput-object v2, v0, v1

    const/16 v1, 0x10a

    const-string v2, "817"

    aput-object v2, v0, v1

    const/16 v1, 0x10b

    const-string v2, "831"

    aput-object v2, v0, v1

    const/16 v1, 0x10c

    const-string v2, "834"

    aput-object v2, v0, v1

    const/16 v1, 0x10d

    const-string v2, "28"

    aput-object v2, v0, v1

    const/16 v1, 0x10e

    const-string v2, "838"

    aput-object v2, v0, v1

    const/16 v1, 0x10f

    const-string v2, "813"

    aput-object v2, v0, v1

    const/16 v1, 0x110

    const-string v2, "837"

    aput-object v2, v0, v1

    const/16 v1, 0x111

    const-string v2, "835"

    aput-object v2, v0, v1

    const/16 v1, 0x112

    const-string v2, "825"

    aput-object v2, v0, v1

    const/16 v1, 0x113

    const-string v2, "852"

    aput-object v2, v0, v1

    const/16 v1, 0x114

    const-string v2, "857"

    aput-object v2, v0, v1

    const/16 v1, 0x115

    const-string v2, "854"

    aput-object v2, v0, v1

    const/16 v1, 0x116

    const-string v2, "859"

    aput-object v2, v0, v1

    const/16 v1, 0x117

    const-string v2, "856"

    aput-object v2, v0, v1

    const/16 v1, 0x118

    const-string v2, "858"

    aput-object v2, v0, v1

    const/16 v1, 0x119

    const-string v2, "851"

    aput-object v2, v0, v1

    const/16 v1, 0x11a

    const-string v2, "855"

    aput-object v2, v0, v1

    const/16 v1, 0x11b

    const-string v2, "853"

    aput-object v2, v0, v1

    const/16 v1, 0x11c

    const-string v2, "887"

    aput-object v2, v0, v1

    const/16 v1, 0x11d

    const-string v2, "871"

    aput-object v2, v0, v1

    const/16 v1, 0x11e

    const-string v2, "886"

    aput-object v2, v0, v1

    const/16 v1, 0x11f

    const-string v2, "874"

    aput-object v2, v0, v1

    const/16 v1, 0x120

    const-string v2, "873"

    aput-object v2, v0, v1

    const/16 v1, 0x121

    const-string v2, "883"

    aput-object v2, v0, v1

    const/16 v1, 0x122

    const-string v2, "872"

    aput-object v2, v0, v1

    const/16 v1, 0x123

    const-string v2, "879"

    aput-object v2, v0, v1

    const/16 v1, 0x124

    const-string v2, "692"

    aput-object v2, v0, v1

    const/16 v1, 0x125

    const-string v2, "888"

    aput-object v2, v0, v1

    const/16 v1, 0x126

    const-string v2, "877"

    aput-object v2, v0, v1

    const/16 v1, 0x127

    const-string v2, "870"

    aput-object v2, v0, v1

    const/16 v1, 0x128

    const-string v2, "875"

    aput-object v2, v0, v1

    const/16 v1, 0x129

    const-string v2, "691"

    aput-object v2, v0, v1

    const/16 v1, 0x12a

    const-string v2, "878"

    aput-object v2, v0, v1

    const/16 v1, 0x12b

    const-string v2, "876"

    aput-object v2, v0, v1

    const/16 v1, 0x12c

    const-string v2, "893"

    aput-object v2, v0, v1

    const/16 v1, 0x12d

    const-string v2, "892"

    aput-object v2, v0, v1

    const/16 v1, 0x12e

    const-string v2, "895"

    aput-object v2, v0, v1

    const/16 v1, 0x12f

    const-string v2, "894"

    aput-object v2, v0, v1

    const/16 v1, 0x130

    const-string v2, "897"

    aput-object v2, v0, v1

    const/16 v1, 0x131

    const-string v2, "891"

    aput-object v2, v0, v1

    const/16 v1, 0x132

    const-string v2, "896"

    aput-object v2, v0, v1

    const/16 v1, 0x133

    const-string v2, "917"

    aput-object v2, v0, v1

    const/16 v1, 0x134

    const-string v2, "29"

    aput-object v2, v0, v1

    const/16 v1, 0x135

    const-string v2, "913"

    aput-object v2, v0, v1

    const/16 v1, 0x136

    const-string v2, "914"

    aput-object v2, v0, v1

    const/16 v1, 0x137

    const-string v2, "29"

    aput-object v2, v0, v1

    const/16 v1, 0x138

    const-string v2, "919"

    aput-object v2, v0, v1

    const/16 v1, 0x139

    const-string v2, "916"

    aput-object v2, v0, v1

    const/16 v1, 0x13a

    const-string v2, "912"

    aput-object v2, v0, v1

    const/16 v1, 0x13b

    const-string v2, "911"

    aput-object v2, v0, v1

    const/16 v1, 0x13c

    const-string v2, "915"

    aput-object v2, v0, v1

    const/16 v1, 0x13d

    const-string v2, "939"

    aput-object v2, v0, v1

    const/16 v1, 0x13e

    const-string v2, "935"

    aput-object v2, v0, v1

    const/16 v1, 0x13f

    const-string v2, "941"

    aput-object v2, v0, v1

    const/16 v1, 0x140

    const-string v2, "932"

    aput-object v2, v0, v1

    const/16 v1, 0x141

    const-string v2, "934"

    aput-object v2, v0, v1

    const/16 v1, 0x142

    const-string v2, "937"

    aput-object v2, v0, v1

    const/16 v1, 0x143

    const-string v2, "931"

    aput-object v2, v0, v1

    const/16 v1, 0x144

    const-string v2, "937"

    aput-object v2, v0, v1

    const/16 v1, 0x145

    const-string v2, "938"

    aput-object v2, v0, v1

    const/16 v1, 0x146

    const-string v2, "943"

    aput-object v2, v0, v1

    const/16 v1, 0x147

    const-string v2, "933"

    aput-object v2, v0, v1

    const/16 v1, 0x148

    const-string v2, "936"

    aput-object v2, v0, v1

    const/16 v1, 0x149

    const-string v2, "935"

    aput-object v2, v0, v1

    const/16 v1, 0x14a

    const-string v2, "930"

    aput-object v2, v0, v1

    const/16 v1, 0x14b

    const-string v2, "974"

    aput-object v2, v0, v1

    const/16 v1, 0x14c

    const-string v2, "976"

    aput-object v2, v0, v1

    const/16 v1, 0x14d

    const-string v2, "975"

    aput-object v2, v0, v1

    const/16 v1, 0x14e

    const-string v2, "970"

    aput-object v2, v0, v1

    const/16 v1, 0x14f

    const-string v2, "973"

    aput-object v2, v0, v1

    const/16 v1, 0x150

    const-string v2, "972"

    aput-object v2, v0, v1

    const/16 v1, 0x151

    const-string v2, "971"

    aput-object v2, v0, v1

    const/16 v1, 0x152

    const-string v2, "977"

    aput-object v2, v0, v1

    const/16 v1, 0x153

    const-string v2, "954"

    aput-object v2, v0, v1

    const/16 v1, 0x154

    const-string v2, "953"

    aput-object v2, v0, v1

    const/16 v1, 0x155

    const-string v2, "952"

    aput-object v2, v0, v1

    const/16 v1, 0x156

    const-string v2, "951"

    aput-object v2, v0, v1

    const/16 v1, 0x157

    const-string v2, "955"

    aput-object v2, v0, v1

    const/16 v1, 0x158

    const-string v2, "992"

    aput-object v2, v0, v1

    const/16 v1, 0x159

    const-string v2, "991"

    aput-object v2, v0, v1

    const/16 v1, 0x15a

    const-string v2, "997"

    aput-object v2, v0, v1

    const/16 v1, 0x15b

    const-string v2, "998"

    aput-object v2, v0, v1

    const/16 v1, 0x15c

    const-string v2, "908"

    aput-object v2, v0, v1

    const/16 v1, 0x15d

    const-string v2, "902"

    aput-object v2, v0, v1

    const/16 v1, 0x15e

    const-string v2, "998"

    aput-object v2, v0, v1

    const/16 v1, 0x15f

    const-string v2, "994"

    aput-object v2, v0, v1

    const/16 v1, 0x160

    const-string v2, "995"

    aput-object v2, v0, v1

    const/16 v1, 0x161

    const-string v2, "994"

    aput-object v2, v0, v1

    const/16 v1, 0x162

    const-string v2, "997"

    aput-object v2, v0, v1

    const/16 v1, 0x163

    const-string v2, "993"

    aput-object v2, v0, v1

    const/16 v1, 0x164

    const-string v2, "901"

    aput-object v2, v0, v1

    const/16 v1, 0x165

    const-string v2, "903"

    aput-object v2, v0, v1

    const/16 v1, 0x166

    const-string v2, "990"

    aput-object v2, v0, v1

    const/16 v1, 0x167

    const-string v2, "906"

    aput-object v2, v0, v1

    const/16 v1, 0x168

    const-string v2, "909"

    aput-object v2, v0, v1

    const/16 v1, 0x169

    const-string v2, "996"

    aput-object v2, v0, v1

    const/16 v1, 0x16a

    const-string v2, "999"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/yulore/sdk/ivr/a/a;->b:[Ljava/lang/String;

    const/16 v0, 0x16b

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "10"

    aput-object v1, v0, v3

    const-string v1, "22"

    aput-object v1, v0, v4

    const-string v1, "311"

    aput-object v1, v0, v5

    const-string v1, "311"

    aput-object v1, v0, v6

    const-string v1, "311"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "311"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "311"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "311"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "311"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "311"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "311"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "311"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "311"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "351"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "351"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "351"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "351"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "351"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "351"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "351"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "351"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "351"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "351"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "351"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "471"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "471"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "471"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "471"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "471"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "471"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "471"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "471"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "471"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "471"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "471"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "471"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "24"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "24"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "24"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "24"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "24"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "24"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "24"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "24"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "24"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "24"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "24"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "24"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "24"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "24"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "431"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "431"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "431"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "431"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "431"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "431"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "431"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "431"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "431"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "451"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "451"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "451"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "451"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "451"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "451"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "451"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "451"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "451"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "451"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "451"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "451"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "451"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "21"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "25"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "25"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "25"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "25"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "25"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "25"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "25"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "25"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "25"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "25"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "25"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "25"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "25"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "571"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "571"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "571"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "571"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "571"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "571"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "571"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, "571"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "571"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "571"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "571"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "551"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "551"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "551"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, "551"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, "551"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "551"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v2, "551"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string v2, "551"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, "551"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string v2, "551"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string v2, "551"

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-string v2, "551"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-string v2, "551"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const-string v2, "551"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string v2, "551"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-string v2, "551"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const-string v2, "591"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-string v2, "591"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-string v2, "591"

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-string v2, "591"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-string v2, "591"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-string v2, "591"

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const-string v2, "591"

    aput-object v2, v0, v1

    const/16 v1, 0x78

    const-string v2, "591"

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const-string v2, "591"

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    const-string v2, "791"

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    const-string v2, "791"

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    const-string v2, "791"

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    const-string v2, "791"

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    const-string v2, "791"

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    const-string v2, "791"

    aput-object v2, v0, v1

    const/16 v1, 0x80

    const-string v2, "791"

    aput-object v2, v0, v1

    const/16 v1, 0x81

    const-string v2, "791"

    aput-object v2, v0, v1

    const/16 v1, 0x82

    const-string v2, "791"

    aput-object v2, v0, v1

    const/16 v1, 0x83

    const-string v2, "791"

    aput-object v2, v0, v1

    const/16 v1, 0x84

    const-string v2, "791"

    aput-object v2, v0, v1

    const/16 v1, 0x85

    const-string v2, "531"

    aput-object v2, v0, v1

    const/16 v1, 0x86

    const-string v2, "531"

    aput-object v2, v0, v1

    const/16 v1, 0x87

    const-string v2, "531"

    aput-object v2, v0, v1

    const/16 v1, 0x88

    const-string v2, "531"

    aput-object v2, v0, v1

    const/16 v1, 0x89

    const-string v2, "531"

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    const-string v2, "531"

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    const-string v2, "531"

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    const-string v2, "531"

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    const-string v2, "531"

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    const-string v2, "531"

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    const-string v2, "531"

    aput-object v2, v0, v1

    const/16 v1, 0x90

    const-string v2, "531"

    aput-object v2, v0, v1

    const/16 v1, 0x91

    const-string v2, "531"

    aput-object v2, v0, v1

    const/16 v1, 0x92

    const-string v2, "531"

    aput-object v2, v0, v1

    const/16 v1, 0x93

    const-string v2, "531"

    aput-object v2, v0, v1

    const/16 v1, 0x94

    const-string v2, "531"

    aput-object v2, v0, v1

    const/16 v1, 0x95

    const-string v2, "531"

    aput-object v2, v0, v1

    const/16 v1, 0x96

    const-string v2, "371"

    aput-object v2, v0, v1

    const/16 v1, 0x97

    const-string v2, "371"

    aput-object v2, v0, v1

    const/16 v1, 0x98

    const-string v2, "371"

    aput-object v2, v0, v1

    const/16 v1, 0x99

    const-string v2, "371"

    aput-object v2, v0, v1

    const/16 v1, 0x9a

    const-string v2, "371"

    aput-object v2, v0, v1

    const/16 v1, 0x9b

    const-string v2, "371"

    aput-object v2, v0, v1

    const/16 v1, 0x9c

    const-string v2, "371"

    aput-object v2, v0, v1

    const/16 v1, 0x9d

    const-string v2, "371"

    aput-object v2, v0, v1

    const/16 v1, 0x9e

    const-string v2, "371"

    aput-object v2, v0, v1

    const/16 v1, 0x9f

    const-string v2, "371"

    aput-object v2, v0, v1

    const/16 v1, 0xa0

    const-string v2, "371"

    aput-object v2, v0, v1

    const/16 v1, 0xa1

    const-string v2, "371"

    aput-object v2, v0, v1

    const/16 v1, 0xa2

    const-string v2, "371"

    aput-object v2, v0, v1

    const/16 v1, 0xa3

    const-string v2, "371"

    aput-object v2, v0, v1

    const/16 v1, 0xa4

    const-string v2, "371"

    aput-object v2, v0, v1

    const/16 v1, 0xa5

    const-string v2, "371"

    aput-object v2, v0, v1

    const/16 v1, 0xa6

    const-string v2, "371"

    aput-object v2, v0, v1

    const/16 v1, 0xa7

    const-string v2, "371"

    aput-object v2, v0, v1

    const/16 v1, 0xa8

    const-string v2, "27"

    aput-object v2, v0, v1

    const/16 v1, 0xa9

    const-string v2, "27"

    aput-object v2, v0, v1

    const/16 v1, 0xaa

    const-string v2, "27"

    aput-object v2, v0, v1

    const/16 v1, 0xab

    const-string v2, "27"

    aput-object v2, v0, v1

    const/16 v1, 0xac

    const-string v2, "27"

    aput-object v2, v0, v1

    const/16 v1, 0xad

    const-string v2, "27"

    aput-object v2, v0, v1

    const/16 v1, 0xae

    const-string v2, "27"

    aput-object v2, v0, v1

    const/16 v1, 0xaf

    const-string v2, "27"

    aput-object v2, v0, v1

    const/16 v1, 0xb0

    const-string v2, "27"

    aput-object v2, v0, v1

    const/16 v1, 0xb1

    const-string v2, "27"

    aput-object v2, v0, v1

    const/16 v1, 0xb2

    const-string v2, "27"

    aput-object v2, v0, v1

    const/16 v1, 0xb3

    const-string v2, "27"

    aput-object v2, v0, v1

    const/16 v1, 0xb4

    const-string v2, "27"

    aput-object v2, v0, v1

    const/16 v1, 0xb5

    const-string v2, "27"

    aput-object v2, v0, v1

    const/16 v1, 0xb6

    const-string v2, "27"

    aput-object v2, v0, v1

    const/16 v1, 0xb7

    const-string v2, "27"

    aput-object v2, v0, v1

    const/16 v1, 0xb8

    const-string v2, "27"

    aput-object v2, v0, v1

    const/16 v1, 0xb9

    const-string v2, "731"

    aput-object v2, v0, v1

    const/16 v1, 0xba

    const-string v2, "731"

    aput-object v2, v0, v1

    const/16 v1, 0xbb

    const-string v2, "731"

    aput-object v2, v0, v1

    const/16 v1, 0xbc

    const-string v2, "731"

    aput-object v2, v0, v1

    const/16 v1, 0xbd

    const-string v2, "731"

    aput-object v2, v0, v1

    const/16 v1, 0xbe

    const-string v2, "731"

    aput-object v2, v0, v1

    const/16 v1, 0xbf

    const-string v2, "731"

    aput-object v2, v0, v1

    const/16 v1, 0xc0

    const-string v2, "731"

    aput-object v2, v0, v1

    const/16 v1, 0xc1

    const-string v2, "731"

    aput-object v2, v0, v1

    const/16 v1, 0xc2

    const-string v2, "731"

    aput-object v2, v0, v1

    const/16 v1, 0xc3

    const-string v2, "731"

    aput-object v2, v0, v1

    const/16 v1, 0xc4

    const-string v2, "731"

    aput-object v2, v0, v1

    const/16 v1, 0xc5

    const-string v2, "731"

    aput-object v2, v0, v1

    const/16 v1, 0xc6

    const-string v2, "731"

    aput-object v2, v0, v1

    const/16 v1, 0xc7

    const-string v2, "20"

    aput-object v2, v0, v1

    const/16 v1, 0xc8

    const-string v2, "20"

    aput-object v2, v0, v1

    const/16 v1, 0xc9

    const-string v2, "20"

    aput-object v2, v0, v1

    const/16 v1, 0xca

    const-string v2, "20"

    aput-object v2, v0, v1

    const/16 v1, 0xcb

    const-string v2, "20"

    aput-object v2, v0, v1

    const/16 v1, 0xcc

    const-string v2, "20"

    aput-object v2, v0, v1

    const/16 v1, 0xcd

    const-string v2, "20"

    aput-object v2, v0, v1

    const/16 v1, 0xce

    const-string v2, "20"

    aput-object v2, v0, v1

    const/16 v1, 0xcf

    const-string v2, "20"

    aput-object v2, v0, v1

    const/16 v1, 0xd0

    const-string v2, "20"

    aput-object v2, v0, v1

    const/16 v1, 0xd1

    const-string v2, "20"

    aput-object v2, v0, v1

    const/16 v1, 0xd2

    const-string v2, "20"

    aput-object v2, v0, v1

    const/16 v1, 0xd3

    const-string v2, "20"

    aput-object v2, v0, v1

    const/16 v1, 0xd4

    const-string v2, "20"

    aput-object v2, v0, v1

    const/16 v1, 0xd5

    const-string v2, "20"

    aput-object v2, v0, v1

    const/16 v1, 0xd6

    const-string v2, "20"

    aput-object v2, v0, v1

    const/16 v1, 0xd7

    const-string v2, "20"

    aput-object v2, v0, v1

    const/16 v1, 0xd8

    const-string v2, "20"

    aput-object v2, v0, v1

    const/16 v1, 0xd9

    const-string v2, "20"

    aput-object v2, v0, v1

    const/16 v1, 0xda

    const-string v2, "20"

    aput-object v2, v0, v1

    const/16 v1, 0xdb

    const-string v2, "20"

    aput-object v2, v0, v1

    const/16 v1, 0xdc

    const-string v2, "771"

    aput-object v2, v0, v1

    const/16 v1, 0xdd

    const-string v2, "771"

    aput-object v2, v0, v1

    const/16 v1, 0xde

    const-string v2, "771"

    aput-object v2, v0, v1

    const/16 v1, 0xdf

    const-string v2, "771"

    aput-object v2, v0, v1

    const/16 v1, 0xe0

    const-string v2, "771"

    aput-object v2, v0, v1

    const/16 v1, 0xe1

    const-string v2, "771"

    aput-object v2, v0, v1

    const/16 v1, 0xe2

    const-string v2, "771"

    aput-object v2, v0, v1

    const/16 v1, 0xe3

    const-string v2, "771"

    aput-object v2, v0, v1

    const/16 v1, 0xe4

    const-string v2, "771"

    aput-object v2, v0, v1

    const/16 v1, 0xe5

    const-string v2, "771"

    aput-object v2, v0, v1

    const/16 v1, 0xe6

    const-string v2, "771"

    aput-object v2, v0, v1

    const/16 v1, 0xe7

    const-string v2, "771"

    aput-object v2, v0, v1

    const/16 v1, 0xe8

    const-string v2, "771"

    aput-object v2, v0, v1

    const/16 v1, 0xe9

    const-string v2, "771"

    aput-object v2, v0, v1

    const/16 v1, 0xea

    const-string v2, "898"

    aput-object v2, v0, v1

    const/16 v1, 0xeb

    const-string v2, "898"

    aput-object v2, v0, v1

    const/16 v1, 0xec

    const-string v2, "898"

    aput-object v2, v0, v1

    const/16 v1, 0xed

    const-string v2, "898"

    aput-object v2, v0, v1

    const/16 v1, 0xee

    const-string v2, "898"

    aput-object v2, v0, v1

    const/16 v1, 0xef

    const-string v2, "898"

    aput-object v2, v0, v1

    const/16 v1, 0xf0

    const-string v2, "898"

    aput-object v2, v0, v1

    const/16 v1, 0xf1

    const-string v2, "898"

    aput-object v2, v0, v1

    const/16 v1, 0xf2

    const-string v2, "898"

    aput-object v2, v0, v1

    const/16 v1, 0xf3

    const-string v2, "898"

    aput-object v2, v0, v1

    const/16 v1, 0xf4

    const-string v2, "898"

    aput-object v2, v0, v1

    const/16 v1, 0xf5

    const-string v2, "898"

    aput-object v2, v0, v1

    const/16 v1, 0xf6

    const-string v2, "898"

    aput-object v2, v0, v1

    const/16 v1, 0xf7

    const-string v2, "898"

    aput-object v2, v0, v1

    const/16 v1, 0xf8

    const-string v2, "898"

    aput-object v2, v0, v1

    const/16 v1, 0xf9

    const-string v2, "898"

    aput-object v2, v0, v1

    const/16 v1, 0xfa

    const-string v2, "898"

    aput-object v2, v0, v1

    const/16 v1, 0xfb

    const-string v2, "898"

    aput-object v2, v0, v1

    const/16 v1, 0xfc

    const-string v2, "898"

    aput-object v2, v0, v1

    const/16 v1, 0xfd

    const-string v2, "23"

    aput-object v2, v0, v1

    const/16 v1, 0xfe

    const-string v2, "28"

    aput-object v2, v0, v1

    const/16 v1, 0xff

    const-string v2, "28"

    aput-object v2, v0, v1

    const/16 v1, 0x100

    const-string v2, "28"

    aput-object v2, v0, v1

    const/16 v1, 0x101

    const-string v2, "28"

    aput-object v2, v0, v1

    const/16 v1, 0x102

    const-string v2, "28"

    aput-object v2, v0, v1

    const/16 v1, 0x103

    const-string v2, "28"

    aput-object v2, v0, v1

    const/16 v1, 0x104

    const-string v2, "28"

    aput-object v2, v0, v1

    const/16 v1, 0x105

    const-string v2, "28"

    aput-object v2, v0, v1

    const/16 v1, 0x106

    const-string v2, "28"

    aput-object v2, v0, v1

    const/16 v1, 0x107

    const-string v2, "28"

    aput-object v2, v0, v1

    const/16 v1, 0x108

    const-string v2, "28"

    aput-object v2, v0, v1

    const/16 v1, 0x109

    const-string v2, "28"

    aput-object v2, v0, v1

    const/16 v1, 0x10a

    const-string v2, "28"

    aput-object v2, v0, v1

    const/16 v1, 0x10b

    const-string v2, "28"

    aput-object v2, v0, v1

    const/16 v1, 0x10c

    const-string v2, "28"

    aput-object v2, v0, v1

    const/16 v1, 0x10d

    const-string v2, "28"

    aput-object v2, v0, v1

    const/16 v1, 0x10e

    const-string v2, "28"

    aput-object v2, v0, v1

    const/16 v1, 0x10f

    const-string v2, "28"

    aput-object v2, v0, v1

    const/16 v1, 0x110

    const-string v2, "28"

    aput-object v2, v0, v1

    const/16 v1, 0x111

    const-string v2, "28"

    aput-object v2, v0, v1

    const/16 v1, 0x112

    const-string v2, "28"

    aput-object v2, v0, v1

    const/16 v1, 0x113

    const-string v2, "851"

    aput-object v2, v0, v1

    const/16 v1, 0x114

    const-string v2, "851"

    aput-object v2, v0, v1

    const/16 v1, 0x115

    const-string v2, "851"

    aput-object v2, v0, v1

    const/16 v1, 0x116

    const-string v2, "851"

    aput-object v2, v0, v1

    const/16 v1, 0x117

    const-string v2, "851"

    aput-object v2, v0, v1

    const/16 v1, 0x118

    const-string v2, "851"

    aput-object v2, v0, v1

    const/16 v1, 0x119

    const-string v2, "851"

    aput-object v2, v0, v1

    const/16 v1, 0x11a

    const-string v2, "851"

    aput-object v2, v0, v1

    const/16 v1, 0x11b

    const-string v2, "851"

    aput-object v2, v0, v1

    const/16 v1, 0x11c

    const-string v2, "871"

    aput-object v2, v0, v1

    const/16 v1, 0x11d

    const-string v2, "871"

    aput-object v2, v0, v1

    const/16 v1, 0x11e

    const-string v2, "871"

    aput-object v2, v0, v1

    const/16 v1, 0x11f

    const-string v2, "871"

    aput-object v2, v0, v1

    const/16 v1, 0x120

    const-string v2, "871"

    aput-object v2, v0, v1

    const/16 v1, 0x121

    const-string v2, "871"

    aput-object v2, v0, v1

    const/16 v1, 0x122

    const-string v2, "871"

    aput-object v2, v0, v1

    const/16 v1, 0x123

    const-string v2, "871"

    aput-object v2, v0, v1

    const/16 v1, 0x124

    const-string v2, "871"

    aput-object v2, v0, v1

    const/16 v1, 0x125

    const-string v2, "871"

    aput-object v2, v0, v1

    const/16 v1, 0x126

    const-string v2, "871"

    aput-object v2, v0, v1

    const/16 v1, 0x127

    const-string v2, "871"

    aput-object v2, v0, v1

    const/16 v1, 0x128

    const-string v2, "871"

    aput-object v2, v0, v1

    const/16 v1, 0x129

    const-string v2, "871"

    aput-object v2, v0, v1

    const/16 v1, 0x12a

    const-string v2, "871"

    aput-object v2, v0, v1

    const/16 v1, 0x12b

    const-string v2, "871"

    aput-object v2, v0, v1

    const/16 v1, 0x12c

    const-string v2, "891"

    aput-object v2, v0, v1

    const/16 v1, 0x12d

    const-string v2, "891"

    aput-object v2, v0, v1

    const/16 v1, 0x12e

    const-string v2, "891"

    aput-object v2, v0, v1

    const/16 v1, 0x12f

    const-string v2, "891"

    aput-object v2, v0, v1

    const/16 v1, 0x130

    const-string v2, "891"

    aput-object v2, v0, v1

    const/16 v1, 0x131

    const-string v2, "891"

    aput-object v2, v0, v1

    const/16 v1, 0x132

    const-string v2, "891"

    aput-object v2, v0, v1

    const/16 v1, 0x133

    const-string v2, "29"

    aput-object v2, v0, v1

    const/16 v1, 0x134

    const-string v2, "29"

    aput-object v2, v0, v1

    const/16 v1, 0x135

    const-string v2, "29"

    aput-object v2, v0, v1

    const/16 v1, 0x136

    const-string v2, "29"

    aput-object v2, v0, v1

    const/16 v1, 0x137

    const-string v2, "29"

    aput-object v2, v0, v1

    const/16 v1, 0x138

    const-string v2, "29"

    aput-object v2, v0, v1

    const/16 v1, 0x139

    const-string v2, "29"

    aput-object v2, v0, v1

    const/16 v1, 0x13a

    const-string v2, "29"

    aput-object v2, v0, v1

    const/16 v1, 0x13b

    const-string v2, "29"

    aput-object v2, v0, v1

    const/16 v1, 0x13c

    const-string v2, "29"

    aput-object v2, v0, v1

    const/16 v1, 0x13d

    const-string v2, "931"

    aput-object v2, v0, v1

    const/16 v1, 0x13e

    const-string v2, "931"

    aput-object v2, v0, v1

    const/16 v1, 0x13f

    const-string v2, "931"

    aput-object v2, v0, v1

    const/16 v1, 0x140

    const-string v2, "931"

    aput-object v2, v0, v1

    const/16 v1, 0x141

    const-string v2, "931"

    aput-object v2, v0, v1

    const/16 v1, 0x142

    const-string v2, "931"

    aput-object v2, v0, v1

    const/16 v1, 0x143

    const-string v2, "931"

    aput-object v2, v0, v1

    const/16 v1, 0x144

    const-string v2, "931"

    aput-object v2, v0, v1

    const/16 v1, 0x145

    const-string v2, "931"

    aput-object v2, v0, v1

    const/16 v1, 0x146

    const-string v2, "931"

    aput-object v2, v0, v1

    const/16 v1, 0x147

    const-string v2, "931"

    aput-object v2, v0, v1

    const/16 v1, 0x148

    const-string v2, "931"

    aput-object v2, v0, v1

    const/16 v1, 0x149

    const-string v2, "931"

    aput-object v2, v0, v1

    const/16 v1, 0x14a

    const-string v2, "931"

    aput-object v2, v0, v1

    const/16 v1, 0x14b

    const-string v2, "971"

    aput-object v2, v0, v1

    const/16 v1, 0x14c

    const-string v2, "971"

    aput-object v2, v0, v1

    const/16 v1, 0x14d

    const-string v2, "971"

    aput-object v2, v0, v1

    const/16 v1, 0x14e

    const-string v2, "971"

    aput-object v2, v0, v1

    const/16 v1, 0x14f

    const-string v2, "971"

    aput-object v2, v0, v1

    const/16 v1, 0x150

    const-string v2, "971"

    aput-object v2, v0, v1

    const/16 v1, 0x151

    const-string v2, "971"

    aput-object v2, v0, v1

    const/16 v1, 0x152

    const-string v2, "971"

    aput-object v2, v0, v1

    const/16 v1, 0x153

    const-string v2, "951"

    aput-object v2, v0, v1

    const/16 v1, 0x154

    const-string v2, "951"

    aput-object v2, v0, v1

    const/16 v1, 0x155

    const-string v2, "951"

    aput-object v2, v0, v1

    const/16 v1, 0x156

    const-string v2, "951"

    aput-object v2, v0, v1

    const/16 v1, 0x157

    const-string v2, "951"

    aput-object v2, v0, v1

    const/16 v1, 0x158

    const-string v2, "991"

    aput-object v2, v0, v1

    const/16 v1, 0x159

    const-string v2, "991"

    aput-object v2, v0, v1

    const/16 v1, 0x15a

    const-string v2, "991"

    aput-object v2, v0, v1

    const/16 v1, 0x15b

    const-string v2, "991"

    aput-object v2, v0, v1

    const/16 v1, 0x15c

    const-string v2, "991"

    aput-object v2, v0, v1

    const/16 v1, 0x15d

    const-string v2, "991"

    aput-object v2, v0, v1

    const/16 v1, 0x15e

    const-string v2, "991"

    aput-object v2, v0, v1

    const/16 v1, 0x15f

    const-string v2, "991"

    aput-object v2, v0, v1

    const/16 v1, 0x160

    const-string v2, "991"

    aput-object v2, v0, v1

    const/16 v1, 0x161

    const-string v2, "991"

    aput-object v2, v0, v1

    const/16 v1, 0x162

    const-string v2, "991"

    aput-object v2, v0, v1

    const/16 v1, 0x163

    const-string v2, "991"

    aput-object v2, v0, v1

    const/16 v1, 0x164

    const-string v2, "991"

    aput-object v2, v0, v1

    const/16 v1, 0x165

    const-string v2, "991"

    aput-object v2, v0, v1

    const/16 v1, 0x166

    const-string v2, "991"

    aput-object v2, v0, v1

    const/16 v1, 0x167

    const-string v2, "991"

    aput-object v2, v0, v1

    const/16 v1, 0x168

    const-string v2, "991"

    aput-object v2, v0, v1

    const/16 v1, 0x169

    const-string v2, "991"

    aput-object v2, v0, v1

    const/16 v1, 0x16a

    const-string v2, "991"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/yulore/sdk/ivr/a/a;->c:[Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/yulore/sdk/ivr/a/a$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/yulore/sdk/ivr/a/a;-><init>()V

    return-void
.end method

.method public static a()Lcom/yulore/sdk/ivr/a/a;
    .locals 1

    invoke-static {}, Lcom/yulore/sdk/ivr/a/a$a;->a()Lcom/yulore/sdk/ivr/a/a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/yulore/sdk/ivr/a/a;)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/yulore/sdk/ivr/a/a;->e:Ljava/io/File;

    return-object v0
.end method

.method static synthetic a(Lcom/yulore/sdk/ivr/a/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/yulore/sdk/ivr/a/a;->f:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/yulore/sdk/ivr/a/a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yulore/sdk/ivr/a/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/yulore/sdk/ivr/a/a;)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/yulore/sdk/ivr/a/a;->g:Ljava/io/File;

    return-object v0
.end method

.method private e()Ljava/lang/String;
    .locals 3

    const-string v0, "first"

    const-string v1, "second"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private f()V
    .locals 6

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    const/16 v0, 0x16c

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    iget-object v4, p0, Lcom/yulore/sdk/ivr/a/a;->b:[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_0

    iget-object v4, p0, Lcom/yulore/sdk/ivr/a/a;->b:[Ljava/lang/String;

    aget-object v4, v4, v0

    iget-object v5, p0, Lcom/yulore/sdk/ivr/a/a;->c:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/yulore/sdk/ivr/a/a;->b:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/yulore/sdk/ivr/a/a;->a:[Ljava/lang/String;

    aget-object v4, v4, v0

    iget-object v5, p0, Lcom/yulore/sdk/ivr/a/a;->b:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/yulore/sdk/ivr/e/a;->h:Ljava/util/HashMap;

    if-nez v0, :cond_1

    sput-object v1, Lcom/yulore/sdk/ivr/e/a;->h:Ljava/util/HashMap;

    :cond_1
    sget-object v0, Lcom/yulore/sdk/ivr/e/a;->j:Ljava/util/List;

    if-nez v0, :cond_2

    sput-object v3, Lcom/yulore/sdk/ivr/e/a;->j:Ljava/util/List;

    :cond_2
    sget-object v0, Lcom/yulore/sdk/ivr/e/a;->i:Ljava/util/HashMap;

    if-nez v0, :cond_3

    sput-object v2, Lcom/yulore/sdk/ivr/e/a;->i:Ljava/util/HashMap;

    :cond_3
    return-void
.end method

.method private g()V
    .locals 8

    const/4 v7, 0x0

    new-instance v0, Lcom/yulore/a/a/e/e$a;

    iget-object v1, p0, Lcom/yulore/sdk/ivr/a/a;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/yulore/a/a/e/e$a;-><init>(Landroid/content/Context;)V

    const-string v1, "yulore_ivr"

    invoke-virtual {v0, v1}, Lcom/yulore/a/a/e/e$a;->a(Ljava/lang/String;)Lcom/yulore/a/a/e/e$a;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/yulore/a/a/e/e$a;->a(I)Lcom/yulore/a/a/e/e$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yulore/a/a/e/e$a;->a()Lcom/yulore/a/a/e/e;

    move-result-object v0

    const-string v1, "exists"

    invoke-virtual {v0, v1, v7}, Lcom/yulore/a/a/e/e;->a(Ljava/lang/String;Z)Z

    move-result v1

    iget-object v2, p0, Lcom/yulore/sdk/ivr/a/a;->d:Landroid/content/Context;

    const-string v3, "version"

    invoke-virtual {v0, v3, v7}, Lcom/yulore/a/a/e/e;->a(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/yulore/a/a/e/c;->a(Landroid/content/Context;I)Z

    move-result v2

    const-string v3, "YuloreIVR"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " offline data packet exist = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " assets file is new packet = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/yulore/a/a/e/d;->a(Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v3, p0, Lcom/yulore/sdk/ivr/a/a;->e:Ljava/io/File;

    invoke-static {v3}, Lcom/yulore/a/a/e/c;->c(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    const-string v1, "YuloreIVR"

    const-string v2, " the target path does not exist or the offline data packet is not complete"

    invoke-static {v1, v2}, Lcom/yulore/a/a/e/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/yulore/sdk/ivr/a/a$1;

    invoke-direct {v2, p0, v0}, Lcom/yulore/sdk/ivr/a/a$1;-><init>(Lcom/yulore/sdk/ivr/a/a;Lcom/yulore/a/a/e/e;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/yulore/sdk/ivr/c;
    .locals 7

    new-instance v0, Lcom/yulore/sdk/ivr/b/a;

    iget-object v1, p0, Lcom/yulore/sdk/ivr/a/a;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/yulore/sdk/ivr/a/a;->e:Ljava/io/File;

    const/4 v3, -0x1

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/yulore/sdk/ivr/b/a;-><init>(Landroid/content/Context;Ljava/io/File;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected a(Lcom/yulore/sdk/ivr/a;)V
    .locals 6

    const/4 v5, 0x1

    const-string v0, "YuloreIVR"

    const-string v1, " YuloreIvrEngine initializes parameters "

    invoke-static {v0, v1}, Lcom/yulore/a/a/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/yulore/sdk/ivr/a;->b()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yulore/sdk/ivr/e/a;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/yulore/sdk/ivr/a;->c()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yulore/sdk/ivr/e/a;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/yulore/sdk/ivr/a/a;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yulore/sdk/ivr/e/a;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/yulore/sdk/ivr/a/a;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/yulore/sdk/ivr/e/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yulore/sdk/ivr/e/a;->d:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/yulore/sdk/ivr/a;->d()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/yulore/sdk/ivr/a/a;->e:Ljava/io/File;

    invoke-virtual {p1}, Lcom/yulore/sdk/ivr/a;->f()I

    move-result v0

    iput v0, p0, Lcom/yulore/sdk/ivr/a/a;->h:I

    invoke-virtual {p1}, Lcom/yulore/sdk/ivr/a;->g()Lcom/yulore/sdk/ivr/b;

    move-result-object v0

    iput-object v0, p0, Lcom/yulore/sdk/ivr/a/a;->i:Lcom/yulore/sdk/ivr/b;

    iget-object v0, p0, Lcom/yulore/sdk/ivr/a/a;->e:Ljava/io/File;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "yulore/ivr"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yulore/sdk/ivr/a/a;->e:Ljava/io/File;

    :cond_0
    iget v0, p0, Lcom/yulore/sdk/ivr/a/a;->h:I

    if-ge v0, v5, :cond_1

    const/16 v0, 0x18

    iput v0, p0, Lcom/yulore/sdk/ivr/a/a;->h:I

    :cond_1
    iget-object v0, p0, Lcom/yulore/sdk/ivr/a/a;->i:Lcom/yulore/sdk/ivr/b;

    if-nez v0, :cond_2

    sget-object v0, Lcom/yulore/sdk/ivr/b;->b:Lcom/yulore/sdk/ivr/b;

    iput-object v0, p0, Lcom/yulore/sdk/ivr/a/a;->i:Lcom/yulore/sdk/ivr/b;

    :cond_2
    const-string v0, "YuloreIVR"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateIntervalByHour="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/yulore/sdk/ivr/a/a;->h:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateNetworkStrategy="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/yulore/sdk/ivr/a/a;->i:Lcom/yulore/sdk/ivr/b;

    invoke-virtual {v3}, Lcom/yulore/sdk/ivr/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sdk_app_name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/yulore/sdk/ivr/e/a;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ivrFileDir="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/yulore/sdk/ivr/a/a;->e:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "assets file ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/yulore/sdk/ivr/a/a;->d:Landroid/content/Context;

    invoke-static {v4}, Lcom/yulore/a/a/e/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/yulore/a/a/e/d;->a(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/yulore/sdk/ivr/a;->e()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/yulore/sdk/ivr/a/a;->g:Ljava/io/File;

    iget-object v0, p0, Lcom/yulore/sdk/ivr/a/a;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/yulore/a/a/e/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yulore/sdk/ivr/a/a;->f:Ljava/lang/String;

    invoke-direct {p0}, Lcom/yulore/sdk/ivr/a/a;->g()V

    invoke-direct {p0}, Lcom/yulore/sdk/ivr/a/a;->f()V

    return-void
.end method

.method public declared-synchronized a(Lcom/yulore/sdk/ivr/a;Z)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "YuloreIVR"

    const-string v1, " YuloreIvrEngine init "

    invoke-static {v0, v1}, Lcom/yulore/a/a/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const-string v0, "YuloreIVR"

    const-string v1, " debug ouput is opend "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x5

    const-string v1, "Yulore"

    invoke-static {v0, v1}, Lcom/yulore/a/a/e/d;->a(ILjava/lang/String;)V

    :goto_0
    const-string v0, "logcat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Yulore lagcat : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/yulore/sdk/ivr/a/a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yulore/a/a/e/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_1

    const-string v0, "YuloreIVR"

    const-string v1, "config is null"

    invoke-static {v0, v1}, Lcom/yulore/a/a/e/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "config is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    const-string v0, "YuloreIVR"

    const-string v1, " debug ouput is closed "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const-string v1, "Yulore"

    invoke-static {v0, v1}, Lcom/yulore/a/a/e/d;->a(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/yulore/sdk/ivr/a;->a()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "YuloreIVR"

    const-string v1, "config context is null"

    invoke-static {v0, v1}, Lcom/yulore/a/a/e/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "config context is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p1}, Lcom/yulore/sdk/ivr/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "YuloreIVR"

    const-string v1, "config apiKey is empty"

    invoke-static {v0, v1}, Lcom/yulore/a/a/e/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "config apiKey is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-virtual {p1}, Lcom/yulore/sdk/ivr/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "YuloreIVR"

    const-string v1, "config secret is empty"

    invoke-static {v0, v1}, Lcom/yulore/a/a/e/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "config secret is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-virtual {p1}, Lcom/yulore/sdk/ivr/a;->a()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/yulore/sdk/ivr/a/a;->d:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/yulore/sdk/ivr/a/a;->a(Lcom/yulore/sdk/ivr/a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public a(Lcom/yulore/sdk/ivr/b;)V
    .locals 0

    iput-object p1, p0, Lcom/yulore/sdk/ivr/a/a;->i:Lcom/yulore/sdk/ivr/b;

    return-void
.end method

.method public b()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/yulore/sdk/ivr/a/a;->d:Landroid/content/Context;

    return-object v0
.end method

.method public c()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/yulore/sdk/ivr/a/a;->e:Ljava/io/File;

    return-object v0
.end method

.method public d()Lcom/yulore/sdk/ivr/b;
    .locals 1

    iget-object v0, p0, Lcom/yulore/sdk/ivr/a/a;->i:Lcom/yulore/sdk/ivr/b;

    return-object v0
.end method
