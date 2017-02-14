.class public Lmf/org/apache/xerces/impl/dtd/models/SimpleContentModel;
.super Ljava/lang/Object;
.source "SimpleContentModel.java"

# interfaces
.implements Lmf/org/apache/xerces/impl/dtd/models/ContentModelValidator;


# static fields
.field public static final CHOICE:S = -0x1s

.field public static final SEQUENCE:S = -0x1s


# instance fields
.field private final fFirstChild:Lmf/org/apache/xerces/xni/QName;

.field private final fOperator:I

.field private final fSecondChild:Lmf/org/apache/xerces/xni/QName;


# direct methods
.method public constructor <init>(SLmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/QName;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/models/SimpleContentModel;->fFirstChild:Lmf/org/apache/xerces/xni/QName;

    new-instance v0, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/models/SimpleContentModel;->fSecondChild:Lmf/org/apache/xerces/xni/QName;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/models/SimpleContentModel;->fFirstChild:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v0, p2}, Lmf/org/apache/xerces/xni/QName;->setValues(Lmf/org/apache/xerces/xni/QName;)V

    if-nez p3, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/models/SimpleContentModel;->fSecondChild:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/QName;->clear()V

    :goto_0
    iput p1, p0, Lmf/org/apache/xerces/impl/dtd/models/SimpleContentModel;->fOperator:I

    return-void

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/models/SimpleContentModel;->fSecondChild:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v0, p3}, Lmf/org/apache/xerces/xni/QName;->setValues(Lmf/org/apache/xerces/xni/QName;)V

    goto :goto_0
.end method


# virtual methods
.method public validate([Lmf/org/apache/xerces/xni/QName;II)I
    .locals 4

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v0, 0x0

    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/models/SimpleContentModel;->fOperator:I

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "ImplementationMessages.VAL_CST"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    if-eqz p3, :cond_1

    aget-object v1, p1, p2

    iget-object v1, v1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/models/SimpleContentModel;->fFirstChild:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    if-ne v1, v2, :cond_2

    if-gt p3, v3, :cond_3

    :cond_0
    const/4 v0, -0x1

    return v0

    :cond_1
    return v0

    :cond_2
    return v0

    :cond_3
    return v3

    :pswitch_1
    if-eq p3, v3, :cond_5

    :cond_4
    if-le p3, v3, :cond_0

    return v3

    :cond_5
    aget-object v1, p1, p2

    iget-object v1, v1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/models/SimpleContentModel;->fFirstChild:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    if-eq v1, v2, :cond_4

    return v0

    :pswitch_2
    if-lez p3, :cond_0

    :goto_0
    if-ge v0, p3, :cond_0

    add-int v1, p2, v0

    aget-object v1, p1, v1

    iget-object v1, v1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/models/SimpleContentModel;->fFirstChild:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    if-ne v1, v2, :cond_6

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    return v0

    :pswitch_3
    if-eqz p3, :cond_7

    :goto_1
    if-ge v0, p3, :cond_0

    add-int v1, p2, v0

    aget-object v1, p1, v1

    iget-object v1, v1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/models/SimpleContentModel;->fFirstChild:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    if-ne v1, v2, :cond_8

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    return v0

    :cond_8
    return v0

    :pswitch_4
    if-eqz p3, :cond_a

    aget-object v1, p1, p2

    iget-object v1, v1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/models/SimpleContentModel;->fFirstChild:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    if-ne v1, v2, :cond_b

    :cond_9
    if-le p3, v3, :cond_0

    return v3

    :cond_a
    return v0

    :cond_b
    aget-object v1, p1, p2

    iget-object v1, v1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/models/SimpleContentModel;->fSecondChild:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    if-eq v1, v2, :cond_9

    return v0

    :pswitch_5
    if-eq p3, v2, :cond_c

    if-gt p3, v2, :cond_e

    return p3

    :cond_c
    aget-object v1, p1, p2

    iget-object v1, v1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/models/SimpleContentModel;->fFirstChild:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    if-ne v1, v2, :cond_d

    add-int/lit8 v0, p2, 0x1

    aget-object v0, p1, v0

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/models/SimpleContentModel;->fSecondChild:Lmf/org/apache/xerces/xni/QName;

    iget-object v1, v1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    if-eq v0, v1, :cond_0

    return v3

    :cond_d
    return v0

    :cond_e
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
