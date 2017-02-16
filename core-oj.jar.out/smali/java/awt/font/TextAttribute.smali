.class public final Ljava/awt/font/TextAttribute;
.super Ljava/text/AttributedCharacterIterator$Attribute;
.source "TextAttribute.java"


# static fields
.field public static final BACKGROUND:Ljava/awt/font/TextAttribute;

.field public static final BIDI_EMBEDDING:Ljava/awt/font/TextAttribute;

.field public static final CHAR_REPLACEMENT:Ljava/awt/font/TextAttribute;

.field public static final FAMILY:Ljava/awt/font/TextAttribute;

.field public static final FONT:Ljava/awt/font/TextAttribute;

.field public static final FOREGROUND:Ljava/awt/font/TextAttribute;

.field public static final INPUT_METHOD_HIGHLIGHT:Ljava/awt/font/TextAttribute;

.field public static final INPUT_METHOD_UNDERLINE:Ljava/awt/font/TextAttribute;

.field public static final JUSTIFICATION:Ljava/awt/font/TextAttribute;

.field public static final JUSTIFICATION_FULL:Ljava/lang/Float;

.field public static final JUSTIFICATION_NONE:Ljava/lang/Float;

.field public static final KERNING:Ljava/awt/font/TextAttribute;

.field public static final KERNING_ON:Ljava/lang/Integer;

.field public static final LIGATURES:Ljava/awt/font/TextAttribute;

.field public static final LIGATURES_ON:Ljava/lang/Integer;

.field public static final NUMERIC_SHAPING:Ljava/awt/font/TextAttribute;

.field public static final POSTURE:Ljava/awt/font/TextAttribute;

.field public static final POSTURE_OBLIQUE:Ljava/lang/Float;

.field public static final POSTURE_REGULAR:Ljava/lang/Float;

.field public static final RUN_DIRECTION:Ljava/awt/font/TextAttribute;

.field public static final RUN_DIRECTION_LTR:Ljava/lang/Boolean;

.field public static final RUN_DIRECTION_RTL:Ljava/lang/Boolean;

.field public static final SIZE:Ljava/awt/font/TextAttribute;

.field public static final STRIKETHROUGH:Ljava/awt/font/TextAttribute;

.field public static final STRIKETHROUGH_ON:Ljava/lang/Boolean;

.field public static final SUPERSCRIPT:Ljava/awt/font/TextAttribute;

.field public static final SUPERSCRIPT_SUB:Ljava/lang/Integer;

.field public static final SUPERSCRIPT_SUPER:Ljava/lang/Integer;

.field public static final SWAP_COLORS:Ljava/awt/font/TextAttribute;

.field public static final SWAP_COLORS_ON:Ljava/lang/Boolean;

.field public static final TRACKING:Ljava/awt/font/TextAttribute;

.field public static final TRACKING_LOOSE:Ljava/lang/Float;

.field public static final TRACKING_TIGHT:Ljava/lang/Float;

.field public static final TRANSFORM:Ljava/awt/font/TextAttribute;

.field public static final UNDERLINE:Ljava/awt/font/TextAttribute;

.field public static final UNDERLINE_LOW_DASHED:Ljava/lang/Integer;

.field public static final UNDERLINE_LOW_DOTTED:Ljava/lang/Integer;

.field public static final UNDERLINE_LOW_GRAY:Ljava/lang/Integer;

.field public static final UNDERLINE_LOW_ONE_PIXEL:Ljava/lang/Integer;

.field public static final UNDERLINE_LOW_TWO_PIXEL:Ljava/lang/Integer;

.field public static final UNDERLINE_ON:Ljava/lang/Integer;

.field public static final WEIGHT:Ljava/awt/font/TextAttribute;

.field public static final WEIGHT_BOLD:Ljava/lang/Float;

.field public static final WEIGHT_DEMIBOLD:Ljava/lang/Float;

.field public static final WEIGHT_DEMILIGHT:Ljava/lang/Float;

.field public static final WEIGHT_EXTRABOLD:Ljava/lang/Float;

.field public static final WEIGHT_EXTRA_LIGHT:Ljava/lang/Float;

.field public static final WEIGHT_HEAVY:Ljava/lang/Float;

.field public static final WEIGHT_LIGHT:Ljava/lang/Float;

.field public static final WEIGHT_MEDIUM:Ljava/lang/Float;

.field public static final WEIGHT_REGULAR:Ljava/lang/Float;

.field public static final WEIGHT_SEMIBOLD:Ljava/lang/Float;

.field public static final WEIGHT_ULTRABOLD:Ljava/lang/Float;

.field public static final WIDTH:Ljava/awt/font/TextAttribute;

.field public static final WIDTH_CONDENSED:Ljava/lang/Float;

.field public static final WIDTH_EXTENDED:Ljava/lang/Float;

.field public static final WIDTH_REGULAR:Ljava/lang/Float;

.field public static final WIDTH_SEMI_CONDENSED:Ljava/lang/Float;

.field public static final WIDTH_SEMI_EXTENDED:Ljava/lang/Float;

.field private static final instanceMap:Ljava/util/Map;

.field static final serialVersionUID:J = 0x6b789d8c0de80d46L


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/high16 v6, 0x3f600000    # 0.875f

    const/high16 v5, 0x3f400000    # 0.75f

    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    .line 264
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x1d

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Ljava/awt/font/TextAttribute;->instanceMap:Ljava/util/Map;

    .line 335
    new-instance v0, Ljava/awt/font/TextAttribute;

    const-string/jumbo v1, "family"

    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    .line 334
    sput-object v0, Ljava/awt/font/TextAttribute;->FAMILY:Ljava/awt/font/TextAttribute;

    .line 358
    new-instance v0, Ljava/awt/font/TextAttribute;

    const-string/jumbo v1, "weight"

    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    .line 357
    sput-object v0, Ljava/awt/font/TextAttribute;->WEIGHT:Ljava/awt/font/TextAttribute;

    .line 365
    const/high16 v0, 0x3f000000    # 0.5f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 364
    sput-object v0, Ljava/awt/font/TextAttribute;->WEIGHT_EXTRA_LIGHT:Ljava/lang/Float;

    .line 372
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 371
    sput-object v0, Ljava/awt/font/TextAttribute;->WEIGHT_LIGHT:Ljava/lang/Float;

    .line 380
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 379
    sput-object v0, Ljava/awt/font/TextAttribute;->WEIGHT_DEMILIGHT:Ljava/lang/Float;

    .line 387
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 386
    sput-object v0, Ljava/awt/font/TextAttribute;->WEIGHT_REGULAR:Ljava/lang/Float;

    .line 394
    const/high16 v0, 0x3fa00000    # 1.25f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 393
    sput-object v0, Ljava/awt/font/TextAttribute;->WEIGHT_SEMIBOLD:Ljava/lang/Float;

    .line 402
    const/high16 v0, 0x3fc00000    # 1.5f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 401
    sput-object v0, Ljava/awt/font/TextAttribute;->WEIGHT_MEDIUM:Ljava/lang/Float;

    .line 409
    const/high16 v0, 0x3fe00000    # 1.75f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 408
    sput-object v0, Ljava/awt/font/TextAttribute;->WEIGHT_DEMIBOLD:Ljava/lang/Float;

    .line 416
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 415
    sput-object v0, Ljava/awt/font/TextAttribute;->WEIGHT_BOLD:Ljava/lang/Float;

    .line 423
    const/high16 v0, 0x40100000    # 2.25f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 422
    sput-object v0, Ljava/awt/font/TextAttribute;->WEIGHT_HEAVY:Ljava/lang/Float;

    .line 430
    const/high16 v0, 0x40200000    # 2.5f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 429
    sput-object v0, Ljava/awt/font/TextAttribute;->WEIGHT_EXTRABOLD:Ljava/lang/Float;

    .line 437
    const/high16 v0, 0x40300000    # 2.75f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 436
    sput-object v0, Ljava/awt/font/TextAttribute;->WEIGHT_ULTRABOLD:Ljava/lang/Float;

    .line 455
    new-instance v0, Ljava/awt/font/TextAttribute;

    const-string/jumbo v1, "width"

    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    .line 454
    sput-object v0, Ljava/awt/font/TextAttribute;->WIDTH:Ljava/awt/font/TextAttribute;

    .line 462
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 461
    sput-object v0, Ljava/awt/font/TextAttribute;->WIDTH_CONDENSED:Ljava/lang/Float;

    .line 469
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 468
    sput-object v0, Ljava/awt/font/TextAttribute;->WIDTH_SEMI_CONDENSED:Ljava/lang/Float;

    .line 477
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 476
    sput-object v0, Ljava/awt/font/TextAttribute;->WIDTH_REGULAR:Ljava/lang/Float;

    .line 484
    const/high16 v0, 0x3fa00000    # 1.25f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 483
    sput-object v0, Ljava/awt/font/TextAttribute;->WIDTH_SEMI_EXTENDED:Ljava/lang/Float;

    .line 491
    const/high16 v0, 0x3fc00000    # 1.5f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 490
    sput-object v0, Ljava/awt/font/TextAttribute;->WIDTH_EXTENDED:Ljava/lang/Float;

    .line 516
    new-instance v0, Ljava/awt/font/TextAttribute;

    const-string/jumbo v1, "posture"

    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    .line 515
    sput-object v0, Ljava/awt/font/TextAttribute;->POSTURE:Ljava/awt/font/TextAttribute;

    .line 524
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 523
    sput-object v0, Ljava/awt/font/TextAttribute;->POSTURE_REGULAR:Ljava/lang/Float;

    .line 531
    const v0, 0x3e4ccccd    # 0.2f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 530
    sput-object v0, Ljava/awt/font/TextAttribute;->POSTURE_OBLIQUE:Ljava/lang/Float;

    .line 549
    new-instance v0, Ljava/awt/font/TextAttribute;

    const-string/jumbo v1, "size"

    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    .line 548
    sput-object v0, Ljava/awt/font/TextAttribute;->SIZE:Ljava/awt/font/TextAttribute;

    .line 587
    new-instance v0, Ljava/awt/font/TextAttribute;

    const-string/jumbo v1, "transform"

    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    .line 586
    sput-object v0, Ljava/awt/font/TextAttribute;->TRANSFORM:Ljava/awt/font/TextAttribute;

    .line 608
    new-instance v0, Ljava/awt/font/TextAttribute;

    const-string/jumbo v1, "superscript"

    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    .line 607
    sput-object v0, Ljava/awt/font/TextAttribute;->SUPERSCRIPT:Ljava/awt/font/TextAttribute;

    .line 615
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 614
    sput-object v0, Ljava/awt/font/TextAttribute;->SUPERSCRIPT_SUPER:Ljava/lang/Integer;

    .line 622
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 621
    sput-object v0, Ljava/awt/font/TextAttribute;->SUPERSCRIPT_SUB:Ljava/lang/Integer;

    .line 688
    new-instance v0, Ljava/awt/font/TextAttribute;

    const-string/jumbo v1, "font"

    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    .line 687
    sput-object v0, Ljava/awt/font/TextAttribute;->FONT:Ljava/awt/font/TextAttribute;

    .line 712
    new-instance v0, Ljava/awt/font/TextAttribute;

    const-string/jumbo v1, "char_replacement"

    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    .line 711
    sput-object v0, Ljava/awt/font/TextAttribute;->CHAR_REPLACEMENT:Ljava/awt/font/TextAttribute;

    .line 732
    new-instance v0, Ljava/awt/font/TextAttribute;

    const-string/jumbo v1, "foreground"

    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    .line 731
    sput-object v0, Ljava/awt/font/TextAttribute;->FOREGROUND:Ljava/awt/font/TextAttribute;

    .line 751
    new-instance v0, Ljava/awt/font/TextAttribute;

    const-string/jumbo v1, "background"

    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    .line 750
    sput-object v0, Ljava/awt/font/TextAttribute;->BACKGROUND:Ljava/awt/font/TextAttribute;

    .line 764
    new-instance v0, Ljava/awt/font/TextAttribute;

    const-string/jumbo v1, "underline"

    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    .line 763
    sput-object v0, Ljava/awt/font/TextAttribute;->UNDERLINE:Ljava/awt/font/TextAttribute;

    .line 772
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 771
    sput-object v0, Ljava/awt/font/TextAttribute;->UNDERLINE_ON:Ljava/lang/Integer;

    .line 785
    new-instance v0, Ljava/awt/font/TextAttribute;

    const-string/jumbo v1, "strikethrough"

    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    .line 784
    sput-object v0, Ljava/awt/font/TextAttribute;->STRIKETHROUGH:Ljava/awt/font/TextAttribute;

    .line 793
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 792
    sput-object v0, Ljava/awt/font/TextAttribute;->STRIKETHROUGH_ON:Ljava/lang/Boolean;

    .line 820
    new-instance v0, Ljava/awt/font/TextAttribute;

    const-string/jumbo v1, "run_direction"

    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    .line 819
    sput-object v0, Ljava/awt/font/TextAttribute;->RUN_DIRECTION:Ljava/awt/font/TextAttribute;

    .line 827
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 826
    sput-object v0, Ljava/awt/font/TextAttribute;->RUN_DIRECTION_LTR:Ljava/lang/Boolean;

    .line 834
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 833
    sput-object v0, Ljava/awt/font/TextAttribute;->RUN_DIRECTION_RTL:Ljava/lang/Boolean;

    .line 858
    new-instance v0, Ljava/awt/font/TextAttribute;

    const-string/jumbo v1, "bidi_embedding"

    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    .line 857
    sput-object v0, Ljava/awt/font/TextAttribute;->BIDI_EMBEDDING:Ljava/awt/font/TextAttribute;

    .line 882
    new-instance v0, Ljava/awt/font/TextAttribute;

    const-string/jumbo v1, "justification"

    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    .line 881
    sput-object v0, Ljava/awt/font/TextAttribute;->JUSTIFICATION:Ljava/awt/font/TextAttribute;

    .line 890
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 889
    sput-object v0, Ljava/awt/font/TextAttribute;->JUSTIFICATION_FULL:Ljava/lang/Float;

    .line 897
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 896
    sput-object v0, Ljava/awt/font/TextAttribute;->JUSTIFICATION_NONE:Ljava/lang/Float;

    .line 931
    new-instance v0, Ljava/awt/font/TextAttribute;

    const-string/jumbo v1, "input method highlight"

    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    .line 930
    sput-object v0, Ljava/awt/font/TextAttribute;->INPUT_METHOD_HIGHLIGHT:Ljava/awt/font/TextAttribute;

    .line 954
    new-instance v0, Ljava/awt/font/TextAttribute;

    const-string/jumbo v1, "input method underline"

    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    .line 953
    sput-object v0, Ljava/awt/font/TextAttribute;->INPUT_METHOD_UNDERLINE:Ljava/awt/font/TextAttribute;

    .line 962
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 961
    sput-object v0, Ljava/awt/font/TextAttribute;->UNDERLINE_LOW_ONE_PIXEL:Ljava/lang/Integer;

    .line 970
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 969
    sput-object v0, Ljava/awt/font/TextAttribute;->UNDERLINE_LOW_TWO_PIXEL:Ljava/lang/Integer;

    .line 978
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 977
    sput-object v0, Ljava/awt/font/TextAttribute;->UNDERLINE_LOW_DOTTED:Ljava/lang/Integer;

    .line 986
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 985
    sput-object v0, Ljava/awt/font/TextAttribute;->UNDERLINE_LOW_GRAY:Ljava/lang/Integer;

    .line 994
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 993
    sput-object v0, Ljava/awt/font/TextAttribute;->UNDERLINE_LOW_DASHED:Ljava/lang/Integer;

    .line 1016
    new-instance v0, Ljava/awt/font/TextAttribute;

    const-string/jumbo v1, "swap_colors"

    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    .line 1015
    sput-object v0, Ljava/awt/font/TextAttribute;->SWAP_COLORS:Ljava/awt/font/TextAttribute;

    .line 1024
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1023
    sput-object v0, Ljava/awt/font/TextAttribute;->SWAP_COLORS_ON:Ljava/lang/Boolean;

    .line 1043
    new-instance v0, Ljava/awt/font/TextAttribute;

    const-string/jumbo v1, "numeric_shaping"

    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    .line 1042
    sput-object v0, Ljava/awt/font/TextAttribute;->NUMERIC_SHAPING:Ljava/awt/font/TextAttribute;

    .line 1062
    new-instance v0, Ljava/awt/font/TextAttribute;

    const-string/jumbo v1, "kerning"

    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    .line 1061
    sput-object v0, Ljava/awt/font/TextAttribute;->KERNING:Ljava/awt/font/TextAttribute;

    .line 1070
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1069
    sput-object v0, Ljava/awt/font/TextAttribute;->KERNING_ON:Ljava/lang/Integer;

    .line 1085
    new-instance v0, Ljava/awt/font/TextAttribute;

    const-string/jumbo v1, "ligatures"

    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    .line 1084
    sput-object v0, Ljava/awt/font/TextAttribute;->LIGATURES:Ljava/awt/font/TextAttribute;

    .line 1093
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1092
    sput-object v0, Ljava/awt/font/TextAttribute;->LIGATURES_ON:Ljava/lang/Integer;

    .line 1114
    new-instance v0, Ljava/awt/font/TextAttribute;

    const-string/jumbo v1, "tracking"

    invoke-direct {v0, v1}, Ljava/awt/font/TextAttribute;-><init>(Ljava/lang/String;)V

    .line 1113
    sput-object v0, Ljava/awt/font/TextAttribute;->TRACKING:Ljava/awt/font/TextAttribute;

    .line 1122
    const v0, -0x42dc28f6    # -0.04f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 1121
    sput-object v0, Ljava/awt/font/TextAttribute;->TRACKING_TIGHT:Ljava/lang/Float;

    .line 1130
    const v0, 0x3d23d70a    # 0.04f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 1129
    sput-object v0, Ljava/awt/font/TextAttribute;->TRACKING_LOOSE:Ljava/lang/Float;

    .line 261
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 272
    invoke-direct {p0, p1}, Ljava/text/AttributedCharacterIterator$Attribute;-><init>(Ljava/lang/String;)V

    .line 273
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/awt/font/TextAttribute;

    if-ne v0, v1, :cond_0

    .line 274
    sget-object v0, Ljava/awt/font/TextAttribute;->instanceMap:Ljava/util/Map;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    :cond_0
    return-void
.end method


# virtual methods
.method protected readResolve()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .prologue
    .line 282
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/awt/font/TextAttribute;

    if-eq v1, v2, :cond_0

    .line 283
    new-instance v1, Ljava/io/InvalidObjectException;

    .line 284
    const-string/jumbo v2, "subclass didn\'t correctly implement readResolve"

    .line 283
    invoke-direct {v1, v2}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 287
    :cond_0
    sget-object v1, Ljava/awt/font/TextAttribute;->instanceMap:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/text/AttributedCharacterIterator$Attribute;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/awt/font/TextAttribute;

    .line 288
    .local v0, "instance":Ljava/awt/font/TextAttribute;
    if-eqz v0, :cond_1

    .line 289
    return-object v0

    .line 291
    :cond_1
    new-instance v1, Ljava/io/InvalidObjectException;

    const-string/jumbo v2, "unknown attribute name"

    invoke-direct {v1, v2}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
