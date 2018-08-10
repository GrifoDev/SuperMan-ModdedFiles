.class public abstract Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
.super Ljava/lang/Object;
.source "SprObjectBase.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static final TYPE_CIRCLE:B = 0x1t

.field public static final TYPE_ELLIPSE:B = 0x2t

.field public static final TYPE_GROUP:B = 0x10t

.field public static final TYPE_LINE:B = 0x3t

.field public static final TYPE_NONE:B = 0x0t

.field public static final TYPE_PATH:B = 0x4t

.field public static final TYPE_RECTANGLE:B = 0x5t

.field public static final TYPE_USE:B = 0x11t

.field private static final sCapArray:[Landroid/graphics/Paint$Cap;

.field private static final sJoinArray:[Landroid/graphics/Paint$Join;


# instance fields
.field public alpha:F

.field public fillPaint:Landroid/graphics/Paint;

.field public hasFillAnimation:Z

.field public hasStrokeAnimation:Z

.field public isVisibleFill:Z

.field public isVisibleStroke:Z

.field public mAttributeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;",
            ">;"
        }
    .end annotation
.end field

.field protected final mIntrinsic:Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

.field public final mType:B

.field public shadow:Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;

.field public strokePaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-class v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->TAG:Ljava/lang/String;

    new-array v0, v5, [Landroid/graphics/Paint$Cap;

    sget-object v1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    aput-object v1, v0, v2

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    aput-object v1, v0, v3

    sget-object v1, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    aput-object v1, v0, v4

    sput-object v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->sCapArray:[Landroid/graphics/Paint$Cap;

    new-array v0, v5, [Landroid/graphics/Paint$Join;

    sget-object v1, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    aput-object v1, v0, v2

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    aput-object v1, v0, v3

    sget-object v1, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    aput-object v1, v0, v4

    sput-object v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->sJoinArray:[Landroid/graphics/Paint$Join;

    return-void
.end method

.method protected constructor <init>(B)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->isVisibleStroke:Z

    iput-boolean v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->isVisibleFill:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->shadow:Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->alpha:F

    iput-boolean v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->hasStrokeAnimation:Z

    iput-boolean v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->hasFillAnimation:Z

    iput-object p0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mIntrinsic:Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    iput-byte p1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mType:B

    return-void
.end method

.method private applyPreAttribute(Landroid/graphics/Paint;Landroid/graphics/Paint;)V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    iget-object v4, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    :pswitch_0
    :sswitch_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;

    iget-byte v4, v0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;->mType:B

    sparse-switch v4, :sswitch_data_0

    sget-object v4, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Attribute type = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-byte v6, v0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;->mType:B

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "is not supported type"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_1
    move-object v2, v0

    check-cast v2, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;

    iget-byte v4, v2, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;->colorType:B

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    :pswitch_1
    iput-boolean v8, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->isVisibleFill:Z

    goto :goto_0

    :pswitch_2
    iput-boolean v7, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->isVisibleFill:Z

    invoke-virtual {p2, v9}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget v4, v2, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;->color:I

    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    :pswitch_3
    iput-boolean v7, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->isVisibleFill:Z

    iget-object v4, v2, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;->gradient:Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;

    iget-object v4, v4, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;->shader:Landroid/graphics/Shader;

    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_0

    :sswitch_2
    move-object v3, v0

    check-cast v3, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;

    iget-byte v4, v3, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;->colorType:B

    packed-switch v4, :pswitch_data_1

    goto :goto_0

    :pswitch_4
    iput-boolean v8, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->isVisibleStroke:Z

    goto :goto_0

    :pswitch_5
    iput-boolean v7, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->isVisibleStroke:Z

    invoke-virtual {p1, v9}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget v4, v3, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;->color:I

    invoke-virtual {p1, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    :pswitch_6
    iput-boolean v7, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->isVisibleStroke:Z

    iget-object v4, v3, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;->gradient:Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;

    iget-object v4, v4, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;->shader:Landroid/graphics/Shader;

    invoke-virtual {p1, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_0

    :sswitch_3
    sget-object v4, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->sCapArray:[Landroid/graphics/Paint$Cap;

    check-cast v0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinecap;

    iget-byte v5, v0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinecap;->linecap:B

    add-int/lit8 v5, v5, -0x1

    aget-object v4, v4, v5

    invoke-virtual {p1, v4}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    goto/16 :goto_0

    :sswitch_4
    sget-object v4, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->sJoinArray:[Landroid/graphics/Paint$Join;

    check-cast v0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinejoin;

    iget-byte v5, v0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinejoin;->linejoin:B

    add-int/lit8 v5, v5, -0x1

    aget-object v4, v4, v5

    invoke-virtual {p1, v4}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    goto/16 :goto_0

    :sswitch_5
    check-cast v0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeWidth;

    iget v4, v0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeWidth;->strokeWidth:F

    invoke-virtual {p1, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/16 :goto_0

    :sswitch_6
    check-cast v0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeMiterlimit;

    iget v4, v0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeMiterlimit;->miterLimit:F

    invoke-virtual {p1, v4}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    goto/16 :goto_0

    :sswitch_7
    check-cast v0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->shadow:Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;

    goto/16 :goto_0

    :cond_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_0
        0x20 -> :sswitch_1
        0x23 -> :sswitch_2
        0x25 -> :sswitch_3
        0x26 -> :sswitch_4
        0x28 -> :sswitch_5
        0x29 -> :sswitch_6
        0x40 -> :sswitch_0
        0x61 -> :sswitch_0
        0x70 -> :sswitch_7
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method private loadAttributeFromSPR(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v4, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readInt()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readByte()B

    move-result v1

    const/4 v3, 0x0

    iget-short v4, p1, Lcom/samsung/android/graphics/spr/document/SprInputStream;->mMajorVersion:S

    const/16 v5, 0x3030

    if-lt v4, v5, :cond_0

    iget-short v4, p1, Lcom/samsung/android/graphics/spr/document/SprInputStream;->mMinorVersion:S

    const/16 v5, 0x3032

    if-lt v4, v5, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readInt()I

    move-result v3

    :cond_0
    sparse-switch v1, :sswitch_data_0

    sget-object v4, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unknown attribute id:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    int-to-long v4, v3

    invoke-virtual {p1, v4, v5}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->skip(J)J

    :goto_1
    :sswitch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :sswitch_1
    iget-object v4, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    new-instance v5, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeClip;

    invoke-direct {v5, p1}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeClip;-><init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :sswitch_2
    iget-object v4, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    new-instance v5, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeClipPath;

    invoke-direct {v5, p1}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeClipPath;-><init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :sswitch_3
    iget-object v4, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    new-instance v5, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;

    invoke-direct {v5, p1}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;-><init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :sswitch_4
    iget-object v4, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    new-instance v5, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;

    invoke-direct {v5, p1}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;-><init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :sswitch_5
    iget-object v4, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    new-instance v5, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinecap;

    invoke-direct {v5, p1}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinecap;-><init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :sswitch_6
    iget-object v4, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    new-instance v5, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinejoin;

    invoke-direct {v5, p1}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinejoin;-><init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :sswitch_7
    iget-object v4, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    new-instance v5, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeWidth;

    invoke-direct {v5, p1}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeWidth;-><init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :sswitch_8
    iget-object v4, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    new-instance v5, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeMiterlimit;

    invoke-direct {v5, p1}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeMiterlimit;-><init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :sswitch_9
    iget-object v4, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    new-instance v5, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeMatrix;

    invoke-direct {v5, p1}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeMatrix;-><init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :sswitch_a
    iget-object v4, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    new-instance v5, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeAnimatorSet;

    invoke-direct {v5, p1}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeAnimatorSet;-><init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p1, Lcom/samsung/android/graphics/spr/document/SprInputStream;->mAnimationObject:Ljava/util/ArrayList;

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :sswitch_b
    iget-object v4, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    new-instance v5, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;

    invoke-direct {v5, p1}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;-><init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x3 -> :sswitch_2
        0x20 -> :sswitch_3
        0x23 -> :sswitch_4
        0x25 -> :sswitch_5
        0x26 -> :sswitch_6
        0x28 -> :sswitch_7
        0x29 -> :sswitch_8
        0x40 -> :sswitch_9
        0x61 -> :sswitch_a
        0x70 -> :sswitch_b
    .end sparse-switch
.end method

.method private saveAttributeToSPR(Ljava/io/DataOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v2, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v2, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;

    iget-byte v2, v0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;->mType:B

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v0}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;->getSPRSize()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;->toSPR(Ljava/io/DataOutputStream;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public appendAttribute(Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public applyAttribute(Lcom/samsung/android/graphics/spr/document/SprDocument;Landroid/graphics/Canvas;F)V
    .locals 12

    const/high16 v11, 0x437f0000    # 255.0f

    const/4 v10, 0x0

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    :sswitch_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;

    iget-byte v0, v6, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;->mType:B

    sparse-switch v0, :sswitch_data_0

    sget-object v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Attribute type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, v6, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;->mType:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "is not supported type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_1
    move-object v8, v6

    check-cast v8, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeClip;

    iget v1, v8, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeClip;->left:F

    iget v2, v8, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeClip;->top:F

    iget v3, v8, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeClip;->right:F

    iget v4, v8, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeClip;->bottom:F

    sget-object v5, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    goto :goto_0

    :sswitch_2
    check-cast v6, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeClipPath;

    iget v0, v6, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeClipPath;->link:I

    invoke-virtual {p1, v0}, Lcom/samsung/android/graphics/spr/document/SprDocument;->getReference(I)Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    move-result-object v10

    if-eqz v10, :cond_0

    iget-byte v0, v10, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mType:B

    sparse-switch v0, :sswitch_data_1

    goto :goto_0

    :sswitch_3
    new-instance v9, Landroid/graphics/Path;

    invoke-direct {v9}, Landroid/graphics/Path;-><init>()V

    move-object v0, v10

    check-cast v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeCircle;

    iget v1, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeCircle;->cx:F

    move-object v0, v10

    check-cast v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeCircle;

    iget v2, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeCircle;->cy:F

    move-object v0, v10

    check-cast v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeCircle;

    iget v0, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeCircle;->cr:F

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v9, v1, v2, v0, v3}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    invoke-virtual {p2, v9}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    goto :goto_0

    :sswitch_4
    new-instance v9, Landroid/graphics/Path;

    invoke-direct {v9}, Landroid/graphics/Path;-><init>()V

    new-instance v1, Landroid/graphics/RectF;

    move-object v0, v10

    check-cast v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeEllipse;

    iget v2, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeEllipse;->left:F

    move-object v0, v10

    check-cast v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeEllipse;

    iget v3, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeEllipse;->top:F

    move-object v0, v10

    check-cast v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeEllipse;

    iget v4, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeEllipse;->right:F

    move-object v0, v10

    check-cast v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeEllipse;

    iget v0, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeEllipse;->bottom:F

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v0, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v9, v1, v0}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    invoke-virtual {p2, v9}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    goto/16 :goto_0

    :sswitch_5
    move-object v0, v10

    check-cast v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;

    iget-object v0, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->path:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    goto/16 :goto_0

    :sswitch_6
    move-object v0, v10

    check-cast v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;

    iget v1, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;->left:F

    move-object v0, v10

    check-cast v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;

    iget v2, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;->top:F

    move-object v0, v10

    check-cast v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;

    iget v3, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;->right:F

    move-object v0, v10

    check-cast v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;

    iget v4, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;->bottom:F

    sget-object v5, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    goto/16 :goto_0

    :sswitch_7
    iget-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->isVisibleFill:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->fillPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->getIntrinsic()Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->fillPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->getIntrinsic()Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    move-result-object v1

    iget-object v1, v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p3

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->fillPaint:Landroid/graphics/Paint;

    mul-float v1, v11, p3

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_0

    :sswitch_8
    iget-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->isVisibleStroke:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->strokePaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->getIntrinsic()Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->strokePaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->getIntrinsic()Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    move-result-object v1

    iget-object v1, v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p3

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->strokePaint:Landroid/graphics/Paint;

    mul-float v1, v11, p3

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_0

    :sswitch_9
    check-cast v6, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeMatrix;

    iget-object v0, v6, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeMatrix;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p2, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    goto/16 :goto_0

    :cond_3
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x3 -> :sswitch_2
        0x20 -> :sswitch_7
        0x23 -> :sswitch_8
        0x25 -> :sswitch_0
        0x26 -> :sswitch_0
        0x28 -> :sswitch_0
        0x29 -> :sswitch_0
        0x40 -> :sswitch_9
        0x61 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_4
        0x3 -> :sswitch_0
        0x4 -> :sswitch_5
        0x5 -> :sswitch_6
        0x10 -> :sswitch_0
        0x11 -> :sswitch_0
    .end sparse-switch
.end method

.method protected clearShadowLayer()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->shadow:Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->clearShadowLayer()V

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->clearShadowLayer()V

    return-void
.end method

.method public clone()Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;

    iget-object v3, v2, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;->clone()Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->strokePaint:Landroid/graphics/Paint;

    if-eqz v3, :cond_1

    new-instance v3, Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->strokePaint:Landroid/graphics/Paint;

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v3, v2, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->strokePaint:Landroid/graphics/Paint;

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->fillPaint:Landroid/graphics/Paint;

    if-eqz v3, :cond_2

    new-instance v3, Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->fillPaint:Landroid/graphics/Paint;

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v3, v2, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->fillPaint:Landroid/graphics/Paint;

    :cond_2
    iget v3, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->alpha:F

    iput v3, v2, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->alpha:F

    return-object v2
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->clone()Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    move-result-object v0

    return-object v0
.end method

.method public abstract draw(Lcom/samsung/android/graphics/spr/document/SprDocument;Landroid/graphics/Canvas;FFF)V
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public fromSPR(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->loadAttributeFromSPR(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    return-void
.end method

.method public getIntrinsic()Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mIntrinsic:Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    return-object v0
.end method

.method public getSPRSize()I
    .locals 4

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;

    invoke-virtual {v0}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;->getSPRSize()I

    move-result v3

    add-int/lit8 v3, v3, 0x5

    add-int/2addr v2, v3

    goto :goto_0

    :cond_0
    return v2
.end method

.method public getTotalAttributeCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public abstract getTotalElementCount()I
.end method

.method public abstract getTotalSegmentCount()I
.end method

.method public preDraw(Lcom/samsung/android/graphics/spr/document/SprDocument;)V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->strokePaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->fillPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->strokePaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->fillPaint:Landroid/graphics/Paint;

    iget-boolean v4, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->isVisibleStroke:Z

    iget-boolean v5, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->isVisibleFill:Z

    iget-object v6, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->shadow:Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->preDraw(Lcom/samsung/android/graphics/spr/document/SprDocument;Landroid/graphics/Paint;Landroid/graphics/Paint;ZZLcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;)V

    return-void
.end method

.method public preDraw(Lcom/samsung/android/graphics/spr/document/SprDocument;Landroid/graphics/Paint;Landroid/graphics/Paint;ZZLcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;)V
    .locals 3

    move-object v1, p2

    move-object v0, p3

    iput-boolean p4, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->isVisibleStroke:Z

    iput-boolean p5, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->isVisibleFill:Z

    iput-object p6, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->shadow:Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;

    iget-object v2, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->strokePaint:Landroid/graphics/Paint;

    if-nez v2, :cond_4

    if-eqz p2, :cond_3

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, p2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->fillPaint:Landroid/graphics/Paint;

    if-nez v2, :cond_6

    if-eqz p3, :cond_5

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, p3}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    :cond_1
    :goto_1
    invoke-direct {p0, v1, v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->applyPreAttribute(Landroid/graphics/Paint;Landroid/graphics/Paint;)V

    :cond_2
    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->fillPaint:Landroid/graphics/Paint;

    iput-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->strokePaint:Landroid/graphics/Paint;

    return-void

    :cond_3
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->strokePaint:Landroid/graphics/Paint;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-virtual {p2}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_0

    :cond_5
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->fillPaint:Landroid/graphics/Paint;

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-virtual {p3}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_1
.end method

.method public removeAttribute(Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method protected setShadowLayer()V
    .locals 6

    const v3, 0x3f13cd36

    const/high16 v2, 0x3f000000    # 0.5f

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->shadow:Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->isVisibleFill:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->shadow:Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;

    iget v0, v1, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;->radius:F

    iget-boolean v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->isVisibleStroke:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    add-float/2addr v0, v1

    :cond_1
    cmpg-float v1, v0, v2

    if-gtz v1, :cond_3

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->fillPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->shadow:Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;

    iget v2, v2, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;->dx:F

    iget-object v3, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->shadow:Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;

    iget v3, v3, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;->dy:F

    iget-object v4, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->shadow:Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;

    iget v4, v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;->shadowColor:I

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    sub-float v1, v0, v2

    div-float v0, v1, v3

    goto :goto_0

    :cond_4
    iget-boolean v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->isVisibleStroke:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->shadow:Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;

    iget v0, v1, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;->radius:F

    cmpg-float v1, v0, v2

    if-gtz v1, :cond_5

    :goto_2
    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->strokePaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->shadow:Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;

    iget v2, v2, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;->radius:F

    iget-object v3, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->shadow:Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;

    iget v3, v3, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;->dx:F

    iget-object v4, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->shadow:Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;

    iget v4, v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;->dy:F

    iget-object v5, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->shadow:Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;

    iget v5, v5, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;->shadowColor:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    goto :goto_1

    :cond_5
    sub-float v1, v0, v2

    div-float v0, v1, v3

    goto :goto_2
.end method

.method public toSPR(Ljava/io/DataOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->saveAttributeToSPR(Ljava/io/DataOutputStream;)V

    return-void
.end method
