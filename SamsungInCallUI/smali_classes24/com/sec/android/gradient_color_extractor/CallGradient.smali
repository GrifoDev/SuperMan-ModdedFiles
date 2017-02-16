.class public Lcom/sec/android/gradient_color_extractor/CallGradient;
.super Lcom/sec/android/gradient_color_extractor/GradientColorExtractor;
.source "CallGradient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gradient_color_extractor/CallGradient$RESOLUTION_MODE;
    }
.end annotation


# static fields
.field static mColorGroup_pallete:[[F

.field static mColor_pallete:[[F

.field static mColor_pallete_for_lockscreen:[[F

.field static mGray_scale_pallete:[[F

.field static mWallPaperColor_highBrightness_pallete:[[F

.field static mWallPaperColor_lowBrightness_pallete:[[F

.field static mWallPaperIndexTable:[I

.field static mWallpaperColor_monotone:[[F


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x3

    .line 21
    new-array v0, v3, [[F

    new-array v1, v3, [F

    fill-array-data v1, :array_0

    aput-object v1, v0, v4

    new-array v1, v3, [F

    fill-array-data v1, :array_1

    aput-object v1, v0, v5

    new-array v1, v3, [F

    fill-array-data v1, :array_2

    aput-object v1, v0, v6

    sput-object v0, Lcom/sec/android/gradient_color_extractor/CallGradient;->mGray_scale_pallete:[[F

    .line 22
    const/16 v0, 0x41

    new-array v0, v0, [[F

    new-array v1, v3, [F

    fill-array-data v1, :array_3

    aput-object v1, v0, v4

    new-array v1, v3, [F

    fill-array-data v1, :array_4

    aput-object v1, v0, v5

    new-array v1, v3, [F

    fill-array-data v1, :array_5

    aput-object v1, v0, v6

    new-array v1, v3, [F

    fill-array-data v1, :array_6

    aput-object v1, v0, v3

    new-array v1, v3, [F

    fill-array-data v1, :array_7

    aput-object v1, v0, v7

    const/4 v1, 0x5

    new-array v2, v3, [F

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [F

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [F

    fill-array-data v2, :array_a

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [F

    fill-array-data v2, :array_b

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [F

    fill-array-data v2, :array_c

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [F

    fill-array-data v2, :array_d

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [F

    fill-array-data v2, :array_e

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [F

    fill-array-data v2, :array_f

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v3, [F

    fill-array-data v2, :array_10

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v3, [F

    fill-array-data v2, :array_11

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v3, [F

    fill-array-data v2, :array_12

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v3, [F

    fill-array-data v2, :array_13

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v3, [F

    fill-array-data v2, :array_14

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v3, [F

    fill-array-data v2, :array_15

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v3, [F

    fill-array-data v2, :array_16

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v3, [F

    fill-array-data v2, :array_17

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v3, [F

    fill-array-data v2, :array_18

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v3, [F

    fill-array-data v2, :array_19

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v3, [F

    fill-array-data v2, :array_1a

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v3, [F

    fill-array-data v2, :array_1b

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v3, [F

    fill-array-data v2, :array_1c

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v3, [F

    fill-array-data v2, :array_1d

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v3, [F

    fill-array-data v2, :array_1e

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v2, v3, [F

    fill-array-data v2, :array_1f

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-array v2, v3, [F

    fill-array-data v2, :array_20

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-array v2, v3, [F

    fill-array-data v2, :array_21

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-array v2, v3, [F

    fill-array-data v2, :array_22

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-array v2, v3, [F

    fill-array-data v2, :array_23

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-array v2, v3, [F

    fill-array-data v2, :array_24

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-array v2, v3, [F

    fill-array-data v2, :array_25

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-array v2, v3, [F

    fill-array-data v2, :array_26

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-array v2, v3, [F

    fill-array-data v2, :array_27

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-array v2, v3, [F

    fill-array-data v2, :array_28

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-array v2, v3, [F

    fill-array-data v2, :array_29

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-array v2, v3, [F

    fill-array-data v2, :array_2a

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-array v2, v3, [F

    fill-array-data v2, :array_2b

    aput-object v2, v0, v1

    const/16 v1, 0x29

    new-array v2, v3, [F

    fill-array-data v2, :array_2c

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    new-array v2, v3, [F

    fill-array-data v2, :array_2d

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    new-array v2, v3, [F

    fill-array-data v2, :array_2e

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    new-array v2, v3, [F

    fill-array-data v2, :array_2f

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    new-array v2, v3, [F

    fill-array-data v2, :array_30

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    new-array v2, v3, [F

    fill-array-data v2, :array_31

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    new-array v2, v3, [F

    fill-array-data v2, :array_32

    aput-object v2, v0, v1

    const/16 v1, 0x30

    new-array v2, v3, [F

    fill-array-data v2, :array_33

    aput-object v2, v0, v1

    const/16 v1, 0x31

    new-array v2, v3, [F

    fill-array-data v2, :array_34

    aput-object v2, v0, v1

    const/16 v1, 0x32

    new-array v2, v3, [F

    fill-array-data v2, :array_35

    aput-object v2, v0, v1

    const/16 v1, 0x33

    new-array v2, v3, [F

    fill-array-data v2, :array_36

    aput-object v2, v0, v1

    const/16 v1, 0x34

    new-array v2, v3, [F

    fill-array-data v2, :array_37

    aput-object v2, v0, v1

    const/16 v1, 0x35

    new-array v2, v3, [F

    fill-array-data v2, :array_38

    aput-object v2, v0, v1

    const/16 v1, 0x36

    new-array v2, v3, [F

    fill-array-data v2, :array_39

    aput-object v2, v0, v1

    const/16 v1, 0x37

    new-array v2, v3, [F

    fill-array-data v2, :array_3a

    aput-object v2, v0, v1

    const/16 v1, 0x38

    new-array v2, v3, [F

    fill-array-data v2, :array_3b

    aput-object v2, v0, v1

    const/16 v1, 0x39

    new-array v2, v3, [F

    fill-array-data v2, :array_3c

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    new-array v2, v3, [F

    fill-array-data v2, :array_3d

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    new-array v2, v3, [F

    fill-array-data v2, :array_3e

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    new-array v2, v3, [F

    fill-array-data v2, :array_3f

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    new-array v2, v3, [F

    fill-array-data v2, :array_40

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    new-array v2, v3, [F

    fill-array-data v2, :array_41

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    new-array v2, v3, [F

    fill-array-data v2, :array_42

    aput-object v2, v0, v1

    const/16 v1, 0x40

    new-array v2, v3, [F

    fill-array-data v2, :array_43

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/gradient_color_extractor/CallGradient;->mColor_pallete:[[F

    .line 25
    const/16 v0, 0xd

    new-array v0, v0, [[F

    new-array v1, v3, [F

    fill-array-data v1, :array_44

    aput-object v1, v0, v4

    new-array v1, v3, [F

    fill-array-data v1, :array_45

    aput-object v1, v0, v5

    new-array v1, v3, [F

    fill-array-data v1, :array_46

    aput-object v1, v0, v6

    new-array v1, v3, [F

    fill-array-data v1, :array_47

    aput-object v1, v0, v3

    new-array v1, v3, [F

    fill-array-data v1, :array_48

    aput-object v1, v0, v7

    const/4 v1, 0x5

    new-array v2, v3, [F

    fill-array-data v2, :array_49

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [F

    fill-array-data v2, :array_4a

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [F

    fill-array-data v2, :array_4b

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [F

    fill-array-data v2, :array_4c

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [F

    fill-array-data v2, :array_4d

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [F

    fill-array-data v2, :array_4e

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [F

    fill-array-data v2, :array_4f

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [F

    fill-array-data v2, :array_50

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/gradient_color_extractor/CallGradient;->mColorGroup_pallete:[[F

    .line 35
    const/16 v0, 0x41

    new-array v0, v0, [[F

    new-array v1, v3, [F

    fill-array-data v1, :array_51

    aput-object v1, v0, v4

    new-array v1, v3, [F

    fill-array-data v1, :array_52

    aput-object v1, v0, v5

    new-array v1, v3, [F

    fill-array-data v1, :array_53

    aput-object v1, v0, v6

    new-array v1, v3, [F

    fill-array-data v1, :array_54

    aput-object v1, v0, v3

    new-array v1, v3, [F

    fill-array-data v1, :array_55

    aput-object v1, v0, v7

    const/4 v1, 0x5

    new-array v2, v3, [F

    fill-array-data v2, :array_56

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [F

    fill-array-data v2, :array_57

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [F

    fill-array-data v2, :array_58

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [F

    fill-array-data v2, :array_59

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [F

    fill-array-data v2, :array_5a

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [F

    fill-array-data v2, :array_5b

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [F

    fill-array-data v2, :array_5c

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [F

    fill-array-data v2, :array_5d

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v3, [F

    fill-array-data v2, :array_5e

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v3, [F

    fill-array-data v2, :array_5f

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v3, [F

    fill-array-data v2, :array_60

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v3, [F

    fill-array-data v2, :array_61

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v3, [F

    fill-array-data v2, :array_62

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v3, [F

    fill-array-data v2, :array_63

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v3, [F

    fill-array-data v2, :array_64

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v3, [F

    fill-array-data v2, :array_65

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v3, [F

    fill-array-data v2, :array_66

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v3, [F

    fill-array-data v2, :array_67

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v3, [F

    fill-array-data v2, :array_68

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v3, [F

    fill-array-data v2, :array_69

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v3, [F

    fill-array-data v2, :array_6a

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v3, [F

    fill-array-data v2, :array_6b

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v3, [F

    fill-array-data v2, :array_6c

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v2, v3, [F

    fill-array-data v2, :array_6d

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-array v2, v3, [F

    fill-array-data v2, :array_6e

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-array v2, v3, [F

    fill-array-data v2, :array_6f

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-array v2, v3, [F

    fill-array-data v2, :array_70

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-array v2, v3, [F

    fill-array-data v2, :array_71

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-array v2, v3, [F

    fill-array-data v2, :array_72

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-array v2, v3, [F

    fill-array-data v2, :array_73

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-array v2, v3, [F

    fill-array-data v2, :array_74

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-array v2, v3, [F

    fill-array-data v2, :array_75

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-array v2, v3, [F

    fill-array-data v2, :array_76

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-array v2, v3, [F

    fill-array-data v2, :array_77

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-array v2, v3, [F

    fill-array-data v2, :array_78

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-array v2, v3, [F

    fill-array-data v2, :array_79

    aput-object v2, v0, v1

    const/16 v1, 0x29

    new-array v2, v3, [F

    fill-array-data v2, :array_7a

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    new-array v2, v3, [F

    fill-array-data v2, :array_7b

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    new-array v2, v3, [F

    fill-array-data v2, :array_7c

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    new-array v2, v3, [F

    fill-array-data v2, :array_7d

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    new-array v2, v3, [F

    fill-array-data v2, :array_7e

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    new-array v2, v3, [F

    fill-array-data v2, :array_7f

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    new-array v2, v3, [F

    fill-array-data v2, :array_80

    aput-object v2, v0, v1

    const/16 v1, 0x30

    new-array v2, v3, [F

    fill-array-data v2, :array_81

    aput-object v2, v0, v1

    const/16 v1, 0x31

    new-array v2, v3, [F

    fill-array-data v2, :array_82

    aput-object v2, v0, v1

    const/16 v1, 0x32

    new-array v2, v3, [F

    fill-array-data v2, :array_83

    aput-object v2, v0, v1

    const/16 v1, 0x33

    new-array v2, v3, [F

    fill-array-data v2, :array_84

    aput-object v2, v0, v1

    const/16 v1, 0x34

    new-array v2, v3, [F

    fill-array-data v2, :array_85

    aput-object v2, v0, v1

    const/16 v1, 0x35

    new-array v2, v3, [F

    fill-array-data v2, :array_86

    aput-object v2, v0, v1

    const/16 v1, 0x36

    new-array v2, v3, [F

    fill-array-data v2, :array_87

    aput-object v2, v0, v1

    const/16 v1, 0x37

    new-array v2, v3, [F

    fill-array-data v2, :array_88

    aput-object v2, v0, v1

    const/16 v1, 0x38

    new-array v2, v3, [F

    fill-array-data v2, :array_89

    aput-object v2, v0, v1

    const/16 v1, 0x39

    new-array v2, v3, [F

    fill-array-data v2, :array_8a

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    new-array v2, v3, [F

    fill-array-data v2, :array_8b

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    new-array v2, v3, [F

    fill-array-data v2, :array_8c

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    new-array v2, v3, [F

    fill-array-data v2, :array_8d

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    new-array v2, v3, [F

    fill-array-data v2, :array_8e

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    new-array v2, v3, [F

    fill-array-data v2, :array_8f

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    new-array v2, v3, [F

    fill-array-data v2, :array_90

    aput-object v2, v0, v1

    const/16 v1, 0x40

    new-array v2, v3, [F

    fill-array-data v2, :array_91

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/gradient_color_extractor/CallGradient;->mColor_pallete_for_lockscreen:[[F

    .line 39
    const/16 v0, 0x26

    new-array v0, v0, [[F

    new-array v1, v3, [F

    fill-array-data v1, :array_92

    aput-object v1, v0, v4

    new-array v1, v3, [F

    fill-array-data v1, :array_93

    aput-object v1, v0, v5

    new-array v1, v3, [F

    fill-array-data v1, :array_94

    aput-object v1, v0, v6

    new-array v1, v3, [F

    fill-array-data v1, :array_95

    aput-object v1, v0, v3

    new-array v1, v3, [F

    fill-array-data v1, :array_96

    aput-object v1, v0, v7

    const/4 v1, 0x5

    new-array v2, v3, [F

    fill-array-data v2, :array_97

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [F

    fill-array-data v2, :array_98

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [F

    fill-array-data v2, :array_99

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [F

    fill-array-data v2, :array_9a

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [F

    fill-array-data v2, :array_9b

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [F

    fill-array-data v2, :array_9c

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [F

    fill-array-data v2, :array_9d

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [F

    fill-array-data v2, :array_9e

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v3, [F

    fill-array-data v2, :array_9f

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v3, [F

    fill-array-data v2, :array_a0

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v3, [F

    fill-array-data v2, :array_a1

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v3, [F

    fill-array-data v2, :array_a2

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v3, [F

    fill-array-data v2, :array_a3

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v3, [F

    fill-array-data v2, :array_a4

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v3, [F

    fill-array-data v2, :array_a5

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v3, [F

    fill-array-data v2, :array_a6

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v3, [F

    fill-array-data v2, :array_a7

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v3, [F

    fill-array-data v2, :array_a8

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v3, [F

    fill-array-data v2, :array_a9

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v3, [F

    fill-array-data v2, :array_aa

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v3, [F

    fill-array-data v2, :array_ab

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v3, [F

    fill-array-data v2, :array_ac

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v3, [F

    fill-array-data v2, :array_ad

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v2, v3, [F

    fill-array-data v2, :array_ae

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-array v2, v3, [F

    fill-array-data v2, :array_af

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-array v2, v3, [F

    fill-array-data v2, :array_b0

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-array v2, v3, [F

    fill-array-data v2, :array_b1

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-array v2, v3, [F

    fill-array-data v2, :array_b2

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-array v2, v3, [F

    fill-array-data v2, :array_b3

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-array v2, v3, [F

    fill-array-data v2, :array_b4

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-array v2, v3, [F

    fill-array-data v2, :array_b5

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-array v2, v3, [F

    fill-array-data v2, :array_b6

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-array v2, v3, [F

    fill-array-data v2, :array_b7

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/gradient_color_extractor/CallGradient;->mWallPaperColor_highBrightness_pallete:[[F

    .line 61
    const/16 v0, 0x26

    new-array v0, v0, [[F

    new-array v1, v3, [F

    fill-array-data v1, :array_b8

    aput-object v1, v0, v4

    new-array v1, v3, [F

    fill-array-data v1, :array_b9

    aput-object v1, v0, v5

    new-array v1, v3, [F

    fill-array-data v1, :array_ba

    aput-object v1, v0, v6

    new-array v1, v3, [F

    fill-array-data v1, :array_bb

    aput-object v1, v0, v3

    new-array v1, v3, [F

    fill-array-data v1, :array_bc

    aput-object v1, v0, v7

    const/4 v1, 0x5

    new-array v2, v3, [F

    fill-array-data v2, :array_bd

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [F

    fill-array-data v2, :array_be

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [F

    fill-array-data v2, :array_bf

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [F

    fill-array-data v2, :array_c0

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [F

    fill-array-data v2, :array_c1

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [F

    fill-array-data v2, :array_c2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [F

    fill-array-data v2, :array_c3

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [F

    fill-array-data v2, :array_c4

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v3, [F

    fill-array-data v2, :array_c5

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v3, [F

    fill-array-data v2, :array_c6

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v3, [F

    fill-array-data v2, :array_c7

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v3, [F

    fill-array-data v2, :array_c8

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v3, [F

    fill-array-data v2, :array_c9

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v3, [F

    fill-array-data v2, :array_ca

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v3, [F

    fill-array-data v2, :array_cb

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v3, [F

    fill-array-data v2, :array_cc

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v3, [F

    fill-array-data v2, :array_cd

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v3, [F

    fill-array-data v2, :array_ce

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v3, [F

    fill-array-data v2, :array_cf

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v3, [F

    fill-array-data v2, :array_d0

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v3, [F

    fill-array-data v2, :array_d1

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v3, [F

    fill-array-data v2, :array_d2

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v3, [F

    fill-array-data v2, :array_d3

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v2, v3, [F

    fill-array-data v2, :array_d4

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-array v2, v3, [F

    fill-array-data v2, :array_d5

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-array v2, v3, [F

    fill-array-data v2, :array_d6

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-array v2, v3, [F

    fill-array-data v2, :array_d7

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-array v2, v3, [F

    fill-array-data v2, :array_d8

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-array v2, v3, [F

    fill-array-data v2, :array_d9

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-array v2, v3, [F

    fill-array-data v2, :array_da

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-array v2, v3, [F

    fill-array-data v2, :array_db

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-array v2, v3, [F

    fill-array-data v2, :array_dc

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-array v2, v3, [F

    fill-array-data v2, :array_dd

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/gradient_color_extractor/CallGradient;->mWallPaperColor_lowBrightness_pallete:[[F

    .line 83
    new-array v0, v6, [[F

    new-array v1, v3, [F

    fill-array-data v1, :array_de

    aput-object v1, v0, v4

    new-array v1, v3, [F

    fill-array-data v1, :array_df

    aput-object v1, v0, v5

    sput-object v0, Lcom/sec/android/gradient_color_extractor/CallGradient;->mWallpaperColor_monotone:[[F

    .line 85
    const/16 v0, 0x13

    new-array v0, v0, [I

    fill-array-data v0, :array_e0

    sput-object v0, Lcom/sec/android/gradient_color_extractor/CallGradient;->mWallPaperIndexTable:[I

    return-void

    .line 21
    :array_0
    .array-data 4
        0x434d0000    # 205.0f
        0x41880000    # 17.0f
        0x420c0000    # 35.0f
    .end array-data

    :array_1
    .array-data 4
        0x434d0000    # 205.0f
        0x41880000    # 17.0f
        0x42480000    # 50.0f
    .end array-data

    :array_2
    .array-data 4
        0x434d0000    # 205.0f
        0x41500000    # 13.0f
        0x428c0000    # 70.0f
    .end array-data

    .line 22
    :array_3
    .array-data 4
        0x40a00000    # 5.0f
        0x41f00000    # 30.0f
        0x42880000    # 68.0f
    .end array-data

    :array_4
    .array-data 4
        0x41600000    # 14.0f
        0x41f00000    # 30.0f
        0x42820000    # 65.0f
    .end array-data

    :array_5
    .array-data 4
        0x41000000    # 8.0f
        0x42340000    # 45.0f
        0x42860000    # 67.0f
    .end array-data

    :array_6
    .array-data 4
        0x41880000    # 17.0f
        0x423c0000    # 47.0f
        0x42860000    # 67.0f
    .end array-data

    :array_7
    .array-data 4
        0x41c80000    # 25.0f
        0x41f00000    # 30.0f
        0x42780000    # 62.0f
    .end array-data

    :array_8
    .array-data 4
        0x420c0000    # 35.0f
        0x41f00000    # 30.0f
        0x42700000    # 60.0f
    .end array-data

    :array_9
    .array-data 4
        0x42100000    # 36.0f
        0x42200000    # 40.0f
        0x42860000    # 67.0f
    .end array-data

    :array_a
    .array-data 4
        0x42340000    # 45.0f
        0x420c0000    # 35.0f
        0x42780000    # 62.0f
    .end array-data

    :array_b
    .array-data 4
        0x425c0000    # 55.0f
        0x42200000    # 40.0f
        0x42780000    # 62.0f
    .end array-data

    :array_c
    .array-data 4
        0x42340000    # 45.0f
        0x42340000    # 45.0f
        0x42880000    # 68.0f
    .end array-data

    :array_d
    .array-data 4
        0x428a0000    # 69.0f
        0x42140000    # 37.0f
        0x42800000    # 64.0f
    .end array-data

    :array_e
    .array-data 4
        0x429c0000    # 78.0f
        0x41e00000    # 28.0f
        0x42700000    # 60.0f
    .end array-data

    :array_f
    .array-data 4
        0x42b20000    # 89.0f
        0x41f00000    # 30.0f
        0x42860000    # 67.0f
    .end array-data

    :array_10
    .array-data 4
        0x42ce0000    # 103.0f
        0x41f00000    # 30.0f
        0x42820000    # 65.0f
    .end array-data

    :array_11
    .array-data 4
        0x43070000    # 135.0f
        0x41b80000    # 23.0f
        0x42800000    # 64.0f
    .end array-data

    :array_12
    .array-data 4
        0x43020000    # 130.0f
        0x42000000    # 32.0f
        0x42860000    # 67.0f
    .end array-data

    :array_13
    .array-data 4
        0x431b0000    # 155.0f
        0x41c00000    # 24.0f
        0x42700000    # 60.0f
    .end array-data

    :array_14
    .array-data 4
        0x431b0000    # 155.0f
        0x420c0000    # 35.0f
        0x42800000    # 64.0f
    .end array-data

    :array_15
    .array-data 4
        0x432f0000    # 175.0f
        0x41c80000    # 25.0f
        0x42700000    # 60.0f
    .end array-data

    :array_16
    .array-data 4
        0x43220000    # 162.0f
        0x420c0000    # 35.0f
        0x42800000    # 64.0f
    .end array-data

    :array_17
    .array-data 4
        0x43320000    # 178.0f
        0x420c0000    # 35.0f
        0x42800000    # 64.0f
    .end array-data

    :array_18
    .array-data 4
        0x43370000    # 183.0f
        0x420c0000    # 35.0f
        0x42820000    # 65.0f
    .end array-data

    :array_19
    .array-data 4
        0x43450000    # 197.0f
        0x420c0000    # 35.0f
        0x42820000    # 65.0f
    .end array-data

    :array_1a
    .array-data 4
        0x434d0000    # 205.0f
        0x420c0000    # 35.0f
        0x42820000    # 65.0f
    .end array-data

    :array_1b
    .array-data 4
        0x43570000    # 215.0f
        0x41f00000    # 30.0f
        0x42880000    # 68.0f
    .end array-data

    :array_1c
    .array-data 4
        0x435a0000    # 218.0f
        0x41a00000    # 20.0f
        0x42820000    # 65.0f
    .end array-data

    :array_1d
    .array-data 4
        0x43610000    # 225.0f
        0x41f00000    # 30.0f
        0x42820000    # 65.0f
    .end array-data

    :array_1e
    .array-data 4
        0x43750000    # 245.0f
        0x41c80000    # 25.0f
        0x42700000    # 60.0f
    .end array-data

    :array_1f
    .array-data 4
        0x43820000    # 260.0f
        0x41c80000    # 25.0f
        0x42820000    # 65.0f
    .end array-data

    :array_20
    .array-data 4
        0x43820000    # 260.0f
        0x41f00000    # 30.0f
        0x42700000    # 60.0f
    .end array-data

    :array_21
    .array-data 4
        0x438e8000    # 285.0f
        0x41980000    # 19.0f
        0x42700000    # 60.0f
    .end array-data

    :array_22
    .array-data 4
        0x43938000    # 295.0f
        0x41700000    # 15.0f
        0x42700000    # 60.0f
    .end array-data

    :array_23
    .array-data 4
        0x439b0000    # 310.0f
        0x41c80000    # 25.0f
        0x42700000    # 60.0f
    .end array-data

    :array_24
    .array-data 4
        0x439d8000    # 315.0f
        0x41b80000    # 23.0f
        0x42860000    # 67.0f
    .end array-data

    :array_25
    .array-data 4
        0x43a28000    # 325.0f
        0x41b80000    # 23.0f
        0x42820000    # 65.0f
    .end array-data

    :array_26
    .array-data 4
        0x43a78000    # 335.0f
        0x41e80000    # 29.0f
        0x42700000    # 60.0f
    .end array-data

    :array_27
    .array-data 4
        0x43ac8000    # 345.0f
        0x420c0000    # 35.0f
        0x42860000    # 67.0f
    .end array-data

    :array_28
    .array-data 4
        0x43ac8000    # 345.0f
        0x41b80000    # 23.0f
        0x42700000    # 60.0f
    .end array-data

    :array_29
    .array-data 4
        0x43b28000    # 357.0f
        0x42140000    # 37.0f
        0x42860000    # 67.0f
    .end array-data

    :array_2a
    .array-data 4
        0x43b28000    # 357.0f
        0x41c80000    # 25.0f
        0x427c0000    # 63.0f
    .end array-data

    :array_2b
    .array-data 4
        0x40e00000    # 7.0f
        0x42180000    # 38.0f
        0x42680000    # 58.0f
    .end array-data

    :array_2c
    .array-data 4
        0x42680000    # 58.0f
        0x420c0000    # 35.0f
        0x42680000    # 58.0f
    .end array-data

    :array_2d
    .array-data 4
        0x429c0000    # 78.0f
        0x41f80000    # 31.0f
        0x42680000    # 58.0f
    .end array-data

    :array_2e
    .array-data 4
        0x42c20000    # 97.0f
        0x41f00000    # 30.0f
        0x42680000    # 58.0f
    .end array-data

    :array_2f
    .array-data 4
        0x42d20000    # 105.0f
        0x41c00000    # 24.0f
        0x42580000    # 54.0f
    .end array-data

    :array_30
    .array-data 4
        0x43000000    # 128.0f
        0x41b80000    # 23.0f
        0x42580000    # 54.0f
    .end array-data

    :array_31
    .array-data 4
        0x430b0000    # 139.0f
        0x41f00000    # 30.0f
        0x426c0000    # 59.0f
    .end array-data

    :array_32
    .array-data 4
        0x43110000    # 145.0f
        0x41b00000    # 22.0f
        0x426c0000    # 59.0f
    .end array-data

    :array_33
    .array-data 4
        0x431d0000    # 157.0f
        0x42100000    # 36.0f
        0x426c0000    # 59.0f
    .end array-data

    :array_34
    .array-data 4
        0x43250000    # 165.0f
        0x41d00000    # 26.0f
        0x426c0000    # 59.0f
    .end array-data

    :array_35
    .array-data 4
        0x432f0000    # 175.0f
        0x420c0000    # 35.0f
        0x42580000    # 54.0f
    .end array-data

    :array_36
    .array-data 4
        0x43360000    # 182.0f
        0x420c0000    # 35.0f
        0x42680000    # 58.0f
    .end array-data

    :array_37
    .array-data 4
        0x43430000    # 195.0f
        0x42200000    # 40.0f
        0x42680000    # 58.0f
    .end array-data

    :array_38
    .array-data 4
        0x43570000    # 215.0f
        0x41f00000    # 30.0f
        0x42680000    # 58.0f
    .end array-data

    :array_39
    .array-data 4
        0x43610000    # 225.0f
        0x41f00000    # 30.0f
        0x42680000    # 58.0f
    .end array-data

    :array_3a
    .array-data 4
        0x43700000    # 240.0f
        0x41d00000    # 26.0f
        0x42680000    # 58.0f
    .end array-data

    :array_3b
    .array-data 4
        0x437f0000    # 255.0f
        0x41a00000    # 20.0f
        0x42680000    # 58.0f
    .end array-data

    :array_3c
    .array-data 4
        0x43830000    # 262.0f
        0x41f00000    # 30.0f
        0x42680000    # 58.0f
    .end array-data

    :array_3d
    .array-data 4
        0x438e8000    # 285.0f
        0x41f00000    # 30.0f
        0x425c0000    # 55.0f
    .end array-data

    :array_3e
    .array-data 4
        0x43948000    # 297.0f
        0x41900000    # 18.0f
        0x42680000    # 58.0f
    .end array-data

    :array_3f
    .array-data 4
        0x439f8000    # 319.0f
        0x41e00000    # 28.0f
        0x425c0000    # 55.0f
    .end array-data

    :array_40
    .array-data 4
        0x43988000    # 305.0f
        0x41a00000    # 20.0f
        0x425c0000    # 55.0f
    .end array-data

    :array_41
    .array-data 4
        0x43a90000    # 338.0f
        0x41f00000    # 30.0f
        0x42680000    # 58.0f
    .end array-data

    :array_42
    .array-data 4
        0x43ac8000    # 345.0f
        0x41f00000    # 30.0f
        0x42680000    # 58.0f
    .end array-data

    :array_43
    .array-data 4
        0x43b30000    # 358.0f
        0x41e00000    # 28.0f
        0x42680000    # 58.0f
    .end array-data

    .line 25
    :array_44
    .array-data 4
        0x0
        0x421c0000    # 39.0f
        0x41a00000    # 20.0f
    .end array-data

    :array_45
    .array-data 4
        0x41a00000    # 20.0f
        0x426c0000    # 59.0f
        0x41a00000    # 20.0f
    .end array-data

    :array_46
    .array-data 4
        0x42200000    # 40.0f
        0x429e0000    # 79.0f
        0x41a00000    # 20.0f
    .end array-data

    :array_47
    .array-data 4
        0x42700000    # 60.0f
        0x42c60000    # 99.0f
        0x41c80000    # 25.0f
    .end array-data

    :array_48
    .array-data 4
        0x42a00000    # 80.0f
        0x431f0000    # 159.0f
        0x41f00000    # 30.0f
    .end array-data

    :array_49
    .array-data 4
        0x430c0000    # 140.0f
        0x43330000    # 179.0f
        0x41f00000    # 30.0f
    .end array-data

    :array_4a
    .array-data 4
        0x43200000    # 160.0f
        0x43470000    # 199.0f
        0x41f00000    # 30.0f
    .end array-data

    :array_4b
    .array-data 4
        0x43340000    # 180.0f
        0x435b0000    # 219.0f
        0x41f00000    # 30.0f
    .end array-data

    :array_4c
    .array-data 4
        0x43480000    # 200.0f
        0x43818000    # 259.0f
        0x41f00000    # 30.0f
    .end array-data

    :array_4d
    .array-data 4
        0x43700000    # 240.0f
        0x43818000    # 259.0f
        0x41f00000    # 30.0f
    .end array-data

    :array_4e
    .array-data 4
        0x43700000    # 240.0f
        0x438b8000    # 279.0f
        0x41f00000    # 30.0f
    .end array-data

    :array_4f
    .array-data 4
        0x43820000    # 260.0f
        0x43a98000    # 339.0f
        0x41f00000    # 30.0f
    .end array-data

    :array_50
    .array-data 4
        0x43960000    # 300.0f
        0x43b40000    # 360.0f
        0x41f00000    # 30.0f
    .end array-data

    .line 35
    :array_51
    .array-data 4
        0x40a00000    # 5.0f
        0x41f00000    # 30.0f
        0x42880000    # 68.0f
    .end array-data

    :array_52
    .array-data 4
        0x41600000    # 14.0f
        0x41f00000    # 30.0f
        0x42820000    # 65.0f
    .end array-data

    :array_53
    .array-data 4
        0x41000000    # 8.0f
        0x42340000    # 45.0f
        0x42860000    # 67.0f
    .end array-data

    :array_54
    .array-data 4
        0x41880000    # 17.0f
        0x423c0000    # 47.0f
        0x42860000    # 67.0f
    .end array-data

    :array_55
    .array-data 4
        0x41c80000    # 25.0f
        0x41f00000    # 30.0f
        0x42780000    # 62.0f
    .end array-data

    :array_56
    .array-data 4
        0x420c0000    # 35.0f
        0x41f00000    # 30.0f
        0x42700000    # 60.0f
    .end array-data

    :array_57
    .array-data 4
        0x42100000    # 36.0f
        0x42200000    # 40.0f
        0x42860000    # 67.0f
    .end array-data

    :array_58
    .array-data 4
        0x42340000    # 45.0f
        0x420c0000    # 35.0f
        0x42780000    # 62.0f
    .end array-data

    :array_59
    .array-data 4
        0x425c0000    # 55.0f
        0x42200000    # 40.0f
        0x42780000    # 62.0f
    .end array-data

    :array_5a
    .array-data 4
        0x42340000    # 45.0f
        0x42340000    # 45.0f
        0x42880000    # 68.0f
    .end array-data

    :array_5b
    .array-data 4
        0x428a0000    # 69.0f
        0x42140000    # 37.0f
        0x42800000    # 64.0f
    .end array-data

    :array_5c
    .array-data 4
        0x429c0000    # 78.0f
        0x41e00000    # 28.0f
        0x42700000    # 60.0f
    .end array-data

    :array_5d
    .array-data 4
        0x42b20000    # 89.0f
        0x41f00000    # 30.0f
        0x42860000    # 67.0f
    .end array-data

    :array_5e
    .array-data 4
        0x42ce0000    # 103.0f
        0x41f00000    # 30.0f
        0x42820000    # 65.0f
    .end array-data

    :array_5f
    .array-data 4
        0x43070000    # 135.0f
        0x41b80000    # 23.0f
        0x42800000    # 64.0f
    .end array-data

    :array_60
    .array-data 4
        0x43020000    # 130.0f
        0x42000000    # 32.0f
        0x42860000    # 67.0f
    .end array-data

    :array_61
    .array-data 4
        0x431b0000    # 155.0f
        0x41c00000    # 24.0f
        0x42700000    # 60.0f
    .end array-data

    :array_62
    .array-data 4
        0x431b0000    # 155.0f
        0x420c0000    # 35.0f
        0x42800000    # 64.0f
    .end array-data

    :array_63
    .array-data 4
        0x432f0000    # 175.0f
        0x41c80000    # 25.0f
        0x42700000    # 60.0f
    .end array-data

    :array_64
    .array-data 4
        0x43220000    # 162.0f
        0x420c0000    # 35.0f
        0x42800000    # 64.0f
    .end array-data

    :array_65
    .array-data 4
        0x43320000    # 178.0f
        0x420c0000    # 35.0f
        0x42800000    # 64.0f
    .end array-data

    :array_66
    .array-data 4
        0x43370000    # 183.0f
        0x420c0000    # 35.0f
        0x42820000    # 65.0f
    .end array-data

    :array_67
    .array-data 4
        0x43450000    # 197.0f
        0x420c0000    # 35.0f
        0x42820000    # 65.0f
    .end array-data

    :array_68
    .array-data 4
        0x434d0000    # 205.0f
        0x420c0000    # 35.0f
        0x42820000    # 65.0f
    .end array-data

    :array_69
    .array-data 4
        0x43570000    # 215.0f
        0x41f00000    # 30.0f
        0x42880000    # 68.0f
    .end array-data

    :array_6a
    .array-data 4
        0x435a0000    # 218.0f
        0x41a00000    # 20.0f
        0x42820000    # 65.0f
    .end array-data

    :array_6b
    .array-data 4
        0x43610000    # 225.0f
        0x41f00000    # 30.0f
        0x42820000    # 65.0f
    .end array-data

    :array_6c
    .array-data 4
        0x43750000    # 245.0f
        0x41c80000    # 25.0f
        0x42700000    # 60.0f
    .end array-data

    :array_6d
    .array-data 4
        0x43820000    # 260.0f
        0x41c80000    # 25.0f
        0x42820000    # 65.0f
    .end array-data

    :array_6e
    .array-data 4
        0x43820000    # 260.0f
        0x41f00000    # 30.0f
        0x42700000    # 60.0f
    .end array-data

    :array_6f
    .array-data 4
        0x438e8000    # 285.0f
        0x41980000    # 19.0f
        0x42700000    # 60.0f
    .end array-data

    :array_70
    .array-data 4
        0x43938000    # 295.0f
        0x41700000    # 15.0f
        0x42700000    # 60.0f
    .end array-data

    :array_71
    .array-data 4
        0x439b0000    # 310.0f
        0x41c80000    # 25.0f
        0x42700000    # 60.0f
    .end array-data

    :array_72
    .array-data 4
        0x439d8000    # 315.0f
        0x41b80000    # 23.0f
        0x42860000    # 67.0f
    .end array-data

    :array_73
    .array-data 4
        0x43a28000    # 325.0f
        0x41b80000    # 23.0f
        0x42820000    # 65.0f
    .end array-data

    :array_74
    .array-data 4
        0x43a78000    # 335.0f
        0x41e80000    # 29.0f
        0x42700000    # 60.0f
    .end array-data

    :array_75
    .array-data 4
        0x43ac8000    # 345.0f
        0x420c0000    # 35.0f
        0x42860000    # 67.0f
    .end array-data

    :array_76
    .array-data 4
        0x43ac8000    # 345.0f
        0x41b80000    # 23.0f
        0x42700000    # 60.0f
    .end array-data

    :array_77
    .array-data 4
        0x43b28000    # 357.0f
        0x42140000    # 37.0f
        0x42860000    # 67.0f
    .end array-data

    :array_78
    .array-data 4
        0x43b28000    # 357.0f
        0x41c80000    # 25.0f
        0x427c0000    # 63.0f
    .end array-data

    :array_79
    .array-data 4
        0x40e00000    # 7.0f
        0x42180000    # 38.0f
        0x42680000    # 58.0f
    .end array-data

    :array_7a
    .array-data 4
        0x42680000    # 58.0f
        0x420c0000    # 35.0f
        0x42680000    # 58.0f
    .end array-data

    :array_7b
    .array-data 4
        0x429c0000    # 78.0f
        0x41f80000    # 31.0f
        0x42680000    # 58.0f
    .end array-data

    :array_7c
    .array-data 4
        0x42c20000    # 97.0f
        0x41f00000    # 30.0f
        0x42680000    # 58.0f
    .end array-data

    :array_7d
    .array-data 4
        0x42d20000    # 105.0f
        0x41c00000    # 24.0f
        0x42580000    # 54.0f
    .end array-data

    :array_7e
    .array-data 4
        0x43000000    # 128.0f
        0x41b80000    # 23.0f
        0x42580000    # 54.0f
    .end array-data

    :array_7f
    .array-data 4
        0x430b0000    # 139.0f
        0x41f00000    # 30.0f
        0x426c0000    # 59.0f
    .end array-data

    :array_80
    .array-data 4
        0x43110000    # 145.0f
        0x41b00000    # 22.0f
        0x426c0000    # 59.0f
    .end array-data

    :array_81
    .array-data 4
        0x431d0000    # 157.0f
        0x42100000    # 36.0f
        0x426c0000    # 59.0f
    .end array-data

    :array_82
    .array-data 4
        0x43250000    # 165.0f
        0x41d00000    # 26.0f
        0x426c0000    # 59.0f
    .end array-data

    :array_83
    .array-data 4
        0x432f0000    # 175.0f
        0x420c0000    # 35.0f
        0x42580000    # 54.0f
    .end array-data

    :array_84
    .array-data 4
        0x43360000    # 182.0f
        0x420c0000    # 35.0f
        0x42680000    # 58.0f
    .end array-data

    :array_85
    .array-data 4
        0x43430000    # 195.0f
        0x42200000    # 40.0f
        0x42680000    # 58.0f
    .end array-data

    :array_86
    .array-data 4
        0x43570000    # 215.0f
        0x41f00000    # 30.0f
        0x42680000    # 58.0f
    .end array-data

    :array_87
    .array-data 4
        0x43610000    # 225.0f
        0x41f00000    # 30.0f
        0x42680000    # 58.0f
    .end array-data

    :array_88
    .array-data 4
        0x43700000    # 240.0f
        0x41d00000    # 26.0f
        0x42680000    # 58.0f
    .end array-data

    :array_89
    .array-data 4
        0x437f0000    # 255.0f
        0x41a00000    # 20.0f
        0x42680000    # 58.0f
    .end array-data

    :array_8a
    .array-data 4
        0x43830000    # 262.0f
        0x41f00000    # 30.0f
        0x42680000    # 58.0f
    .end array-data

    :array_8b
    .array-data 4
        0x438e8000    # 285.0f
        0x41f00000    # 30.0f
        0x425c0000    # 55.0f
    .end array-data

    :array_8c
    .array-data 4
        0x43948000    # 297.0f
        0x41900000    # 18.0f
        0x42680000    # 58.0f
    .end array-data

    :array_8d
    .array-data 4
        0x439f8000    # 319.0f
        0x41e00000    # 28.0f
        0x425c0000    # 55.0f
    .end array-data

    :array_8e
    .array-data 4
        0x43988000    # 305.0f
        0x41a00000    # 20.0f
        0x425c0000    # 55.0f
    .end array-data

    :array_8f
    .array-data 4
        0x43a90000    # 338.0f
        0x41f00000    # 30.0f
        0x42680000    # 58.0f
    .end array-data

    :array_90
    .array-data 4
        0x43ac8000    # 345.0f
        0x41f00000    # 30.0f
        0x42680000    # 58.0f
    .end array-data

    :array_91
    .array-data 4
        0x43b30000    # 358.0f
        0x41e00000    # 28.0f
        0x42680000    # 58.0f
    .end array-data

    .line 39
    :array_92
    .array-data 4
        0x40000000    # 2.0f
        0x42480000    # 50.0f
        0x42700000    # 60.0f
    .end array-data

    :array_93
    .array-data 4
        0x41700000    # 15.0f
        0x41a00000    # 20.0f
        0x41a00000    # 20.0f
    .end array-data

    :array_94
    .array-data 4
        0x41880000    # 17.0f
        0x42480000    # 50.0f
        0x42820000    # 65.0f
    .end array-data

    :array_95
    .array-data 4
        0x41880000    # 17.0f
        0x41a00000    # 20.0f
        0x41a00000    # 20.0f
    .end array-data

    :array_96
    .array-data 4
        0x420c0000    # 35.0f
        0x42700000    # 60.0f
        0x42820000    # 65.0f
    .end array-data

    :array_97
    .array-data 4
        0x420c0000    # 35.0f
        0x41c80000    # 25.0f
        0x41a00000    # 20.0f
    .end array-data

    :array_98
    .array-data 4
        0x42340000    # 45.0f
        0x42700000    # 60.0f
        0x42700000    # 60.0f
    .end array-data

    :array_99
    .array-data 4
        0x42340000    # 45.0f
        0x41c80000    # 25.0f
        0x41a00000    # 20.0f
    .end array-data

    :array_9a
    .array-data 4
        0x42960000    # 75.0f
        0x425c0000    # 55.0f
        0x42480000    # 50.0f
    .end array-data

    :array_9b
    .array-data 4
        0x42960000    # 75.0f
        0x41a00000    # 20.0f
        0x41a00000    # 20.0f
    .end array-data

    :array_9c
    .array-data 4
        0x42b40000    # 90.0f
        0x42340000    # 45.0f
        0x42480000    # 50.0f
    .end array-data

    :array_9d
    .array-data 4
        0x42b40000    # 90.0f
        0x41a00000    # 20.0f
        0x41a00000    # 20.0f
    .end array-data

    :array_9e
    .array-data 4
        0x42d20000    # 105.0f
        0x42480000    # 50.0f
        0x42480000    # 50.0f
    .end array-data

    :array_9f
    .array-data 4
        0x42d20000    # 105.0f
        0x41a00000    # 20.0f
        0x41a00000    # 20.0f
    .end array-data

    :array_a0
    .array-data 4
        0x43000000    # 128.0f
        0x42340000    # 45.0f
        0x42480000    # 50.0f
    .end array-data

    :array_a1
    .array-data 4
        0x43000000    # 128.0f
        0x41a00000    # 20.0f
        0x41a00000    # 20.0f
    .end array-data

    :array_a2
    .array-data 4
        0x43160000    # 150.0f
        0x42480000    # 50.0f
        0x42480000    # 50.0f
    .end array-data

    :array_a3
    .array-data 4
        0x43160000    # 150.0f
        0x41a00000    # 20.0f
        0x41a00000    # 20.0f
    .end array-data

    :array_a4
    .array-data 4
        0x432a0000    # 170.0f
        0x425c0000    # 55.0f
        0x42480000    # 50.0f
    .end array-data

    :array_a5
    .array-data 4
        0x432a0000    # 170.0f
        0x41a00000    # 20.0f
        0x41a00000    # 20.0f
    .end array-data

    :array_a6
    .array-data 4
        0x433e0000    # 190.0f
        0x42820000    # 65.0f
        0x42540000    # 53.0f
    .end array-data

    :array_a7
    .array-data 4
        0x433e0000    # 190.0f
        0x41f00000    # 30.0f
        0x41a00000    # 20.0f
    .end array-data

    :array_a8
    .array-data 4
        0x43590000    # 217.0f
        0x42820000    # 65.0f
        0x425c0000    # 55.0f
    .end array-data

    :array_a9
    .array-data 4
        0x43590000    # 217.0f
        0x41f00000    # 30.0f
        0x41a00000    # 20.0f
    .end array-data

    :array_aa
    .array-data 4
        0x436d0000    # 237.0f
        0x425c0000    # 55.0f
        0x42540000    # 53.0f
    .end array-data

    :array_ab
    .array-data 4
        0x436d0000    # 237.0f
        0x41f00000    # 30.0f
        0x41a00000    # 20.0f
    .end array-data

    :array_ac
    .array-data 4
        0x437f0000    # 255.0f
        0x425c0000    # 55.0f
        0x42480000    # 50.0f
    .end array-data

    :array_ad
    .array-data 4
        0x437f0000    # 255.0f
        0x41f00000    # 30.0f
        0x41a00000    # 20.0f
    .end array-data

    :array_ae
    .array-data 4
        0x43898000    # 275.0f
        0x42800000    # 64.0f
        0x42480000    # 50.0f
    .end array-data

    :array_af
    .array-data 4
        0x43898000    # 275.0f
        0x41f00000    # 30.0f
        0x41a00000    # 20.0f
    .end array-data

    :array_b0
    .array-data 4
        0x43938000    # 295.0f
        0x425c0000    # 55.0f
        0x42480000    # 50.0f
    .end array-data

    :array_b1
    .array-data 4
        0x43938000    # 295.0f
        0x41f00000    # 30.0f
        0x41a00000    # 20.0f
    .end array-data

    :array_b2
    .array-data 4
        0x439d8000    # 315.0f
        0x42480000    # 50.0f
        0x42480000    # 50.0f
    .end array-data

    :array_b3
    .array-data 4
        0x439d8000    # 315.0f
        0x41f00000    # 30.0f
        0x41a00000    # 20.0f
    .end array-data

    :array_b4
    .array-data 4
        0x43a90000    # 338.0f
        0x425c0000    # 55.0f
        0x42540000    # 53.0f
    .end array-data

    :array_b5
    .array-data 4
        0x43a90000    # 338.0f
        0x41f00000    # 30.0f
        0x41a00000    # 20.0f
    .end array-data

    :array_b6
    .array-data 4
        0x43b18000    # 355.0f
        0x42540000    # 53.0f
        0x42480000    # 50.0f
    .end array-data

    :array_b7
    .array-data 4
        0x43b18000    # 355.0f
        0x41c80000    # 25.0f
        0x41a00000    # 20.0f
    .end array-data

    .line 61
    :array_b8
    .array-data 4
        0x40000000    # 2.0f
        0x41f00000    # 30.0f
        0x42700000    # 60.0f
    .end array-data

    :array_b9
    .array-data 4
        0x41700000    # 15.0f
        0x41a00000    # 20.0f
        0x41a00000    # 20.0f
    .end array-data

    :array_ba
    .array-data 4
        0x41880000    # 17.0f
        0x41f00000    # 30.0f
        0x42820000    # 65.0f
    .end array-data

    :array_bb
    .array-data 4
        0x41880000    # 17.0f
        0x41a00000    # 20.0f
        0x41a00000    # 20.0f
    .end array-data

    :array_bc
    .array-data 4
        0x420c0000    # 35.0f
        0x41f00000    # 30.0f
        0x42820000    # 65.0f
    .end array-data

    :array_bd
    .array-data 4
        0x420c0000    # 35.0f
        0x41c80000    # 25.0f
        0x41a00000    # 20.0f
    .end array-data

    :array_be
    .array-data 4
        0x42340000    # 45.0f
        0x41f00000    # 30.0f
        0x42700000    # 60.0f
    .end array-data

    :array_bf
    .array-data 4
        0x42340000    # 45.0f
        0x41c80000    # 25.0f
        0x41a00000    # 20.0f
    .end array-data

    :array_c0
    .array-data 4
        0x42960000    # 75.0f
        0x41f00000    # 30.0f
        0x42480000    # 50.0f
    .end array-data

    :array_c1
    .array-data 4
        0x42960000    # 75.0f
        0x41a00000    # 20.0f
        0x41a00000    # 20.0f
    .end array-data

    :array_c2
    .array-data 4
        0x42b40000    # 90.0f
        0x41f00000    # 30.0f
        0x42480000    # 50.0f
    .end array-data

    :array_c3
    .array-data 4
        0x42b40000    # 90.0f
        0x41a00000    # 20.0f
        0x41a00000    # 20.0f
    .end array-data

    :array_c4
    .array-data 4
        0x42d20000    # 105.0f
        0x41f00000    # 30.0f
        0x42480000    # 50.0f
    .end array-data

    :array_c5
    .array-data 4
        0x42d20000    # 105.0f
        0x41a00000    # 20.0f
        0x41a00000    # 20.0f
    .end array-data

    :array_c6
    .array-data 4
        0x43000000    # 128.0f
        0x41f00000    # 30.0f
        0x42480000    # 50.0f
    .end array-data

    :array_c7
    .array-data 4
        0x43000000    # 128.0f
        0x41a00000    # 20.0f
        0x41a00000    # 20.0f
    .end array-data

    :array_c8
    .array-data 4
        0x43160000    # 150.0f
        0x41f00000    # 30.0f
        0x42480000    # 50.0f
    .end array-data

    :array_c9
    .array-data 4
        0x43160000    # 150.0f
        0x41a00000    # 20.0f
        0x41a00000    # 20.0f
    .end array-data

    :array_ca
    .array-data 4
        0x432a0000    # 170.0f
        0x41f00000    # 30.0f
        0x42480000    # 50.0f
    .end array-data

    :array_cb
    .array-data 4
        0x432a0000    # 170.0f
        0x41a00000    # 20.0f
        0x41a00000    # 20.0f
    .end array-data

    :array_cc
    .array-data 4
        0x433e0000    # 190.0f
        0x41f00000    # 30.0f
        0x42540000    # 53.0f
    .end array-data

    :array_cd
    .array-data 4
        0x433e0000    # 190.0f
        0x41f00000    # 30.0f
        0x41a00000    # 20.0f
    .end array-data

    :array_ce
    .array-data 4
        0x43590000    # 217.0f
        0x41f00000    # 30.0f
        0x425c0000    # 55.0f
    .end array-data

    :array_cf
    .array-data 4
        0x43590000    # 217.0f
        0x41f00000    # 30.0f
        0x41a00000    # 20.0f
    .end array-data

    :array_d0
    .array-data 4
        0x436d0000    # 237.0f
        0x41f00000    # 30.0f
        0x42540000    # 53.0f
    .end array-data

    :array_d1
    .array-data 4
        0x436d0000    # 237.0f
        0x41f00000    # 30.0f
        0x41a00000    # 20.0f
    .end array-data

    :array_d2
    .array-data 4
        0x437f0000    # 255.0f
        0x41f00000    # 30.0f
        0x42480000    # 50.0f
    .end array-data

    :array_d3
    .array-data 4
        0x437f0000    # 255.0f
        0x41f00000    # 30.0f
        0x41a00000    # 20.0f
    .end array-data

    :array_d4
    .array-data 4
        0x43898000    # 275.0f
        0x41f00000    # 30.0f
        0x42480000    # 50.0f
    .end array-data

    :array_d5
    .array-data 4
        0x43898000    # 275.0f
        0x41f00000    # 30.0f
        0x41a00000    # 20.0f
    .end array-data

    :array_d6
    .array-data 4
        0x43938000    # 295.0f
        0x41f00000    # 30.0f
        0x42480000    # 50.0f
    .end array-data

    :array_d7
    .array-data 4
        0x43938000    # 295.0f
        0x41f00000    # 30.0f
        0x41a00000    # 20.0f
    .end array-data

    :array_d8
    .array-data 4
        0x439d8000    # 315.0f
        0x41f00000    # 30.0f
        0x42480000    # 50.0f
    .end array-data

    :array_d9
    .array-data 4
        0x439d8000    # 315.0f
        0x41f00000    # 30.0f
        0x41a00000    # 20.0f
    .end array-data

    :array_da
    .array-data 4
        0x43a90000    # 338.0f
        0x41f00000    # 30.0f
        0x42540000    # 53.0f
    .end array-data

    :array_db
    .array-data 4
        0x43a90000    # 338.0f
        0x41f00000    # 30.0f
        0x41a00000    # 20.0f
    .end array-data

    :array_dc
    .array-data 4
        0x43b18000    # 355.0f
        0x41f00000    # 30.0f
        0x42480000    # 50.0f
    .end array-data

    :array_dd
    .array-data 4
        0x43b18000    # 355.0f
        0x41c80000    # 25.0f
        0x41a00000    # 20.0f
    .end array-data

    .line 83
    :array_de
    .array-data 4
        0x434d0000    # 205.0f
        0x41a00000    # 20.0f
        0x42700000    # 60.0f
    .end array-data

    :array_df
    .array-data 4
        0x434d0000    # 205.0f
        0x41c80000    # 25.0f
        0x41a00000    # 20.0f
    .end array-data

    .line 85
    :array_e0
    .array-data 4
        0x9
        0x1d
        0x27
        0x3b
        0x4f
        0x63
        0x77
        0x8b
        0x9f
        0xb3
        0xc7
        0xdb
        0xef
        0x103
        0x117
        0x12b
        0x13f
        0x153
        0x168
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor;-><init>()V

    .line 91
    return-void
.end method

.method public static findClosestColorFromColorPallete([[FI)I
    .locals 6
    .param p0, "colorPallete"    # [[F
    .param p1, "color"    # I

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 156
    move-object v0, p0

    move v1, p1

    move v4, v2

    move v5, v3

    invoke-static/range {v0 .. v5}, Lcom/sec/android/gradient_color_extractor/CallGradient;->findClosestColorFromColorPallete([[FIFFFF)I

    move-result v0

    return v0
.end method

.method public static findClosestColorFromColorPallete([[FIFFFF)I
    .locals 12
    .param p0, "colorPallete"    # [[F
    .param p1, "color"    # I
    .param p2, "min_s"    # F
    .param p3, "max_s"    # F
    .param p4, "min_b"    # F
    .param p5, "max_b"    # F

    .prologue
    .line 96
    const/4 v6, 0x3

    new-array v1, v6, [F

    .line 97
    .local v1, "hsv":[F
    const/4 v6, 0x0

    aget-object v0, p0, v6

    .line 98
    .local v0, "closestColor":[F
    invoke-static {p1, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 99
    const v4, 0x7f7fffff    # Float.MAX_VALUE

    .line 102
    .local v4, "minLength":F
    sget v6, Lcom/sec/android/gradient_color_extractor/CallGradient;->mGrayscale_limite_s:F

    sget v7, Lcom/sec/android/gradient_color_extractor/CallGradient;->mGrayscale_limite_b:F

    invoke-static {v1, v6, v7}, Lcom/sec/android/gradient_color_extractor/CallGradient;->checkGayScale_with_value([FFF)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 103
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v6, Lcom/sec/android/gradient_color_extractor/CallGradient;->mGray_scale_pallete:[[F

    array-length v6, v6

    if-ge v2, v6, :cond_3

    .line 104
    const/4 v6, 0x3

    new-array v5, v6, [F

    const/4 v6, 0x0

    sget-object v7, Lcom/sec/android/gradient_color_extractor/CallGradient;->mGray_scale_pallete:[[F

    aget-object v7, v7, v2

    const/4 v8, 0x0

    aget v7, v7, v8

    aput v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Lcom/sec/android/gradient_color_extractor/CallGradient;->mGray_scale_pallete:[[F

    aget-object v7, v7, v2

    const/4 v8, 0x1

    aget v7, v7, v8

    const v8, 0x3c23d70a    # 0.01f

    mul-float/2addr v7, v8

    aput v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Lcom/sec/android/gradient_color_extractor/CallGradient;->mGray_scale_pallete:[[F

    aget-object v7, v7, v2

    const/4 v8, 0x2

    aget v7, v7, v8

    const v8, 0x3c23d70a    # 0.01f

    mul-float/2addr v7, v8

    aput v7, v5, v6

    .line 105
    .local v5, "tableColor":[F
    const/4 v6, 0x1

    aget v6, v5, v6

    const/4 v7, 0x1

    aget v7, v1, v7

    sub-float/2addr v6, v7

    float-to-double v6, v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    const/4 v8, 0x2

    aget v8, v5, v8

    const/4 v9, 0x2

    aget v9, v1, v9

    sub-float/2addr v8, v9

    float-to-double v8, v8

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    add-double/2addr v6, v8

    double-to-float v3, v6

    .line 106
    .local v3, "length":F
    cmpg-float v6, v3, v4

    if-gez v6, :cond_0

    .line 107
    move-object v0, v5

    .line 108
    move v4, v3

    .line 103
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 112
    .end local v2    # "i":I
    .end local v3    # "length":F
    .end local v5    # "tableColor":[F
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    array-length v6, p0

    if-ge v2, v6, :cond_3

    .line 113
    const/4 v6, 0x3

    new-array v5, v6, [F

    const/4 v6, 0x0

    aget-object v7, p0, v2

    const/4 v8, 0x0

    aget v7, v7, v8

    aput v7, v5, v6

    const/4 v6, 0x1

    aget-object v7, p0, v2

    const/4 v8, 0x1

    aget v7, v7, v8

    const v8, 0x3c23d70a    # 0.01f

    mul-float/2addr v7, v8

    aput v7, v5, v6

    const/4 v6, 0x2

    aget-object v7, p0, v2

    const/4 v8, 0x2

    aget v7, v7, v8

    const v8, 0x3c23d70a    # 0.01f

    mul-float/2addr v7, v8

    aput v7, v5, v6

    .line 114
    .restart local v5    # "tableColor":[F
    const/4 v6, 0x3

    new-array v6, v6, [F

    fill-array-data v6, :array_0

    invoke-static {v5, v1, v6}, Lcom/sec/android/gradient_color_extractor/CallGradient;->colorDistance_hsv_square2([F[F[F)F

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    mul-float v3, v6, v7

    .line 115
    .restart local v3    # "length":F
    cmpg-float v6, v3, v4

    if-gez v6, :cond_2

    .line 116
    const/4 v6, 0x1

    aget v6, v5, v6

    cmpl-float v6, v6, p2

    if-lez v6, :cond_2

    const/4 v6, 0x1

    aget v6, v5, v6

    cmpg-float v6, v6, p3

    if-gez v6, :cond_2

    const/4 v6, 0x2

    aget v6, v5, v6

    cmpl-float v6, v6, p4

    if-lez v6, :cond_2

    const/4 v6, 0x2

    aget v6, v5, v6

    cmpg-float v6, v6, p5

    if-gez v6, :cond_2

    .line 117
    move-object v0, v5

    .line 118
    move v4, v3

    .line 112
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 123
    .end local v3    # "length":F
    .end local v5    # "tableColor":[F
    :cond_3
    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v6

    return v6

    .line 114
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3dcccccd    # 0.1f
        0x3dcccccd    # 0.1f
    .end array-data
.end method

.method static findColorGroupIndices([F)[I
    .locals 9
    .param p0, "hsv_color"    # [F

    .prologue
    const/4 v8, 0x0

    .line 128
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v6, Lcom/sec/android/gradient_color_extractor/CallGradient;->mColorGroup_pallete:[[F

    array-length v6, v6

    if-ge v0, v6, :cond_1

    .line 130
    sget-object v6, Lcom/sec/android/gradient_color_extractor/CallGradient;->mColorGroup_pallete:[[F

    aget-object v6, v6, v0

    aget v4, v6, v8

    .line 131
    .local v4, "min":F
    sget-object v6, Lcom/sec/android/gradient_color_extractor/CallGradient;->mColorGroup_pallete:[[F

    aget-object v6, v6, v0

    const/4 v7, 0x1

    aget v3, v6, v7

    .line 132
    .local v3, "max":F
    aget v6, p0, v8

    cmpl-float v6, v6, v4

    if-ltz v6, :cond_0

    aget v6, p0, v8

    cmpg-float v6, v6, v3

    if-gez v6, :cond_0

    .line 133
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 137
    .end local v3    # "max":F
    .end local v4    # "min":F
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_3

    .line 138
    const/4 v5, 0x0

    .line 146
    .local v5, "result":[I
    :cond_2
    return-object v5

    .line 140
    .end local v5    # "result":[I
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v5, v6, [I

    .line 141
    .restart local v5    # "result":[I
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 142
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 143
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v5, v0

    .line 142
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method static getAdjustedGradientColor([[F[I)[[I
    .locals 42
    .param p0, "colorPallete"    # [[F
    .param p1, "color"    # [I

    .prologue
    .line 525
    const v33, 0x3e4ccccd    # 0.2f

    .line 526
    .local v33, "min_satuationDiff":F
    const v32, 0x3e4ccccd    # 0.2f

    .line 528
    .local v32, "min_brightnessDiff":F
    const/4 v2, 0x0

    aget v36, p1, v2

    .line 529
    .local v36, "startColor":I
    const/4 v2, 0x1

    aget v14, p1, v2

    .line 530
    .local v14, "endColor":I
    const/4 v2, 0x3

    new-array v0, v2, [F

    move-object/from16 v40, v0

    .line 531
    .local v40, "startColor_hsv":[F
    const/4 v2, 0x3

    new-array v0, v2, [F

    move-object/from16 v18, v0

    .line 532
    .local v18, "endColor_hsv":[F
    move/from16 v0, v36

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 533
    move-object/from16 v0, v18

    invoke-static {v14, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 538
    sget v2, Lcom/sec/android/gradient_color_extractor/CallGradient;->mGrayscale_limite_s:F

    sget v3, Lcom/sec/android/gradient_color_extractor/CallGradient;->mGrayscale_limite_b:F

    move-object/from16 v0, v40

    invoke-static {v0, v2, v3}, Lcom/sec/android/gradient_color_extractor/CallGradient;->checkGayScale_with_value([FFF)Z

    move-result v27

    .line 539
    .local v27, "isStartColorGray":Z
    sget v2, Lcom/sec/android/gradient_color_extractor/CallGradient;->mGrayscale_limite_s:F

    sget v3, Lcom/sec/android/gradient_color_extractor/CallGradient;->mGrayscale_limite_b:F

    move-object/from16 v0, v18

    invoke-static {v0, v2, v3}, Lcom/sec/android/gradient_color_extractor/CallGradient;->checkGayScale_with_value([FFF)Z

    move-result v26

    .line 541
    .local v26, "isEndColorGray":Z
    if-eqz v27, :cond_6

    if-eqz v26, :cond_6

    .line 558
    const/16 v39, 0x0

    .line 559
    .local v39, "startColor_group":I
    const/16 v17, 0x0

    .line 561
    .local v17, "endColor_group":I
    const/4 v2, 0x2

    aget v2, v40, v2

    sget-object v3, Lcom/sec/android/gradient_color_extractor/CallGradient;->mGray_scale_pallete:[[F

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const/4 v4, 0x2

    aget v3, v3, v4

    const v4, 0x3c23d70a    # 0.01f

    mul-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 562
    const/16 v39, 0x1

    .line 564
    :cond_0
    const/4 v2, 0x2

    aget v2, v18, v2

    sget-object v3, Lcom/sec/android/gradient_color_extractor/CallGradient;->mGray_scale_pallete:[[F

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const/4 v4, 0x2

    aget v3, v3, v4

    const v4, 0x3c23d70a    # 0.01f

    mul-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 565
    const/16 v17, 0x1

    .line 568
    :cond_1
    invoke-static/range {v40 .. v40}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/gradient_color_extractor/CallGradient;->findClosestColorFromColorPallete([[FI)I

    move-result v41

    .line 569
    .local v41, "startColor_palette":I
    invoke-static/range {v18 .. v18}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/gradient_color_extractor/CallGradient;->findClosestColorFromColorPallete([[FI)I

    move-result v19

    .line 571
    .local v19, "endColor_palette":I
    move/from16 v0, v39

    move/from16 v1, v17

    if-ne v0, v1, :cond_5

    .line 572
    if-nez v39, :cond_4

    .line 573
    const/4 v2, 0x3

    new-array v0, v2, [F

    move-object/from16 v40, v0

    .end local v40    # "startColor_hsv":[F
    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/gradient_color_extractor/CallGradient;->mGray_scale_pallete:[[F

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/4 v4, 0x0

    aget v3, v3, v4

    aput v3, v40, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/sec/android/gradient_color_extractor/CallGradient;->mGray_scale_pallete:[[F

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/4 v4, 0x1

    aget v3, v3, v4

    const v4, 0x3c23d70a    # 0.01f

    mul-float/2addr v3, v4

    aput v3, v40, v2

    const/4 v2, 0x2

    sget-object v3, Lcom/sec/android/gradient_color_extractor/CallGradient;->mGray_scale_pallete:[[F

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/4 v4, 0x2

    aget v3, v3, v4

    const v4, 0x3c23d70a    # 0.01f

    mul-float/2addr v3, v4

    aput v3, v40, v2

    .line 574
    .restart local v40    # "startColor_hsv":[F
    const/4 v2, 0x3

    new-array v0, v2, [F

    move-object/from16 v18, v0

    .end local v18    # "endColor_hsv":[F
    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/gradient_color_extractor/CallGradient;->mGray_scale_pallete:[[F

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const/4 v4, 0x0

    aget v3, v3, v4

    aput v3, v18, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/sec/android/gradient_color_extractor/CallGradient;->mGray_scale_pallete:[[F

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const/4 v4, 0x1

    aget v3, v3, v4

    const v4, 0x3c23d70a    # 0.01f

    mul-float/2addr v3, v4

    aput v3, v18, v2

    const/4 v2, 0x2

    sget-object v3, Lcom/sec/android/gradient_color_extractor/CallGradient;->mGray_scale_pallete:[[F

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const/4 v4, 0x2

    aget v3, v3, v4

    const v4, 0x3c23d70a    # 0.01f

    mul-float/2addr v3, v4

    aput v3, v18, v2

    .line 579
    .restart local v18    # "endColor_hsv":[F
    :goto_0
    invoke-static/range {v40 .. v40}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v38

    .line 580
    .local v38, "startColor_adjusted":I
    invoke-static/range {v18 .. v18}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v16

    .line 706
    .end local v17    # "endColor_group":I
    .end local v39    # "startColor_group":I
    .local v16, "endColor_adjusted":I
    :goto_1
    move/from16 v0, v38

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 707
    move/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 708
    const/4 v2, 0x2

    aget v2, v40, v2

    const/4 v3, 0x2

    aget v3, v18, v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v10

    .line 709
    .local v10, "brightnessDiff":F
    const v2, 0x3ee66666    # 0.45f

    cmpl-float v2, v10, v2

    if-ltz v2, :cond_3

    if-eqz v27, :cond_2

    if-nez v26, :cond_3

    .line 711
    :cond_2
    const v12, 0x3e570a3d    # 0.21f

    .line 712
    .local v12, "brightness_diff_min":F
    const v11, 0x3ee147ae    # 0.44f

    .line 715
    .local v11, "brightness_diff_max":F
    if-eqz v26, :cond_1e

    .line 716
    move-object/from16 v23, v18

    .line 717
    .local v23, "hsv_a":[F
    move-object/from16 v24, v40

    .line 722
    .local v24, "hsv_b":[F
    :goto_2
    const/4 v2, 0x2

    aget v2, v23, v2

    const/4 v3, 0x2

    aget v3, v24, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1f

    .line 723
    sget-object v2, Lcom/sec/android/gradient_color_extractor/CallGradient;->mColor_pallete:[[F

    invoke-static/range {v24 .. v24}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v3

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x2

    aget v6, v23, v6

    sub-float/2addr v6, v12

    const/4 v7, 0x2

    aget v7, v23, v7

    sub-float/2addr v7, v11

    invoke-static/range {v2 .. v7}, Lcom/sec/android/gradient_color_extractor/CallGradient;->findClosestColorFromColorPallete([[FIFFFF)I

    move-result v2

    move-object/from16 v0, v24

    invoke-static {v2, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 728
    :goto_3
    invoke-static/range {v40 .. v40}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v38

    .line 729
    invoke-static/range {v18 .. v18}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v16

    .line 731
    .end local v11    # "brightness_diff_max":F
    .end local v12    # "brightness_diff_min":F
    .end local v23    # "hsv_a":[F
    .end local v24    # "hsv_b":[F
    :cond_3
    const/4 v2, 0x2

    new-array v2, v2, [[I

    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x0

    aput v38, v4, v5

    const/4 v5, 0x1

    aput v16, v4, v5

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x0

    aput v41, v4, v5

    const/4 v5, 0x1

    aput v19, v4, v5

    aput-object v4, v2, v3

    return-object v2

    .line 576
    .end local v10    # "brightnessDiff":F
    .end local v16    # "endColor_adjusted":I
    .end local v38    # "startColor_adjusted":I
    .restart local v17    # "endColor_group":I
    .restart local v39    # "startColor_group":I
    :cond_4
    const/4 v2, 0x3

    new-array v0, v2, [F

    move-object/from16 v40, v0

    .end local v40    # "startColor_hsv":[F
    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/gradient_color_extractor/CallGradient;->mGray_scale_pallete:[[F

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const/4 v4, 0x0

    aget v3, v3, v4

    aput v3, v40, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/sec/android/gradient_color_extractor/CallGradient;->mGray_scale_pallete:[[F

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const/4 v4, 0x1

    aget v3, v3, v4

    const v4, 0x3c23d70a    # 0.01f

    mul-float/2addr v3, v4

    aput v3, v40, v2

    const/4 v2, 0x2

    sget-object v3, Lcom/sec/android/gradient_color_extractor/CallGradient;->mGray_scale_pallete:[[F

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const/4 v4, 0x2

    aget v3, v3, v4

    const v4, 0x3c23d70a    # 0.01f

    mul-float/2addr v3, v4

    aput v3, v40, v2

    .line 577
    .restart local v40    # "startColor_hsv":[F
    const/4 v2, 0x3

    new-array v0, v2, [F

    move-object/from16 v18, v0

    .end local v18    # "endColor_hsv":[F
    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/gradient_color_extractor/CallGradient;->mGray_scale_pallete:[[F

    const/4 v4, 0x2

    aget-object v3, v3, v4

    const/4 v4, 0x0

    aget v3, v3, v4

    aput v3, v18, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/sec/android/gradient_color_extractor/CallGradient;->mGray_scale_pallete:[[F

    const/4 v4, 0x2

    aget-object v3, v3, v4

    const/4 v4, 0x1

    aget v3, v3, v4

    const v4, 0x3c23d70a    # 0.01f

    mul-float/2addr v3, v4

    aput v3, v18, v2

    const/4 v2, 0x2

    sget-object v3, Lcom/sec/android/gradient_color_extractor/CallGradient;->mGray_scale_pallete:[[F

    const/4 v4, 0x2

    aget-object v3, v3, v4

    const/4 v4, 0x2

    aget v3, v3, v4

    const v4, 0x3c23d70a    # 0.01f

    mul-float/2addr v3, v4

    aput v3, v18, v2

    .restart local v18    # "endColor_hsv":[F
    goto/16 :goto_0

    .line 583
    :cond_5
    move/from16 v38, v41

    .line 584
    .restart local v38    # "startColor_adjusted":I
    move/from16 v16, v19

    .restart local v16    # "endColor_adjusted":I
    goto/16 :goto_1

    .line 589
    .end local v16    # "endColor_adjusted":I
    .end local v17    # "endColor_group":I
    .end local v19    # "endColor_palette":I
    .end local v38    # "startColor_adjusted":I
    .end local v39    # "startColor_group":I
    .end local v41    # "startColor_palette":I
    :cond_6
    invoke-static/range {v40 .. v40}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/gradient_color_extractor/CallGradient;->findClosestColorFromColorPallete([[FI)I

    move-result v41

    .line 590
    .restart local v41    # "startColor_palette":I
    invoke-static/range {v18 .. v18}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/gradient_color_extractor/CallGradient;->findClosestColorFromColorPallete([[FI)I

    move-result v19

    .line 591
    .restart local v19    # "endColor_palette":I
    if-eqz v26, :cond_a

    .line 592
    move/from16 v0, v41

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 593
    move/from16 v0, v19

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 599
    :goto_4
    const/4 v9, 0x0

    .local v9, "areSameSatuationGroup":Z
    const/4 v8, 0x0

    .line 600
    .local v8, "areSameBrightnessGroup":Z
    const/4 v2, 0x1

    aget v2, v40, v2

    const/4 v3, 0x1

    aget v3, v18, v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v35

    .line 601
    .local v35, "satuationDiff":F
    cmpg-float v2, v35, v33

    if-gtz v2, :cond_7

    .line 602
    const/4 v9, 0x1

    .line 604
    :cond_7
    const/4 v2, 0x2

    aget v2, v40, v2

    const/4 v3, 0x2

    aget v3, v18, v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v10

    .line 605
    .restart local v10    # "brightnessDiff":F
    cmpg-float v2, v10, v32

    if-gtz v2, :cond_8

    .line 606
    const/4 v8, 0x1

    .line 609
    :cond_8
    if-eqz v9, :cond_11

    if-eqz v8, :cond_11

    .line 611
    invoke-static/range {v40 .. v40}, Lcom/sec/android/gradient_color_extractor/CallGradient;->findColorGroupIndices([F)[I

    move-result-object v37

    .line 612
    .local v37, "startColorGroupIndices":[I
    invoke-static/range {v18 .. v18}, Lcom/sec/android/gradient_color_extractor/CallGradient;->findColorGroupIndices([F)[I

    move-result-object v15

    .line 614
    .local v15, "endColorGroupIndices":[I
    const/4 v2, 0x0

    aget v20, v15, v2

    .line 615
    .local v20, "group_maxHue":I
    const/4 v2, 0x0

    aget v21, v15, v2

    .line 616
    .local v21, "group_minHue":I
    sget-object v2, Lcom/sec/android/gradient_color_extractor/CallGradient;->mColorGroup_pallete:[[F

    aget-object v2, v2, v20

    const/4 v3, 0x0

    aget v30, v2, v3

    .line 617
    .local v30, "maxHue":F
    sget-object v2, Lcom/sec/android/gradient_color_extractor/CallGradient;->mColorGroup_pallete:[[F

    aget-object v2, v2, v21

    const/4 v3, 0x0

    aget v31, v2, v3

    .line 618
    .local v31, "minHue":F
    const/16 v25, 0x1

    .local v25, "i":I
    :goto_5
    array-length v2, v15

    move/from16 v0, v25

    if-ge v0, v2, :cond_c

    .line 619
    sget-object v2, Lcom/sec/android/gradient_color_extractor/CallGradient;->mColorGroup_pallete:[[F

    aget v3, v15, v25

    aget-object v2, v2, v3

    const/4 v3, 0x0

    aget v2, v2, v3

    cmpg-float v2, v30, v2

    if-gez v2, :cond_b

    .line 620
    sget-object v2, Lcom/sec/android/gradient_color_extractor/CallGradient;->mColorGroup_pallete:[[F

    aget v3, v15, v25

    aget-object v2, v2, v3

    const/4 v3, 0x0

    aget v30, v2, v3

    .line 621
    aget v20, v15, v25

    .line 618
    :cond_9
    :goto_6
    add-int/lit8 v25, v25, 0x1

    goto :goto_5

    .line 595
    .end local v8    # "areSameBrightnessGroup":Z
    .end local v9    # "areSameSatuationGroup":Z
    .end local v10    # "brightnessDiff":F
    .end local v15    # "endColorGroupIndices":[I
    .end local v20    # "group_maxHue":I
    .end local v21    # "group_minHue":I
    .end local v25    # "i":I
    .end local v30    # "maxHue":F
    .end local v31    # "minHue":F
    .end local v35    # "satuationDiff":F
    .end local v37    # "startColorGroupIndices":[I
    :cond_a
    move/from16 v0, v41

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 596
    move/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    goto :goto_4

    .line 622
    .restart local v8    # "areSameBrightnessGroup":Z
    .restart local v9    # "areSameSatuationGroup":Z
    .restart local v10    # "brightnessDiff":F
    .restart local v15    # "endColorGroupIndices":[I
    .restart local v20    # "group_maxHue":I
    .restart local v21    # "group_minHue":I
    .restart local v25    # "i":I
    .restart local v30    # "maxHue":F
    .restart local v31    # "minHue":F
    .restart local v35    # "satuationDiff":F
    .restart local v37    # "startColorGroupIndices":[I
    :cond_b
    sget-object v2, Lcom/sec/android/gradient_color_extractor/CallGradient;->mColorGroup_pallete:[[F

    aget v3, v15, v25

    aget-object v2, v2, v3

    const/4 v3, 0x0

    aget v2, v2, v3

    cmpl-float v2, v31, v2

    if-lez v2, :cond_9

    .line 623
    sget-object v2, Lcom/sec/android/gradient_color_extractor/CallGradient;->mColorGroup_pallete:[[F

    aget v3, v15, v25

    aget-object v2, v2, v3

    const/4 v3, 0x0

    aget v31, v2, v3

    .line 624
    aget v21, v15, v25

    goto :goto_6

    .line 628
    :cond_c
    const/4 v2, 0x1

    aget v2, v40, v2

    const/4 v3, 0x1

    aget v3, v18, v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_15

    .line 630
    const/16 v22, 0x1

    .line 631
    .local v22, "hasSameDiffGroup":Z
    sget-object v2, Lcom/sec/android/gradient_color_extractor/CallGradient;->mColorGroup_pallete:[[F

    const/4 v3, 0x0

    aget v3, v15, v3

    aget-object v2, v2, v3

    const/4 v3, 0x2

    aget v29, v2, v3

    .line 632
    .local v29, "maxDiff":F
    const/16 v25, 0x1

    :goto_7
    array-length v2, v15

    move/from16 v0, v25

    if-ge v0, v2, :cond_f

    .line 633
    sget-object v2, Lcom/sec/android/gradient_color_extractor/CallGradient;->mColorGroup_pallete:[[F

    aget v3, v15, v25

    aget-object v2, v2, v3

    const/4 v3, 0x2

    aget v2, v2, v3

    cmpg-float v2, v29, v2

    if-gez v2, :cond_d

    .line 634
    sget-object v2, Lcom/sec/android/gradient_color_extractor/CallGradient;->mColorGroup_pallete:[[F

    aget v3, v15, v25

    aget-object v2, v2, v3

    const/4 v3, 0x2

    aget v29, v2, v3

    .line 636
    :cond_d
    sget-object v2, Lcom/sec/android/gradient_color_extractor/CallGradient;->mColorGroup_pallete:[[F

    const/4 v3, 0x0

    aget v3, v15, v3

    aget-object v2, v2, v3

    const/4 v3, 0x2

    aget v2, v2, v3

    sget-object v3, Lcom/sec/android/gradient_color_extractor/CallGradient;->mColorGroup_pallete:[[F

    aget v4, v15, v25

    aget-object v3, v3, v4

    const/4 v4, 0x2

    aget v3, v3, v4

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_e

    .line 637
    const/16 v22, 0x0

    .line 632
    :cond_e
    add-int/lit8 v25, v25, 0x1

    goto :goto_7

    .line 641
    :cond_f
    if-eqz v22, :cond_12

    .line 642
    const/4 v2, 0x0

    aget v3, v18, v2

    sget-object v4, Lcom/sec/android/gradient_color_extractor/CallGradient;->mColorGroup_pallete:[[F

    const/4 v5, 0x0

    aget v5, v15, v5

    aget-object v4, v4, v5

    const/4 v5, 0x2

    aget v4, v4, v5

    sub-float/2addr v3, v4

    aput v3, v18, v2

    .line 686
    .end local v22    # "hasSameDiffGroup":Z
    .end local v29    # "maxDiff":F
    :cond_10
    :goto_8
    const/4 v2, 0x0

    aget v2, v18, v2

    const/high16 v3, 0x43b40000    # 360.0f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1c

    .line 687
    const/4 v2, 0x0

    aget v3, v18, v2

    const/high16 v4, 0x43b40000    # 360.0f

    sub-float/2addr v3, v4

    aput v3, v18, v2

    .line 694
    .end local v15    # "endColorGroupIndices":[I
    .end local v20    # "group_maxHue":I
    .end local v21    # "group_minHue":I
    .end local v25    # "i":I
    .end local v30    # "maxHue":F
    .end local v31    # "minHue":F
    .end local v37    # "startColorGroupIndices":[I
    :cond_11
    :goto_9
    if-eqz v26, :cond_1d

    .line 695
    invoke-static/range {v18 .. v18}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v38

    .line 696
    .restart local v38    # "startColor_adjusted":I
    invoke-static/range {v40 .. v40}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v16

    .restart local v16    # "endColor_adjusted":I
    goto/16 :goto_1

    .line 644
    .end local v16    # "endColor_adjusted":I
    .end local v38    # "startColor_adjusted":I
    .restart local v15    # "endColorGroupIndices":[I
    .restart local v20    # "group_maxHue":I
    .restart local v21    # "group_minHue":I
    .restart local v22    # "hasSameDiffGroup":Z
    .restart local v25    # "i":I
    .restart local v29    # "maxDiff":F
    .restart local v30    # "maxHue":F
    .restart local v31    # "minHue":F
    .restart local v37    # "startColorGroupIndices":[I
    :cond_12
    sget-object v2, Lcom/sec/android/gradient_color_extractor/CallGradient;->mColorGroup_pallete:[[F

    aget-object v2, v2, v20

    const/4 v3, 0x0

    aget v2, v2, v3

    sget-object v3, Lcom/sec/android/gradient_color_extractor/CallGradient;->mColorGroup_pallete:[[F

    aget-object v3, v3, v21

    const/4 v4, 0x0

    aget v3, v3, v4

    sub-float v13, v2, v3

    .line 645
    .local v13, "dir_velocity":F
    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x43340000    # 180.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_13

    .line 646
    const/high16 v2, -0x40800000    # -1.0f

    mul-float/2addr v13, v2

    .line 648
    :cond_13
    const/4 v2, 0x0

    cmpl-float v2, v13, v2

    if-lez v2, :cond_14

    .line 649
    const/4 v2, 0x0

    aget v3, v18, v2

    add-float v3, v3, v29

    aput v3, v18, v2

    goto :goto_8

    .line 651
    :cond_14
    const/4 v2, 0x0

    aget v3, v18, v2

    sub-float v3, v3, v29

    aput v3, v18, v2

    goto :goto_8

    .line 656
    .end local v13    # "dir_velocity":F
    .end local v22    # "hasSameDiffGroup":Z
    .end local v29    # "maxDiff":F
    :cond_15
    const/16 v34, 0x0

    .line 657
    .local v34, "sameGroupNum":I
    const/16 v25, 0x0

    :goto_a
    move-object/from16 v0, v37

    array-length v2, v0

    move/from16 v0, v25

    if-ge v0, v2, :cond_18

    .line 658
    const/16 v28, 0x0

    .local v28, "j":I
    :goto_b
    array-length v2, v15

    move/from16 v0, v28

    if-ge v0, v2, :cond_17

    .line 659
    aget v2, v37, v25

    aget v3, v15, v28

    if-ne v2, v3, :cond_16

    .line 660
    add-int/lit8 v34, v34, 0x1

    .line 658
    :cond_16
    add-int/lit8 v28, v28, 0x1

    goto :goto_b

    .line 657
    :cond_17
    add-int/lit8 v25, v25, 0x1

    goto :goto_a

    .line 665
    .end local v28    # "j":I
    :cond_18
    const/4 v2, 0x1

    move/from16 v0, v34

    if-lt v0, v2, :cond_10

    .line 666
    const/4 v2, 0x0

    aget v2, v18, v2

    const/4 v3, 0x0

    aget v3, v40, v3

    sub-float v13, v2, v3

    .line 668
    .restart local v13    # "dir_velocity":F
    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x43340000    # 180.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1a

    .line 669
    const/4 v2, 0x0

    cmpl-float v2, v13, v2

    if-lez v2, :cond_19

    .line 670
    const/4 v2, 0x0

    aget v3, v18, v2

    sget-object v4, Lcom/sec/android/gradient_color_extractor/CallGradient;->mColorGroup_pallete:[[F

    aget-object v4, v4, v21

    const/4 v5, 0x2

    aget v4, v4, v5

    add-float/2addr v3, v4

    aput v3, v18, v2

    goto/16 :goto_8

    .line 672
    :cond_19
    const/4 v2, 0x0

    aget v3, v18, v2

    sget-object v4, Lcom/sec/android/gradient_color_extractor/CallGradient;->mColorGroup_pallete:[[F

    aget-object v4, v4, v20

    const/4 v5, 0x2

    aget v4, v4, v5

    sub-float/2addr v3, v4

    aput v3, v18, v2

    goto/16 :goto_8

    .line 675
    :cond_1a
    const/4 v2, 0x0

    cmpl-float v2, v13, v2

    if-lez v2, :cond_1b

    .line 676
    const/4 v2, 0x0

    aget v3, v18, v2

    sget-object v4, Lcom/sec/android/gradient_color_extractor/CallGradient;->mColorGroup_pallete:[[F

    aget-object v4, v4, v20

    const/4 v5, 0x2

    aget v4, v4, v5

    add-float/2addr v3, v4

    aput v3, v18, v2

    goto/16 :goto_8

    .line 678
    :cond_1b
    const/4 v2, 0x0

    aget v3, v18, v2

    sget-object v4, Lcom/sec/android/gradient_color_extractor/CallGradient;->mColorGroup_pallete:[[F

    aget-object v4, v4, v21

    const/4 v5, 0x2

    aget v4, v4, v5

    sub-float/2addr v3, v4

    aput v3, v18, v2

    goto/16 :goto_8

    .line 688
    .end local v13    # "dir_velocity":F
    .end local v34    # "sameGroupNum":I
    :cond_1c
    const/4 v2, 0x0

    aget v2, v18, v2

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_11

    .line 689
    const/4 v2, 0x0

    aget v3, v18, v2

    const/high16 v4, 0x43b40000    # 360.0f

    add-float/2addr v3, v4

    aput v3, v18, v2

    goto/16 :goto_9

    .line 698
    .end local v15    # "endColorGroupIndices":[I
    .end local v20    # "group_maxHue":I
    .end local v21    # "group_minHue":I
    .end local v25    # "i":I
    .end local v30    # "maxHue":F
    .end local v31    # "minHue":F
    .end local v37    # "startColorGroupIndices":[I
    :cond_1d
    invoke-static/range {v40 .. v40}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v38

    .line 699
    .restart local v38    # "startColor_adjusted":I
    invoke-static/range {v18 .. v18}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v16

    .restart local v16    # "endColor_adjusted":I
    goto/16 :goto_1

    .line 719
    .end local v8    # "areSameBrightnessGroup":Z
    .end local v9    # "areSameSatuationGroup":Z
    .end local v35    # "satuationDiff":F
    .restart local v11    # "brightness_diff_max":F
    .restart local v12    # "brightness_diff_min":F
    :cond_1e
    move-object/from16 v23, v40

    .line 720
    .restart local v23    # "hsv_a":[F
    move-object/from16 v24, v18

    .restart local v24    # "hsv_b":[F
    goto/16 :goto_2

    .line 725
    :cond_1f
    sget-object v2, Lcom/sec/android/gradient_color_extractor/CallGradient;->mColor_pallete:[[F

    invoke-static/range {v24 .. v24}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v3

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x2

    aget v6, v23, v6

    add-float/2addr v6, v12

    const/4 v7, 0x2

    aget v7, v23, v7

    add-float/2addr v7, v11

    invoke-static/range {v2 .. v7}, Lcom/sec/android/gradient_color_extractor/CallGradient;->findClosestColorFromColorPallete([[FIFFFF)I

    move-result v2

    move-object/from16 v0, v24

    invoke-static {v2, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    goto/16 :goto_3
.end method

.method static getAdjustedGradientColor_wallpaper([Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$DominantColorResult;)[[I
    .locals 26
    .param p0, "dominantoColorResult"    # [Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$DominantColorResult;

    .prologue
    .line 443
    const/16 v20, 0x0

    .line 444
    .local v20, "startColor_index":I
    const/4 v9, 0x1

    .line 446
    .local v9, "endColor_index":I
    aget-object v22, p0, v20

    move-object/from16 v0, v22

    iget v0, v0, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$DominantColorResult;->color:I

    move/from16 v17, v0

    .line 447
    .local v17, "startColor":I
    aget-object v22, p0, v9

    move-object/from16 v0, v22

    iget v6, v0, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$DominantColorResult;->color:I

    .line 450
    .local v6, "endColor":I
    const/16 v22, 0x3

    move/from16 v0, v22

    new-array v0, v0, [F

    move-object/from16 v19, v0

    .line 451
    .local v19, "startColor_hsv":[F
    const/16 v22, 0x3

    move/from16 v0, v22

    new-array v8, v0, [F

    .line 452
    .local v8, "endColor_hsv":[F
    move/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 453
    invoke-static {v6, v8}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 458
    sget v22, Lcom/sec/android/gradient_color_extractor/CallGradient;->mGrayscale_limite_s:F

    sget v23, Lcom/sec/android/gradient_color_extractor/CallGradient;->mGrayscale_limite_b:F

    move-object/from16 v0, v19

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Lcom/sec/android/gradient_color_extractor/CallGradient;->checkGayScale_with_value([FFF)Z

    move-result v15

    .line 459
    .local v15, "isStartColorGray":Z
    sget v22, Lcom/sec/android/gradient_color_extractor/CallGradient;->mGrayscale_limite_s:F

    sget v23, Lcom/sec/android/gradient_color_extractor/CallGradient;->mGrayscale_limite_b:F

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-static {v8, v0, v1}, Lcom/sec/android/gradient_color_extractor/CallGradient;->checkGayScale_with_value([FFF)Z

    move-result v14

    .line 460
    .local v14, "isEndColorGray":Z
    const v16, 0x3e4ccccd    # 0.2f

    .line 462
    .local v16, "low_brightness_board":F
    invoke-static/range {v19 .. v19}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v21

    .line 463
    .local v21, "startColor_palette":I
    invoke-static {v8}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v10

    .line 465
    .local v10, "endColor_palette":I
    if-eqz v15, :cond_1

    if-eqz v14, :cond_1

    .line 467
    const/16 v22, 0x3

    move/from16 v0, v22

    new-array v0, v0, [F

    move-object/from16 v19, v0

    .end local v19    # "startColor_hsv":[F
    const/16 v22, 0x0

    sget-object v23, Lcom/sec/android/gradient_color_extractor/CallGradient;->mWallpaperColor_monotone:[[F

    const/16 v24, 0x0

    aget-object v23, v23, v24

    const/16 v24, 0x0

    aget v23, v23, v24

    aput v23, v19, v22

    const/16 v22, 0x1

    sget-object v23, Lcom/sec/android/gradient_color_extractor/CallGradient;->mWallpaperColor_monotone:[[F

    const/16 v24, 0x0

    aget-object v23, v23, v24

    const/16 v24, 0x1

    aget v23, v23, v24

    const v24, 0x3c23d70a    # 0.01f

    mul-float v23, v23, v24

    aput v23, v19, v22

    const/16 v22, 0x2

    sget-object v23, Lcom/sec/android/gradient_color_extractor/CallGradient;->mWallpaperColor_monotone:[[F

    const/16 v24, 0x0

    aget-object v23, v23, v24

    const/16 v24, 0x2

    aget v23, v23, v24

    const v24, 0x3c23d70a    # 0.01f

    mul-float v23, v23, v24

    aput v23, v19, v22

    .line 468
    .restart local v19    # "startColor_hsv":[F
    const/16 v22, 0x3

    move/from16 v0, v22

    new-array v8, v0, [F

    .end local v8    # "endColor_hsv":[F
    const/16 v22, 0x0

    sget-object v23, Lcom/sec/android/gradient_color_extractor/CallGradient;->mWallpaperColor_monotone:[[F

    const/16 v24, 0x1

    aget-object v23, v23, v24

    const/16 v24, 0x0

    aget v23, v23, v24

    aput v23, v8, v22

    const/16 v22, 0x1

    sget-object v23, Lcom/sec/android/gradient_color_extractor/CallGradient;->mWallpaperColor_monotone:[[F

    const/16 v24, 0x1

    aget-object v23, v23, v24

    const/16 v24, 0x1

    aget v23, v23, v24

    const v24, 0x3c23d70a    # 0.01f

    mul-float v23, v23, v24

    aput v23, v8, v22

    const/16 v22, 0x2

    sget-object v23, Lcom/sec/android/gradient_color_extractor/CallGradient;->mWallpaperColor_monotone:[[F

    const/16 v24, 0x1

    aget-object v23, v23, v24

    const/16 v24, 0x2

    aget v23, v23, v24

    const v24, 0x3c23d70a    # 0.01f

    mul-float v23, v23, v24

    aput v23, v8, v22

    .line 517
    .restart local v8    # "endColor_hsv":[F
    :cond_0
    :goto_0
    invoke-static/range {v19 .. v19}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v18

    .line 518
    .local v18, "startColor_adjusted":I
    invoke-static {v8}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v7

    .line 520
    .local v7, "endColor_adjusted":I
    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [[I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [I

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput v18, v24, v25

    const/16 v25, 0x1

    aput v7, v24, v25

    aput-object v24, v22, v23

    const/16 v23, 0x1

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [I

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput v21, v24, v25

    const/16 v25, 0x1

    aput v10, v24, v25

    aput-object v24, v22, v23

    .end local v7    # "endColor_adjusted":I
    .end local v18    # "startColor_adjusted":I
    :goto_1
    return-object v22

    .line 473
    :cond_1
    const/16 v22, 0x2

    aget v22, v19, v22

    cmpl-float v22, v22, v16

    if-ltz v22, :cond_2

    .line 474
    move-object/from16 v3, v19

    .line 475
    .local v3, "chromaticColor_hsv":[F
    move v11, v9

    .line 476
    .local v11, "grayscaleColor_index":I
    move/from16 v4, v20

    .line 487
    .local v4, "chromaticColor_index":I
    :goto_2
    aget-object v22, p0, v11

    move-object/from16 v0, v22

    iget v0, v0, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$DominantColorResult;->percentage:F

    move/from16 v22, v0

    const v23, 0x3dcccccd    # 0.1f

    cmpg-float v22, v22, v23

    if-gez v22, :cond_3

    .line 488
    sget-object v22, Lcom/sec/android/gradient_color_extractor/CallGradient;->mColor_pallete_for_lockscreen:[[F

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [I

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v25, p0, v4

    move-object/from16 v0, v25

    iget v0, v0, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$DominantColorResult;->color:I

    move/from16 v25, v0

    aput v25, v23, v24

    const/16 v24, 0x1

    aget-object v25, p0, v4

    move-object/from16 v0, v25

    iget v0, v0, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$DominantColorResult;->color:I

    move/from16 v25, v0

    aput v25, v23, v24

    invoke-static/range {v22 .. v23}, Lcom/sec/android/gradient_color_extractor/CallGradient;->getAdjustedGradientColor([[F[I)[[I

    move-result-object v22

    goto :goto_1

    .line 478
    .end local v3    # "chromaticColor_hsv":[F
    .end local v4    # "chromaticColor_index":I
    .end local v11    # "grayscaleColor_index":I
    :cond_2
    move-object v3, v8

    .line 479
    .restart local v3    # "chromaticColor_hsv":[F
    move/from16 v11, v20

    .line 480
    .restart local v11    # "grayscaleColor_index":I
    move v4, v9

    .line 482
    .restart local v4    # "chromaticColor_index":I
    move/from16 v5, v21

    .line 483
    .local v5, "color_buf":I
    move/from16 v21, v10

    .line 484
    move v10, v5

    goto :goto_2

    .line 489
    .end local v5    # "color_buf":I
    :cond_3
    const/16 v22, 0x2

    aget v22, v19, v22

    cmpl-float v22, v22, v16

    if-ltz v22, :cond_4

    const/16 v22, 0x2

    aget v22, v8, v22

    cmpl-float v22, v22, v16

    if-gez v22, :cond_7

    .line 490
    :cond_4
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_3
    sget-object v22, Lcom/sec/android/gradient_color_extractor/CallGradient;->mWallPaperIndexTable:[I

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v12, v0, :cond_0

    .line 491
    const/16 v22, 0x0

    aget v22, v3, v22

    sget-object v23, Lcom/sec/android/gradient_color_extractor/CallGradient;->mWallPaperIndexTable:[I

    aget v23, v23, v12

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    cmpg-float v22, v22, v23

    if-gtz v22, :cond_6

    .line 492
    mul-int/lit8 v13, v12, 0x2

    .line 494
    .local v13, "index":I
    const/16 v22, 0x1

    aget v22, v3, v22

    const v23, 0x3ecccccd    # 0.4f

    cmpl-float v22, v22, v23

    if-ltz v22, :cond_5

    .line 495
    const/16 v22, 0x3

    move/from16 v0, v22

    new-array v0, v0, [F

    move-object/from16 v19, v0

    .end local v19    # "startColor_hsv":[F
    const/16 v22, 0x0

    sget-object v23, Lcom/sec/android/gradient_color_extractor/CallGradient;->mWallPaperColor_highBrightness_pallete:[[F

    aget-object v23, v23, v13

    const/16 v24, 0x0

    aget v23, v23, v24

    aput v23, v19, v22

    const/16 v22, 0x1

    sget-object v23, Lcom/sec/android/gradient_color_extractor/CallGradient;->mWallPaperColor_highBrightness_pallete:[[F

    aget-object v23, v23, v13

    const/16 v24, 0x1

    aget v23, v23, v24

    const v24, 0x3c23d70a    # 0.01f

    mul-float v23, v23, v24

    aput v23, v19, v22

    const/16 v22, 0x2

    sget-object v23, Lcom/sec/android/gradient_color_extractor/CallGradient;->mWallPaperColor_highBrightness_pallete:[[F

    aget-object v23, v23, v13

    const/16 v24, 0x2

    aget v23, v23, v24

    const v24, 0x3c23d70a    # 0.01f

    mul-float v23, v23, v24

    aput v23, v19, v22

    .line 496
    .restart local v19    # "startColor_hsv":[F
    const/16 v22, 0x3

    move/from16 v0, v22

    new-array v8, v0, [F

    .end local v8    # "endColor_hsv":[F
    const/16 v22, 0x0

    sget-object v23, Lcom/sec/android/gradient_color_extractor/CallGradient;->mWallPaperColor_highBrightness_pallete:[[F

    add-int/lit8 v24, v13, 0x1

    aget-object v23, v23, v24

    const/16 v24, 0x0

    aget v23, v23, v24

    aput v23, v8, v22

    const/16 v22, 0x1

    sget-object v23, Lcom/sec/android/gradient_color_extractor/CallGradient;->mWallPaperColor_highBrightness_pallete:[[F

    add-int/lit8 v24, v13, 0x1

    aget-object v23, v23, v24

    const/16 v24, 0x1

    aget v23, v23, v24

    const v24, 0x3c23d70a    # 0.01f

    mul-float v23, v23, v24

    aput v23, v8, v22

    const/16 v22, 0x2

    sget-object v23, Lcom/sec/android/gradient_color_extractor/CallGradient;->mWallPaperColor_highBrightness_pallete:[[F

    add-int/lit8 v24, v13, 0x1

    aget-object v23, v23, v24

    const/16 v24, 0x2

    aget v23, v23, v24

    const v24, 0x3c23d70a    # 0.01f

    mul-float v23, v23, v24

    aput v23, v8, v22

    .restart local v8    # "endColor_hsv":[F
    goto/16 :goto_0

    .line 498
    :cond_5
    const/16 v22, 0x3

    move/from16 v0, v22

    new-array v0, v0, [F

    move-object/from16 v19, v0

    .end local v19    # "startColor_hsv":[F
    const/16 v22, 0x0

    sget-object v23, Lcom/sec/android/gradient_color_extractor/CallGradient;->mWallPaperColor_lowBrightness_pallete:[[F

    aget-object v23, v23, v13

    const/16 v24, 0x0

    aget v23, v23, v24

    aput v23, v19, v22

    const/16 v22, 0x1

    sget-object v23, Lcom/sec/android/gradient_color_extractor/CallGradient;->mWallPaperColor_lowBrightness_pallete:[[F

    aget-object v23, v23, v13

    const/16 v24, 0x1

    aget v23, v23, v24

    const v24, 0x3c23d70a    # 0.01f

    mul-float v23, v23, v24

    aput v23, v19, v22

    const/16 v22, 0x2

    sget-object v23, Lcom/sec/android/gradient_color_extractor/CallGradient;->mWallPaperColor_lowBrightness_pallete:[[F

    aget-object v23, v23, v13

    const/16 v24, 0x2

    aget v23, v23, v24

    const v24, 0x3c23d70a    # 0.01f

    mul-float v23, v23, v24

    aput v23, v19, v22

    .line 499
    .restart local v19    # "startColor_hsv":[F
    const/16 v22, 0x3

    move/from16 v0, v22

    new-array v8, v0, [F

    .end local v8    # "endColor_hsv":[F
    const/16 v22, 0x0

    sget-object v23, Lcom/sec/android/gradient_color_extractor/CallGradient;->mWallPaperColor_lowBrightness_pallete:[[F

    add-int/lit8 v24, v13, 0x1

    aget-object v23, v23, v24

    const/16 v24, 0x0

    aget v23, v23, v24

    aput v23, v8, v22

    const/16 v22, 0x1

    sget-object v23, Lcom/sec/android/gradient_color_extractor/CallGradient;->mWallPaperColor_lowBrightness_pallete:[[F

    add-int/lit8 v24, v13, 0x1

    aget-object v23, v23, v24

    const/16 v24, 0x1

    aget v23, v23, v24

    const v24, 0x3c23d70a    # 0.01f

    mul-float v23, v23, v24

    aput v23, v8, v22

    const/16 v22, 0x2

    sget-object v23, Lcom/sec/android/gradient_color_extractor/CallGradient;->mWallPaperColor_lowBrightness_pallete:[[F

    add-int/lit8 v24, v13, 0x1

    aget-object v23, v23, v24

    const/16 v24, 0x2

    aget v23, v23, v24

    const v24, 0x3c23d70a    # 0.01f

    mul-float v23, v23, v24

    aput v23, v8, v22

    .line 501
    .restart local v8    # "endColor_hsv":[F
    goto/16 :goto_0

    .line 490
    .end local v13    # "index":I
    :cond_6
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_3

    .line 513
    .end local v12    # "i":I
    :cond_7
    sget-object v22, Lcom/sec/android/gradient_color_extractor/CallGradient;->mColor_pallete_for_lockscreen:[[F

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [I

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v25, p0, v20

    move-object/from16 v0, v25

    iget v0, v0, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$DominantColorResult;->color:I

    move/from16 v25, v0

    aput v25, v23, v24

    const/16 v24, 0x1

    aget-object v25, p0, v9

    move-object/from16 v0, v25

    iget v0, v0, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$DominantColorResult;->color:I

    move/from16 v25, v0

    aput v25, v23, v24

    invoke-static/range {v22 .. v23}, Lcom/sec/android/gradient_color_extractor/CallGradient;->getAdjustedGradientColor([[F[I)[[I

    move-result-object v22

    goto/16 :goto_1
.end method

.method static getArithmeticSequence(II)I
    .locals 2
    .param p0, "a"    # I
    .param p1, "b"    # I

    .prologue
    .line 398
    add-int/lit8 v1, p0, -0x1

    sub-int v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 399
    .local v0, "n":I
    add-int v1, p0, p1

    mul-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    return v1
.end method

.method public static getColorGroupPallete()[[F
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/sec/android/gradient_color_extractor/CallGradient;->mColorGroup_pallete:[[F

    return-object v0
.end method

.method public static getColor_pallete()[[F
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/sec/android/gradient_color_extractor/CallGradient;->mColor_pallete:[[F

    return-object v0
.end method

.method public static getGradation_low_machband(IIII)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "color_from"    # I
    .param p1, "color_to"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 222
    sget-object v0, Lcom/sec/android/gradient_color_extractor/CallGradient$RESOLUTION_MODE;->QHD:Lcom/sec/android/gradient_color_extractor/CallGradient$RESOLUTION_MODE;

    invoke-static {p0, p1, p2, p3, v0}, Lcom/sec/android/gradient_color_extractor/CallGradient;->getGradation_low_machband(IIIILcom/sec/android/gradient_color_extractor/CallGradient$RESOLUTION_MODE;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getGradation_low_machband(IIIILcom/sec/android/gradient_color_extractor/CallGradient$RESOLUTION_MODE;)Landroid/graphics/Bitmap;
    .locals 48
    .param p0, "color_from"    # I
    .param p1, "color_to"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "resolution"    # Lcom/sec/android/gradient_color_extractor/CallGradient$RESOLUTION_MODE;

    .prologue
    .line 227
    const/16 v32, 0x4

    .line 228
    .local v32, "min_height":I
    move/from16 v0, p3

    move/from16 v1, v32

    if-ge v0, v1, :cond_0

    .line 229
    move/from16 p3, v32

    .line 245
    :goto_0
    sget-object v4, Lcom/sec/android/gradient_color_extractor/CallGradient$1;->$SwitchMap$com$sec$android$gradient_color_extractor$CallGradient$RESOLUTION_MODE:[I

    invoke-virtual/range {p4 .. p4}, Lcom/sec/android/gradient_color_extractor/CallGradient$RESOLUTION_MODE;->ordinal()I

    move-result v6

    aget v4, v4, v6

    packed-switch v4, :pswitch_data_0

    .line 249
    move/from16 v0, p3

    div-int/lit16 v4, v0, 0x200

    const/4 v6, 0x1

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v23

    .line 250
    .local v23, "gradient_dithering_step_value":I
    const/16 v22, 0x13

    .line 263
    .local v22, "gradient_dither_sample_size":I
    :goto_1
    const/16 v42, 0x2

    .line 265
    .local v42, "sampling_start_index":I
    const/16 v43, 0x1

    .line 266
    .local v43, "scaleUpValue":I
    mul-int v5, p2, v43

    .line 267
    .local v5, "scaled_width":I
    mul-int v9, p3, v43

    .line 269
    .local v9, "scaled_height":I
    move/from16 v16, v23

    .line 270
    .local v16, "dithering_step_value":I
    mul-int v4, v5, v9

    new-array v3, v4, [I

    .line 272
    .local v3, "pixles":[I
    const/16 v38, 0x0

    .local v38, "red":I
    const/16 v24, 0x1

    .local v24, "green":I
    const/4 v10, 0x2

    .line 274
    .local v10, "blue":I
    const/4 v4, 0x3

    new-array v0, v4, [I

    move-object/from16 v19, v0

    const/4 v4, 0x0

    invoke-static/range {p0 .. p0}, Landroid/graphics/Color;->red(I)I

    move-result v6

    aput v6, v19, v4

    const/4 v4, 0x1

    invoke-static/range {p0 .. p0}, Landroid/graphics/Color;->green(I)I

    move-result v6

    aput v6, v19, v4

    const/4 v4, 0x2

    invoke-static/range {p0 .. p0}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    aput v6, v19, v4

    .line 275
    .local v19, "from":[I
    const/4 v4, 0x3

    new-array v0, v4, [I

    move-object/from16 v44, v0

    const/4 v4, 0x0

    invoke-static/range {p1 .. p1}, Landroid/graphics/Color;->red(I)I

    move-result v6

    aput v6, v44, v4

    const/4 v4, 0x1

    invoke-static/range {p1 .. p1}, Landroid/graphics/Color;->green(I)I

    move-result v6

    aput v6, v44, v4

    const/4 v4, 0x2

    invoke-static/range {p1 .. p1}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    aput v6, v44, v4

    .line 287
    .local v44, "to":[I
    new-instance v40, Ljava/util/Random;

    invoke-direct/range {v40 .. v40}, Ljava/util/Random;-><init>()V

    .line 289
    .local v40, "rnad":Ljava/util/Random;
    move/from16 v41, v22

    .line 291
    .local v41, "sampling_size":I
    move/from16 v0, v41

    new-array v0, v0, [[I

    move-object/from16 v36, v0

    .line 292
    .local v36, "prev_in_step":[[I
    move/from16 v0, v41

    new-array v0, v0, [[I

    move-object/from16 v34, v0

    .line 293
    .local v34, "next_in_step":[[I
    const/4 v4, 0x3

    new-array v14, v4, [I

    .line 294
    .local v14, "current_in_step":[I
    const/16 v26, 0x0

    .local v26, "i":I
    :goto_2
    move/from16 v0, v26

    move/from16 v1, v41

    if-ge v0, v1, :cond_4

    .line 295
    const/4 v4, 0x3

    new-array v4, v4, [I

    aput-object v4, v36, v26

    .line 296
    const/4 v4, 0x3

    new-array v4, v4, [I

    aput-object v4, v34, v26

    .line 294
    add-int/lit8 v26, v26, 0x1

    goto :goto_2

    .line 231
    .end local v3    # "pixles":[I
    .end local v5    # "scaled_width":I
    .end local v9    # "scaled_height":I
    .end local v10    # "blue":I
    .end local v14    # "current_in_step":[I
    .end local v16    # "dithering_step_value":I
    .end local v19    # "from":[I
    .end local v22    # "gradient_dither_sample_size":I
    .end local v23    # "gradient_dithering_step_value":I
    .end local v24    # "green":I
    .end local v26    # "i":I
    .end local v34    # "next_in_step":[[I
    .end local v36    # "prev_in_step":[[I
    .end local v38    # "red":I
    .end local v40    # "rnad":Ljava/util/Random;
    .end local v41    # "sampling_size":I
    .end local v42    # "sampling_start_index":I
    .end local v43    # "scaleUpValue":I
    .end local v44    # "to":[I
    :cond_0
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    const-wide/high16 v46, 0x402c000000000000L    # 14.0

    move-wide/from16 v0, v46

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-int v0, v6

    move/from16 v31, v0

    .line 232
    .local v31, "max_limite":I
    const/16 v26, 0x0

    .restart local v26    # "i":I
    :goto_3
    const/4 v4, 0x7

    move/from16 v0, v26

    if-ge v0, v4, :cond_1

    .line 233
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    add-int/lit8 v4, v26, 0x8

    add-int/lit8 v4, v4, 0x1

    int-to-double v0, v4

    move-wide/from16 v46, v0

    move-wide/from16 v0, v46

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-int v0, v6

    move/from16 v35, v0

    .line 234
    .local v35, "next_limite_height":I
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    add-int/lit8 v4, v26, 0x8

    int-to-double v0, v4

    move-wide/from16 v46, v0

    move-wide/from16 v0, v46

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-int v0, v6

    move/from16 v29, v0

    .line 235
    .local v29, "limite_height":I
    move/from16 v0, p3

    move/from16 v1, v29

    if-lt v0, v1, :cond_3

    move/from16 v0, p3

    move/from16 v1, v35

    if-ge v0, v1, :cond_3

    .line 236
    move/from16 p3, v29

    .line 240
    .end local v29    # "limite_height":I
    .end local v35    # "next_limite_height":I
    :cond_1
    move/from16 v0, p3

    move/from16 v1, v31

    if-le v0, v1, :cond_2

    move/from16 p3, v31

    :cond_2
    goto/16 :goto_0

    .line 232
    .restart local v29    # "limite_height":I
    .restart local v35    # "next_limite_height":I
    :cond_3
    add-int/lit8 v26, v26, 0x1

    goto :goto_3

    .line 253
    .end local v26    # "i":I
    .end local v29    # "limite_height":I
    .end local v31    # "max_limite":I
    .end local v35    # "next_limite_height":I
    :pswitch_0
    move/from16 v0, p3

    div-int/lit16 v4, v0, 0x200

    const/4 v6, 0x1

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v23

    .line 254
    .restart local v23    # "gradient_dithering_step_value":I
    const/16 v22, 0x13

    .line 255
    .restart local v22    # "gradient_dither_sample_size":I
    goto/16 :goto_1

    .line 259
    .end local v22    # "gradient_dither_sample_size":I
    .end local v23    # "gradient_dithering_step_value":I
    :pswitch_1
    move/from16 v0, p3

    div-int/lit16 v4, v0, 0x200

    const/4 v6, 0x1

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v23

    .line 260
    .restart local v23    # "gradient_dithering_step_value":I
    const/16 v22, 0x13

    .restart local v22    # "gradient_dither_sample_size":I
    goto/16 :goto_1

    .line 299
    .restart local v3    # "pixles":[I
    .restart local v5    # "scaled_width":I
    .restart local v9    # "scaled_height":I
    .restart local v10    # "blue":I
    .restart local v14    # "current_in_step":[I
    .restart local v16    # "dithering_step_value":I
    .restart local v19    # "from":[I
    .restart local v24    # "green":I
    .restart local v26    # "i":I
    .restart local v34    # "next_in_step":[[I
    .restart local v36    # "prev_in_step":[[I
    .restart local v38    # "red":I
    .restart local v40    # "rnad":Ljava/util/Random;
    .restart local v41    # "sampling_size":I
    .restart local v42    # "sampling_start_index":I
    .restart local v43    # "scaleUpValue":I
    .restart local v44    # "to":[I
    :cond_4
    const/16 v25, 0x0

    .local v25, "h":I
    :goto_4
    move/from16 v0, v25

    if-ge v0, v9, :cond_f

    .line 301
    const/high16 v4, 0x3f800000    # 1.0f

    add-int/lit8 v6, v9, -0x1

    int-to-float v6, v6

    div-float v28, v4, v6

    .line 302
    .local v28, "inv_scaledHeight":F
    const/16 v26, 0x0

    :goto_5
    move/from16 v0, v26

    move/from16 v1, v41

    if-ge v0, v1, :cond_7

    .line 303
    add-int/lit8 v4, v26, 0x1

    mul-int v4, v4, v16

    add-int v4, v4, v25

    int-to-float v0, v4

    move/from16 v20, v0

    .line 304
    .local v20, "gradientStep_next":F
    int-to-float v4, v9

    cmpl-float v4, v20, v4

    if-ltz v4, :cond_5

    add-int/lit8 v4, v9, -0x1

    int-to-float v4, v4

    add-int/lit8 v6, v9, -0x1

    int-to-float v6, v6

    sub-float v6, v20, v6

    sub-float v20, v4, v6

    .line 305
    :cond_5
    mul-float v20, v20, v28

    .line 306
    aget-object v4, v34, v26

    aget v6, v19, v38

    int-to-float v6, v6

    aget v7, v44, v38

    int-to-float v7, v7

    move/from16 v0, v20

    invoke-static {v0, v6, v7}, Lcom/sec/android/gradient_color_extractor/CallGradient;->gradient_lerp(FFF)F

    move-result v6

    float-to-int v6, v6

    aput v6, v4, v38

    .line 307
    aget-object v4, v34, v26

    aget v6, v19, v24

    int-to-float v6, v6

    aget v7, v44, v24

    int-to-float v7, v7

    move/from16 v0, v20

    invoke-static {v0, v6, v7}, Lcom/sec/android/gradient_color_extractor/CallGradient;->gradient_lerp(FFF)F

    move-result v6

    float-to-int v6, v6

    aput v6, v4, v24

    .line 308
    aget-object v4, v34, v26

    aget v6, v19, v10

    int-to-float v6, v6

    aget v7, v44, v10

    int-to-float v7, v7

    move/from16 v0, v20

    invoke-static {v0, v6, v7}, Lcom/sec/android/gradient_color_extractor/CallGradient;->gradient_lerp(FFF)F

    move-result v6

    float-to-int v6, v6

    aput v6, v4, v10

    .line 314
    mul-int v4, v16, v26

    sub-int v4, v25, v4

    int-to-float v0, v4

    move/from16 v21, v0

    .line 315
    .local v21, "gradientStep_prev":F
    const/4 v4, 0x0

    cmpg-float v4, v21, v4

    if-gez v4, :cond_6

    move/from16 v0, v21

    neg-float v0, v0

    move/from16 v21, v0

    .line 316
    :cond_6
    mul-float v21, v21, v28

    .line 317
    aget-object v4, v36, v26

    aget v6, v19, v38

    int-to-float v6, v6

    aget v7, v44, v38

    int-to-float v7, v7

    move/from16 v0, v21

    invoke-static {v0, v6, v7}, Lcom/sec/android/gradient_color_extractor/CallGradient;->gradient_lerp(FFF)F

    move-result v6

    float-to-int v6, v6

    aput v6, v4, v38

    .line 318
    aget-object v4, v36, v26

    aget v6, v19, v24

    int-to-float v6, v6

    aget v7, v44, v24

    int-to-float v7, v7

    move/from16 v0, v21

    invoke-static {v0, v6, v7}, Lcom/sec/android/gradient_color_extractor/CallGradient;->gradient_lerp(FFF)F

    move-result v6

    float-to-int v6, v6

    aput v6, v4, v24

    .line 319
    aget-object v4, v36, v26

    aget v6, v19, v10

    int-to-float v6, v6

    aget v7, v44, v10

    int-to-float v7, v7

    move/from16 v0, v21

    invoke-static {v0, v6, v7}, Lcom/sec/android/gradient_color_extractor/CallGradient;->gradient_lerp(FFF)F

    move-result v6

    float-to-int v6, v6

    aput v6, v4, v10

    .line 302
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_5

    .line 343
    .end local v20    # "gradientStep_next":F
    .end local v21    # "gradientStep_prev":F
    :cond_7
    mul-int v13, v25, v5

    .line 344
    .local v13, "currentCol":I
    add-int/lit8 v4, v25, 0x1

    mul-int v33, v4, v5

    .line 346
    .local v33, "nextCol":I
    const/16 v45, 0x0

    .local v45, "w":I
    :goto_6
    move/from16 v0, v45

    if-ge v0, v5, :cond_e

    .line 348
    const/4 v15, 0x0

    .local v15, "dither":I
    :goto_7
    move/from16 v0, v16

    if-ge v15, v0, :cond_d

    .line 349
    add-int v4, v13, v45

    mul-int v6, v15, v5

    add-int v27, v4, v6

    .line 351
    .local v27, "index_in_array":I
    const/4 v4, 0x1

    const/16 v6, 0x11

    invoke-static {v4, v6}, Lcom/sec/android/gradient_color_extractor/CallGradient;->getArithmeticSequence(II)I

    move-result v4

    const/4 v6, 0x1

    const/16 v7, 0x10

    invoke-static {v6, v7}, Lcom/sec/android/gradient_color_extractor/CallGradient;->getArithmeticSequence(II)I

    move-result v6

    add-int/2addr v4, v6

    mul-int v30, v16, v4

    .line 352
    .local v30, "maxValue":I
    invoke-virtual/range {v40 .. v40}, Ljava/util/Random;->nextInt()I

    move-result v4

    rem-int v4, v4, v30

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v37

    .line 354
    .local v37, "randValue":I
    move v11, v15

    .line 356
    .local v11, "c":I
    const/4 v12, 0x0

    .line 357
    .local v12, "chance_pos":I
    move/from16 v26, v42

    :goto_8
    move/from16 v0, v26

    move/from16 v1, v41

    if-ge v0, v1, :cond_8

    .line 358
    mul-int/lit8 v4, v16, 0x13

    add-int/lit8 v6, v26, 0x1

    mul-int v6, v6, v16

    sub-int/2addr v6, v11

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    sub-int/2addr v4, v6

    const/4 v6, 0x0

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 359
    .local v17, "dn":I
    add-int v12, v12, v17

    .line 360
    move/from16 v0, v37

    if-ge v0, v12, :cond_9

    .line 361
    aget-object v4, v34, v26

    aget v4, v4, v38

    aget-object v6, v34, v26

    aget v6, v6, v24

    aget-object v7, v34, v26

    aget v7, v7, v10

    invoke-static {v4, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    aput v4, v3, v27

    .line 348
    .end local v17    # "dn":I
    :cond_8
    :goto_9
    add-int/lit8 v15, v15, 0x1

    goto :goto_7

    .line 364
    .restart local v17    # "dn":I
    :cond_9
    mul-int/lit8 v4, v16, 0x13

    add-int/lit8 v6, v26, 0x0

    mul-int v6, v6, v16

    neg-int v6, v6

    sub-int/2addr v6, v11

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    sub-int/2addr v4, v6

    const/4 v6, 0x0

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v18

    .line 365
    .local v18, "dp":I
    add-int v12, v12, v18

    .line 366
    move/from16 v0, v37

    if-ge v0, v12, :cond_a

    .line 367
    aget-object v4, v36, v26

    aget v4, v4, v38

    aget-object v6, v36, v26

    aget v6, v6, v24

    aget-object v7, v36, v26

    aget v7, v7, v10

    invoke-static {v4, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    aput v4, v3, v27

    goto :goto_9

    .line 371
    :cond_a
    const/16 v4, 0x12

    move/from16 v0, v26

    if-ne v0, v4, :cond_b

    .line 372
    sub-int v4, v30, v37

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    move/from16 v0, v37

    if-le v4, v0, :cond_c

    .line 373
    const/4 v4, 0x0

    aget-object v4, v34, v4

    aget v4, v4, v38

    const/4 v6, 0x0

    aget-object v6, v34, v6

    aget v6, v6, v24

    const/4 v7, 0x0

    aget-object v7, v34, v7

    aget v7, v7, v10

    invoke-static {v4, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    aput v4, v3, v27

    .line 357
    :cond_b
    :goto_a
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_8

    .line 375
    :cond_c
    const/4 v4, 0x0

    aget-object v4, v36, v4

    aget v4, v4, v38

    const/4 v6, 0x0

    aget-object v6, v36, v6

    aget v6, v6, v24

    const/4 v7, 0x0

    aget-object v7, v36, v7

    aget v7, v7, v10

    invoke-static {v4, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    aput v4, v3, v27

    goto :goto_a

    .line 346
    .end local v11    # "c":I
    .end local v12    # "chance_pos":I
    .end local v17    # "dn":I
    .end local v18    # "dp":I
    .end local v27    # "index_in_array":I
    .end local v30    # "maxValue":I
    .end local v37    # "randValue":I
    :cond_d
    add-int/lit8 v45, v45, 0x1

    goto/16 :goto_6

    .line 299
    .end local v15    # "dither":I
    :cond_e
    add-int v25, v25, v16

    goto/16 :goto_4

    .line 383
    .end local v13    # "currentCol":I
    .end local v28    # "inv_scaledHeight":F
    .end local v33    # "nextCol":I
    .end local v45    # "w":I
    :cond_f
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v9, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 384
    .local v2, "colorBitmap":Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 385
    const/4 v4, 0x1

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v2, v0, v1, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v39

    .line 388
    .local v39, "resultBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 389
    return-object v39

    .line 245
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getGradientColorForWallPaperFromBitmap(Landroid/graphics/Bitmap;)Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$GradientColorResult;
    .locals 3
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 150
    const/16 v0, 0xa

    .line 151
    .local v0, "dominantColorNum":I
    const/4 v1, 0x1

    .line 152
    .local v1, "iterationNum":I
    invoke-static {p0, v0, v1}, Lcom/sec/android/gradient_color_extractor/CallGradient;->getGradientColorForWallPaperFromBitmap(Landroid/graphics/Bitmap;II)Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$GradientColorResult;

    move-result-object v2

    return-object v2
.end method

.method public static getGradientColorForWallPaperFromBitmap(Landroid/graphics/Bitmap;II)Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$GradientColorResult;
    .locals 11
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "dominantColorNum"    # I
    .param p2, "iterationNum"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 162
    const v6, 0x3d4ccccd    # 0.05f

    .line 163
    .local v6, "minimum_threasold_percentage":F
    const v5, 0x3eb33333    # 0.35f

    .line 164
    .local v5, "maximum_threasold_percentage":F
    const v7, 0x3c1374bc    # 0.009f

    .line 166
    .local v7, "minimum_threasold_percentage_for_doubl_grayColor":F
    new-instance v1, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$GradientColorResult;

    invoke-direct {v1}, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$GradientColorResult;-><init>()V

    .line 167
    .local v1, "gradientColorResult":Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$GradientColorResult;
    invoke-static {p1}, Lcom/sec/android/gradient_color_extractor/CallGradient;->makeClusterrGroup_preset1(I)[I

    move-result-object v8

    invoke-static {p0, v8, p2}, Lcom/sec/android/gradient_color_extractor/CallGradient;->kMeans_hsv(Landroid/graphics/Bitmap;[II)[Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$DominantColorResult;

    move-result-object v0

    .line 171
    .local v0, "dominantoColorResult":[Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$DominantColorResult;
    invoke-static {v0}, Lcom/sec/android/gradient_color_extractor/CallGradient;->getAdjustedGradientColor_wallpaper([Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$DominantColorResult;)[[I

    move-result-object v4

    .line 172
    .local v4, "gradientColor_result":[[I
    aget-object v2, v4, v9

    .line 173
    .local v2, "gradientColor_adjusted":[I
    aget-object v3, v4, v10

    .line 176
    .local v3, "gradientColor_palette":[I
    iput-object v0, v1, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$GradientColorResult;->dominantColorResult:[Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$DominantColorResult;

    .line 178
    const/4 v8, 0x2

    new-array v8, v8, [I

    fill-array-data v8, :array_0

    iput-object v8, v1, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$GradientColorResult;->gradientColorIndexForDominantColor:[I

    .line 179
    aget v8, v3, v9

    iput v8, v1, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$GradientColorResult;->gradientColor_a_original:I

    .line 180
    aget v8, v3, v10

    iput v8, v1, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$GradientColorResult;->gradientColor_b_original:I

    .line 181
    aget v8, v2, v9

    iput v8, v1, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$GradientColorResult;->primaryColor:I

    .line 182
    aget v8, v2, v10

    iput v8, v1, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$GradientColorResult;->secondaryColor:I

    .line 183
    aget v8, v2, v9

    iput v8, v1, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$GradientColorResult;->gradientColor_a:I

    .line 184
    aget v8, v2, v10

    iput v8, v1, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$GradientColorResult;->gradientColor_b:I

    .line 185
    return-object v1

    .line 178
    nop

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method public static getGradientColorFromBitmap(Landroid/graphics/Bitmap;)Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$GradientColorResult;
    .locals 3
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 189
    const/16 v0, 0xa

    .line 190
    .local v0, "dominantColorNum":I
    const/4 v1, 0x1

    .line 191
    .local v1, "iterationNum":I
    invoke-static {p0, v0, v1}, Lcom/sec/android/gradient_color_extractor/CallGradient;->getGradientColorFromBitmap(Landroid/graphics/Bitmap;II)Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$GradientColorResult;

    move-result-object v2

    return-object v2
.end method

.method public static getGradientColorFromBitmap(Landroid/graphics/Bitmap;II)Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$GradientColorResult;
    .locals 13
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "dominantColorNum"    # I
    .param p2, "iterationNum"    # I

    .prologue
    .line 197
    const v7, 0x3d4ccccd    # 0.05f

    .line 198
    .local v7, "minimum_threasold_percentage":F
    const v6, 0x3eb33333    # 0.35f

    .line 199
    .local v6, "maximum_threasold_percentage":F
    const v8, 0x3c1374bc    # 0.009f

    .line 201
    .local v8, "minimum_threasold_percentage_for_doubl_grayColor":F
    new-instance v2, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$GradientColorResult;

    invoke-direct {v2}, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$GradientColorResult;-><init>()V

    .line 202
    .local v2, "gradientColorResult":Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$GradientColorResult;
    invoke-static {p1}, Lcom/sec/android/gradient_color_extractor/CallGradient;->makeClusterrGroup_preset1(I)[I

    move-result-object v9

    invoke-static {p0, v9, p2}, Lcom/sec/android/gradient_color_extractor/CallGradient;->kMeans_hsv(Landroid/graphics/Bitmap;[II)[Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$DominantColorResult;

    move-result-object v0

    .line 203
    .local v0, "dominantoColorResult":[Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$DominantColorResult;
    invoke-static {v0, v7, v6}, Lcom/sec/android/gradient_color_extractor/CallGradient;->find_2ChromaticGradientColorIndexFromDominantColor([Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$DominantColorResult;FF)[I

    move-result-object v1

    .line 204
    .local v1, "gradientColorIndices":[I
    const/4 v9, 0x0

    aget v9, v1, v9

    const/4 v10, 0x1

    aget v10, v1, v10

    const/4 v11, 0x0

    invoke-static {v0, v9, v10, v11, v8}, Lcom/sec/android/gradient_color_extractor/CallGradient;->findChromaticColorIndexForDoubleGrayColor([Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$DominantColorResult;IIFF)[I

    move-result-object v1

    .line 205
    sget-object v9, Lcom/sec/android/gradient_color_extractor/CallGradient;->mColor_pallete:[[F

    const/4 v10, 0x2

    new-array v10, v10, [I

    const/4 v11, 0x0

    const/4 v12, 0x0

    aget v12, v1, v12

    aget-object v12, v0, v12

    iget v12, v12, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$DominantColorResult;->color:I

    aput v12, v10, v11

    const/4 v11, 0x1

    const/4 v12, 0x1

    aget v12, v1, v12

    aget-object v12, v0, v12

    iget v12, v12, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$DominantColorResult;->color:I

    aput v12, v10, v11

    invoke-static {v9, v10}, Lcom/sec/android/gradient_color_extractor/CallGradient;->getAdjustedGradientColor([[F[I)[[I

    move-result-object v5

    .line 206
    .local v5, "gradientColor_result":[[I
    const/4 v9, 0x0

    aget-object v3, v5, v9

    .line 207
    .local v3, "gradientColor_adjusted":[I
    const/4 v9, 0x1

    aget-object v4, v5, v9

    .line 210
    .local v4, "gradientColor_palette":[I
    iput-object v0, v2, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$GradientColorResult;->dominantColorResult:[Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$DominantColorResult;

    .line 211
    iput-object v1, v2, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$GradientColorResult;->gradientColorIndexForDominantColor:[I

    .line 212
    const/4 v9, 0x0

    aget v9, v4, v9

    iput v9, v2, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$GradientColorResult;->gradientColor_a_original:I

    .line 213
    const/4 v9, 0x1

    aget v9, v4, v9

    iput v9, v2, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$GradientColorResult;->gradientColor_b_original:I

    .line 214
    const/4 v9, 0x0

    aget v9, v3, v9

    iput v9, v2, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$GradientColorResult;->primaryColor:I

    .line 215
    const/4 v9, 0x1

    aget v9, v3, v9

    iput v9, v2, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$GradientColorResult;->secondaryColor:I

    .line 216
    const/4 v9, 0x0

    aget v9, v3, v9

    iput v9, v2, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$GradientColorResult;->gradientColor_a:I

    .line 217
    const/4 v9, 0x1

    aget v9, v3, v9

    iput v9, v2, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$GradientColorResult;->gradientColor_b:I

    .line 218
    return-object v2
.end method

.method public static getGray_scale_pallete()[[F
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/sec/android/gradient_color_extractor/CallGradient;->mGray_scale_pallete:[[F

    return-object v0
.end method

.method static gradient_lerp(FFF)F
    .locals 1
    .param p0, "t"    # F
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 404
    sub-float v0, p2, p1

    invoke-static {p0, p1, v0}, Lcom/sec/android/gradient_color_extractor/CallGradient;->lerp_sine_in_out(FFF)F

    move-result v0

    return v0
.end method

.method static lerp_bezier(FFFFF)F
    .locals 14
    .param p0, "t"    # F
    .param p1, "start_x"    # F
    .param p2, "delta_x"    # F
    .param p3, "c1x"    # F
    .param p4, "c2x"    # F

    .prologue
    .line 429
    const/4 v3, 0x0

    .line 430
    .local v3, "p1x":F
    const/high16 v4, 0x3f800000    # 1.0f

    .line 431
    .local v4, "p2x":F
    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v6, p0

    float-to-double v6, v6

    const-wide/high16 v8, 0x4008000000000000L    # 3.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    float-to-double v8, v3

    mul-double/2addr v6, v8

    const/high16 v8, 0x40400000    # 3.0f

    mul-float/2addr v8, p0

    float-to-double v8, v8

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float/2addr v10, p0

    float-to-double v10, v10

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    mul-double/2addr v8, v10

    move/from16 v0, p3

    float-to-double v10, v0

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    const-wide/high16 v8, 0x4008000000000000L    # 3.0

    float-to-double v10, p0

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    .line 432
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    mul-double/2addr v8, v10

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float/2addr v10, p0

    float-to-double v10, v10

    mul-double/2addr v8, v10

    move/from16 v0, p4

    float-to-double v10, v0

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    float-to-double v8, p0

    const-wide/high16 v10, 0x4008000000000000L    # 3.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    float-to-double v10, v4

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-float v2, v6

    .line 434
    .local v2, "curve_x":F
    mul-float v6, v2, p2

    add-float v5, v6, p1

    .line 435
    .local v5, "result_x":F
    return v5
.end method

.method static lerp_linear(FFF)F
    .locals 1
    .param p0, "t"    # F
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 410
    mul-float v0, p2, p0

    add-float/2addr v0, p1

    return v0
.end method

.method static lerp_sine_in_out(FFF)F
    .locals 6
    .param p0, "t"    # F
    .param p1, "b"    # F
    .param p2, "c"    # F

    .prologue
    .line 415
    neg-float v0, p2

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    float-to-double v4, p0

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    mul-double/2addr v0, v2

    float-to-double v2, p1

    add-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method static lerp_sine_out_in(FFFF)F
    .locals 8
    .param p0, "t"    # F
    .param p1, "b"    # F
    .param p2, "c"    # F
    .param p3, "d"    # F

    .prologue
    const-wide v6, 0x3ff921fb54442d18L    # 1.5707963267948966

    const/high16 v4, 0x40000000    # 2.0f

    .line 420
    div-float v0, p3, v4

    cmpg-float v0, p0, v0

    if-gez v0, :cond_0

    .line 421
    div-float v0, p2, v4

    mul-float v1, p0, v4

    div-float/2addr v1, p3

    float-to-double v2, v1

    mul-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v1, v2

    mul-float/2addr v0, v1

    add-float/2addr v0, p1

    .line 423
    :goto_0
    return v0

    :cond_0
    div-float v0, p2, v4

    neg-float v0, v0

    mul-float v1, p0, v4

    sub-float/2addr v1, p3

    div-float/2addr v1, p3

    float-to-double v2, v1

    mul-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v1, v2

    mul-float/2addr v0, v1

    div-float v1, p2, v4

    add-float/2addr v0, v1

    div-float v1, p2, v4

    add-float/2addr v1, p1

    add-float/2addr v0, v1

    goto :goto_0
.end method

.method public static setColorGroupPallete([[F)V
    .locals 0
    .param p0, "color_group_pallete"    # [[F

    .prologue
    .line 33
    sput-object p0, Lcom/sec/android/gradient_color_extractor/CallGradient;->mColorGroup_pallete:[[F

    return-void
.end method

.method public static setColorpallete([[F)V
    .locals 0
    .param p0, "color_pallete"    # [[F

    .prologue
    .line 31
    sput-object p0, Lcom/sec/android/gradient_color_extractor/CallGradient;->mColor_pallete:[[F

    return-void
.end method

.method public static setGrayScalePallete([[F)V
    .locals 0
    .param p0, "gray_scale_pallete"    # [[F

    .prologue
    .line 32
    sput-object p0, Lcom/sec/android/gradient_color_extractor/CallGradient;->mGray_scale_pallete:[[F

    return-void
.end method
