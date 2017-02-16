.class public Lcom/nineoldandroids/animation/AnimatorInflater;
.super Ljava/lang/Object;
.source "AnimatorInflater.java"


# static fields
.field private static final Animator:[I

.field private static final AnimatorSet:[I

.field private static final AnimatorSet_ordering:I = 0x0

.field private static final Animator_duration:I = 0x1

.field private static final Animator_interpolator:I = 0x0

.field private static final Animator_repeatCount:I = 0x3

.field private static final Animator_repeatMode:I = 0x4

.field private static final Animator_startOffset:I = 0x2

.field private static final Animator_valueFrom:I = 0x5

.field private static final Animator_valueTo:I = 0x6

.field private static final Animator_valueType:I = 0x7

.field private static final PropertyAnimator:[I

.field private static final PropertyAnimator_propertyName:I

.field private static final TOGETHER:I

.field private static final VALUE_TYPE_FLOAT:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 43
    new-array v0, v3, [I

    .line 44
    const v1, 0x10102e2

    aput v1, v0, v2

    .line 43
    sput-object v0, Lcom/nineoldandroids/animation/AnimatorInflater;->AnimatorSet:[I

    .line 48
    new-array v0, v3, [I

    .line 49
    const v1, 0x10102e1

    aput v1, v0, v2

    .line 48
    sput-object v0, Lcom/nineoldandroids/animation/AnimatorInflater;->PropertyAnimator:[I

    .line 53
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/nineoldandroids/animation/AnimatorInflater;->Animator:[I

    .line 81
    return-void

    .line 53
    :array_0
    .array-data 4
        0x1010141
        0x1010198
        0x10101be
        0x10101bf
        0x10101c0
        0x10102de
        0x10102df
        0x10102e0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createAnimatorFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)Lcom/nineoldandroids/animation/Animator;
    .locals 3
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lcom/nineoldandroids/animation/AnimatorInflater;->createAnimatorFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Lcom/nineoldandroids/animation/AnimatorSet;I)Lcom/nineoldandroids/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method private static createAnimatorFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Lcom/nineoldandroids/animation/AnimatorSet;I)Lcom/nineoldandroids/animation/Animator;
    .locals 17
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "parent"    # Lcom/nineoldandroids/animation/AnimatorSet;
    .param p4, "sequenceOrdering"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 128
    const/4 v4, 0x0

    .line 129
    .local v4, "anim":Lcom/nineoldandroids/animation/Animator;
    const/4 v6, 0x0

    .line 133
    .local v6, "childAnims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nineoldandroids/animation/Animator;>;"
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    .line 135
    .local v7, "depth":I
    :cond_0
    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v13

    .local v13, "type":I
    const/4 v14, 0x3

    if-ne v13, v14, :cond_1

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v14

    if-le v14, v7, :cond_2

    .line 136
    :cond_1
    const/4 v14, 0x1

    if-ne v13, v14, :cond_4

    .line 170
    :cond_2
    if-eqz p3, :cond_3

    if-eqz v6, :cond_3

    .line 171
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v14

    new-array v5, v14, [Lcom/nineoldandroids/animation/Animator;

    .line 172
    .local v5, "animsArray":[Lcom/nineoldandroids/animation/Animator;
    const/4 v8, 0x0

    .line 173
    .local v8, "index":I
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-nez v15, :cond_a

    .line 176
    if-nez p4, :cond_b

    .line 177
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Lcom/nineoldandroids/animation/AnimatorSet;->playTogether([Lcom/nineoldandroids/animation/Animator;)V

    .line 183
    .end local v5    # "animsArray":[Lcom/nineoldandroids/animation/Animator;
    .end local v8    # "index":I
    :cond_3
    :goto_2
    return-object v4

    .line 138
    :cond_4
    const/4 v14, 0x2

    if-ne v13, v14, :cond_0

    .line 142
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 144
    .local v10, "name":Ljava/lang/String;
    const-string v14, "objectAnimator"

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 145
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/nineoldandroids/animation/AnimatorInflater;->loadObjectAnimator(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v4

    .line 163
    :goto_3
    if-eqz p3, :cond_0

    .line 164
    if-nez v6, :cond_5

    .line 165
    new-instance v6, Ljava/util/ArrayList;

    .end local v6    # "childAnims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nineoldandroids/animation/Animator;>;"
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 167
    .restart local v6    # "childAnims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nineoldandroids/animation/Animator;>;"
    :cond_5
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 146
    :cond_6
    const-string v14, "animator"

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 147
    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1, v14}, Lcom/nineoldandroids/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/nineoldandroids/animation/ValueAnimator;)Lcom/nineoldandroids/animation/ValueAnimator;

    move-result-object v4

    .line 148
    goto :goto_3

    :cond_7
    const-string v14, "set"

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 149
    new-instance v4, Lcom/nineoldandroids/animation/AnimatorSet;

    .end local v4    # "anim":Lcom/nineoldandroids/animation/Animator;
    invoke-direct {v4}, Lcom/nineoldandroids/animation/AnimatorSet;-><init>()V

    .line 151
    .restart local v4    # "anim":Lcom/nineoldandroids/animation/Animator;
    sget-object v14, Lcom/nineoldandroids/animation/AnimatorInflater;->AnimatorSet:[I

    .line 150
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v14}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 153
    .local v3, "a":Landroid/content/res/TypedArray;
    new-instance v12, Landroid/util/TypedValue;

    invoke-direct {v12}, Landroid/util/TypedValue;-><init>()V

    .line 154
    .local v12, "orderingValue":Landroid/util/TypedValue;
    const/4 v14, 0x0

    invoke-virtual {v3, v14, v12}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 155
    iget v14, v12, Landroid/util/TypedValue;->type:I

    const/16 v15, 0x10

    if-ne v14, v15, :cond_8

    iget v11, v12, Landroid/util/TypedValue;->data:I

    .local v11, "ordering":I
    :goto_4
    move-object v14, v4

    .line 157
    check-cast v14, Lcom/nineoldandroids/animation/AnimatorSet;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2, v14, v11}, Lcom/nineoldandroids/animation/AnimatorInflater;->createAnimatorFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Lcom/nineoldandroids/animation/AnimatorSet;I)Lcom/nineoldandroids/animation/Animator;

    .line 158
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_3

    .line 155
    .end local v11    # "ordering":I
    :cond_8
    const/4 v11, 0x0

    goto :goto_4

    .line 160
    .end local v3    # "a":Landroid/content/res/TypedArray;
    .end local v12    # "orderingValue":Landroid/util/TypedValue;
    :cond_9
    new-instance v14, Ljava/lang/RuntimeException;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "Unknown animator name: "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 173
    .end local v10    # "name":Ljava/lang/String;
    .restart local v5    # "animsArray":[Lcom/nineoldandroids/animation/Animator;
    .restart local v8    # "index":I
    :cond_a
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nineoldandroids/animation/Animator;

    .line 174
    .local v3, "a":Lcom/nineoldandroids/animation/Animator;
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "index":I
    .local v9, "index":I
    aput-object v3, v5, v8

    move v8, v9

    .end local v9    # "index":I
    .restart local v8    # "index":I
    goto/16 :goto_1

    .line 179
    .end local v3    # "a":Lcom/nineoldandroids/animation/Animator;
    :cond_b
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Lcom/nineoldandroids/animation/AnimatorSet;->playSequentially([Lcom/nineoldandroids/animation/Animator;)V

    goto/16 :goto_2
.end method

.method public static loadAnimator(Landroid/content/Context;I)Lcom/nineoldandroids/animation/Animator;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 97
    const/4 v1, 0x0

    .line 99
    .local v1, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 100
    invoke-static {p0, v1}, Lcom/nineoldandroids/animation/AnimatorInflater;->createAnimatorFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)Lcom/nineoldandroids/animation/Animator;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 114
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 100
    :cond_0
    return-object v3

    .line 101
    :catch_0
    move-exception v0

    .line 103
    .local v0, "ex":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Can\'t load animation resource ID #0x"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 103
    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 105
    .local v2, "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v2, v0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 106
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    .end local v0    # "ex":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v2    # "rnf":Landroid/content/res/Resources$NotFoundException;
    :catchall_0
    move-exception v3

    .line 114
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 115
    :cond_1
    throw v3

    .line 107
    :catch_1
    move-exception v0

    .line 109
    .local v0, "ex":Ljava/io/IOException;
    :try_start_2
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Can\'t load animation resource ID #0x"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 109
    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 111
    .restart local v2    # "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v2, v0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 112
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method private static loadAnimator(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/nineoldandroids/animation/ValueAnimator;)Lcom/nineoldandroids/animation/ValueAnimator;
    .locals 24
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "anim"    # Lcom/nineoldandroids/animation/ValueAnimator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 217
    sget-object v22, Lcom/nineoldandroids/animation/AnimatorInflater;->Animator:[I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 219
    .local v4, "a":Landroid/content/res/TypedArray;
    const/16 v22, 0x1

    const/16 v23, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v22

    move/from16 v0, v22

    int-to-long v6, v0

    .line 221
    .local v6, "duration":J
    const/16 v22, 0x2

    const/16 v23, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v22

    move/from16 v0, v22

    int-to-long v12, v0

    .line 223
    .local v12, "startDelay":J
    const/16 v22, 0x7

    .line 224
    const/16 v23, 0x0

    .line 223
    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v21

    .line 226
    .local v21, "valueType":I
    if-nez p2, :cond_0

    .line 227
    new-instance p2, Lcom/nineoldandroids/animation/ValueAnimator;

    .end local p2    # "anim":Lcom/nineoldandroids/animation/ValueAnimator;
    invoke-direct/range {p2 .. p2}, Lcom/nineoldandroids/animation/ValueAnimator;-><init>()V

    .line 231
    .restart local p2    # "anim":Lcom/nineoldandroids/animation/ValueAnimator;
    :cond_0
    const/16 v18, 0x5

    .line 232
    .local v18, "valueFromIndex":I
    const/16 v20, 0x6

    .line 234
    .local v20, "valueToIndex":I
    if-nez v21, :cond_8

    const/4 v8, 0x1

    .line 236
    .local v8, "getFloats":Z
    :goto_0
    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v15

    .line 237
    .local v15, "tvFrom":Landroid/util/TypedValue;
    if-eqz v15, :cond_9

    const/4 v9, 0x1

    .line 238
    .local v9, "hasFrom":Z
    :goto_1
    if-eqz v9, :cond_a

    iget v5, v15, Landroid/util/TypedValue;->type:I

    .line 239
    .local v5, "fromType":I
    :goto_2
    move/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v16

    .line 240
    .local v16, "tvTo":Landroid/util/TypedValue;
    if-eqz v16, :cond_b

    const/4 v10, 0x1

    .line 241
    .local v10, "hasTo":Z
    :goto_3
    if-eqz v10, :cond_c

    move-object/from16 v0, v16

    iget v14, v0, Landroid/util/TypedValue;->type:I

    .line 243
    .local v14, "toType":I
    :goto_4
    if-eqz v9, :cond_1

    const/16 v22, 0x1c

    move/from16 v0, v22

    if-lt v5, v0, :cond_1

    .line 244
    const/16 v22, 0x1f

    move/from16 v0, v22

    if-le v5, v0, :cond_2

    .line 245
    :cond_1
    if-eqz v10, :cond_3

    const/16 v22, 0x1c

    move/from16 v0, v22

    if-lt v14, v0, :cond_3

    .line 246
    const/16 v22, 0x1f

    move/from16 v0, v22

    if-gt v14, v0, :cond_3

    .line 248
    :cond_2
    const/4 v8, 0x0

    .line 249
    new-instance v22, Lcom/nineoldandroids/animation/ArgbEvaluator;

    invoke-direct/range {v22 .. v22}, Lcom/nineoldandroids/animation/ArgbEvaluator;-><init>()V

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/ValueAnimator;->setEvaluator(Lcom/nineoldandroids/animation/TypeEvaluator;)V

    .line 252
    :cond_3
    if-eqz v8, :cond_12

    .line 255
    if-eqz v9, :cond_10

    .line 256
    const/16 v22, 0x5

    move/from16 v0, v22

    if-ne v5, v0, :cond_d

    .line 257
    const/16 v22, 0x0

    move/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v17

    .line 261
    .local v17, "valueFrom":F
    :goto_5
    if-eqz v10, :cond_f

    .line 262
    const/16 v22, 0x5

    move/from16 v0, v22

    if-ne v14, v0, :cond_e

    .line 263
    const/16 v22, 0x0

    move/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v19

    .line 267
    .local v19, "valueTo":F
    :goto_6
    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [F

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput v17, v22, v23

    const/16 v23, 0x1

    aput v19, v22, v23

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/ValueAnimator;->setFloatValues([F)V

    .line 319
    .end local v17    # "valueFrom":F
    .end local v19    # "valueTo":F
    :cond_4
    :goto_7
    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v7}, Lcom/nineoldandroids/animation/ValueAnimator;->setDuration(J)Lcom/nineoldandroids/animation/ValueAnimator;

    .line 320
    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Lcom/nineoldandroids/animation/ValueAnimator;->setStartDelay(J)V

    .line 322
    const/16 v22, 0x3

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v22

    if-eqz v22, :cond_5

    .line 324
    const/16 v22, 0x3

    const/16 v23, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v22

    .line 323
    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/ValueAnimator;->setRepeatCount(I)V

    .line 326
    :cond_5
    const/16 v22, 0x4

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v22

    if-eqz v22, :cond_6

    .line 328
    const/16 v22, 0x4

    .line 329
    const/16 v23, 0x1

    .line 328
    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v22

    .line 327
    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/ValueAnimator;->setRepeatMode(I)V

    .line 336
    :cond_6
    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    .line 337
    .local v11, "resID":I
    if-lez v11, :cond_7

    .line 338
    move-object/from16 v0, p0

    invoke-static {v0, v11}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/ValueAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 340
    :cond_7
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 342
    return-object p2

    .line 234
    .end local v5    # "fromType":I
    .end local v8    # "getFloats":Z
    .end local v9    # "hasFrom":Z
    .end local v10    # "hasTo":Z
    .end local v11    # "resID":I
    .end local v14    # "toType":I
    .end local v15    # "tvFrom":Landroid/util/TypedValue;
    .end local v16    # "tvTo":Landroid/util/TypedValue;
    :cond_8
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 237
    .restart local v8    # "getFloats":Z
    .restart local v15    # "tvFrom":Landroid/util/TypedValue;
    :cond_9
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 238
    .restart local v9    # "hasFrom":Z
    :cond_a
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 240
    .restart local v5    # "fromType":I
    .restart local v16    # "tvTo":Landroid/util/TypedValue;
    :cond_b
    const/4 v10, 0x0

    goto/16 :goto_3

    .line 241
    .restart local v10    # "hasTo":Z
    :cond_c
    const/4 v14, 0x0

    goto/16 :goto_4

    .line 259
    .restart local v14    # "toType":I
    :cond_d
    const/16 v22, 0x0

    move/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v17

    .restart local v17    # "valueFrom":F
    goto/16 :goto_5

    .line 265
    :cond_e
    const/16 v22, 0x0

    move/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v19

    .restart local v19    # "valueTo":F
    goto/16 :goto_6

    .line 269
    .end local v19    # "valueTo":F
    :cond_f
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [F

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput v17, v22, v23

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/ValueAnimator;->setFloatValues([F)V

    goto/16 :goto_7

    .line 272
    .end local v17    # "valueFrom":F
    :cond_10
    const/16 v22, 0x5

    move/from16 v0, v22

    if-ne v14, v0, :cond_11

    .line 273
    const/16 v22, 0x0

    move/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v19

    .line 277
    .restart local v19    # "valueTo":F
    :goto_8
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [F

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput v19, v22, v23

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/ValueAnimator;->setFloatValues([F)V

    goto/16 :goto_7

    .line 275
    .end local v19    # "valueTo":F
    :cond_11
    const/16 v22, 0x0

    move/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v19

    .restart local v19    # "valueTo":F
    goto :goto_8

    .line 282
    .end local v19    # "valueTo":F
    :cond_12
    if-eqz v9, :cond_18

    .line 283
    const/16 v22, 0x5

    move/from16 v0, v22

    if-ne v5, v0, :cond_13

    .line 284
    const/16 v22, 0x0

    move/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v17, v0

    .line 291
    .local v17, "valueFrom":I
    :goto_9
    if-eqz v10, :cond_17

    .line 292
    const/16 v22, 0x5

    move/from16 v0, v22

    if-ne v14, v0, :cond_15

    .line 293
    const/16 v22, 0x0

    move/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v19, v0

    .line 300
    .local v19, "valueTo":I
    :goto_a
    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput v17, v22, v23

    const/16 v23, 0x1

    aput v19, v22, v23

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/ValueAnimator;->setIntValues([I)V

    goto/16 :goto_7

    .line 285
    .end local v17    # "valueFrom":I
    .end local v19    # "valueTo":I
    :cond_13
    const/16 v22, 0x1c

    move/from16 v0, v22

    if-lt v5, v0, :cond_14

    .line 286
    const/16 v22, 0x1f

    move/from16 v0, v22

    if-gt v5, v0, :cond_14

    .line 287
    const/16 v22, 0x0

    move/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v17

    .line 288
    .restart local v17    # "valueFrom":I
    goto :goto_9

    .line 289
    .end local v17    # "valueFrom":I
    :cond_14
    const/16 v22, 0x0

    move/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v17

    .restart local v17    # "valueFrom":I
    goto :goto_9

    .line 294
    :cond_15
    const/16 v22, 0x1c

    move/from16 v0, v22

    if-lt v14, v0, :cond_16

    .line 295
    const/16 v22, 0x1f

    move/from16 v0, v22

    if-gt v14, v0, :cond_16

    .line 296
    const/16 v22, 0x0

    move/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v19

    .line 297
    .restart local v19    # "valueTo":I
    goto :goto_a

    .line 298
    .end local v19    # "valueTo":I
    :cond_16
    const/16 v22, 0x0

    move/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v19

    .restart local v19    # "valueTo":I
    goto :goto_a

    .line 302
    .end local v19    # "valueTo":I
    :cond_17
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput v17, v22, v23

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/ValueAnimator;->setIntValues([I)V

    goto/16 :goto_7

    .line 305
    .end local v17    # "valueFrom":I
    :cond_18
    if-eqz v10, :cond_4

    .line 306
    const/16 v22, 0x5

    move/from16 v0, v22

    if-ne v14, v0, :cond_19

    .line 307
    const/16 v22, 0x0

    move/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v19, v0

    .line 314
    .restart local v19    # "valueTo":I
    :goto_b
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput v19, v22, v23

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/ValueAnimator;->setIntValues([I)V

    goto/16 :goto_7

    .line 308
    .end local v19    # "valueTo":I
    :cond_19
    const/16 v22, 0x1c

    move/from16 v0, v22

    if-lt v14, v0, :cond_1a

    .line 309
    const/16 v22, 0x1f

    move/from16 v0, v22

    if-gt v14, v0, :cond_1a

    .line 310
    const/16 v22, 0x0

    move/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v19

    .line 311
    .restart local v19    # "valueTo":I
    goto :goto_b

    .line 312
    .end local v19    # "valueTo":I
    :cond_1a
    const/16 v22, 0x0

    move/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v19

    .restart local v19    # "valueTo":I
    goto :goto_b
.end method

.method private static loadObjectAnimator(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/nineoldandroids/animation/ObjectAnimator;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 190
    new-instance v1, Lcom/nineoldandroids/animation/ObjectAnimator;

    invoke-direct {v1}, Lcom/nineoldandroids/animation/ObjectAnimator;-><init>()V

    .line 192
    .local v1, "anim":Lcom/nineoldandroids/animation/ObjectAnimator;
    invoke-static {p0, p1, v1}, Lcom/nineoldandroids/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/nineoldandroids/animation/ValueAnimator;)Lcom/nineoldandroids/animation/ValueAnimator;

    .line 195
    sget-object v3, Lcom/nineoldandroids/animation/AnimatorInflater;->PropertyAnimator:[I

    invoke-virtual {p0, p1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 197
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 199
    .local v2, "propertyName":Ljava/lang/String;
    invoke-virtual {v1, v2}, Lcom/nineoldandroids/animation/ObjectAnimator;->setPropertyName(Ljava/lang/String;)V

    .line 201
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 203
    return-object v1
.end method
