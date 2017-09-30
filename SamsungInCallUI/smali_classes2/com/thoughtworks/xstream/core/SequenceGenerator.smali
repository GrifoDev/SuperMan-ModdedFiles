.class public Lcom/thoughtworks/xstream/core/SequenceGenerator;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/thoughtworks/xstream/core/ReferenceByIdMarshaller$IDGenerator;


# instance fields
.field private counter:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/thoughtworks/xstream/core/SequenceGenerator;->counter:I

    return-void
.end method


# virtual methods
.method public next(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/thoughtworks/xstream/core/SequenceGenerator;->counter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/thoughtworks/xstream/core/SequenceGenerator;->counter:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
