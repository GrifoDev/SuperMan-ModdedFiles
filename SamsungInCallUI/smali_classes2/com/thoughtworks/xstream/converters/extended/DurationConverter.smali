.class public Lcom/thoughtworks/xstream/converters/extended/DurationConverter;
.super Lcom/thoughtworks/xstream/converters/basic/AbstractSingleValueConverter;


# instance fields
.field private final factory:Ljavax/xml/datatype/DatatypeFactory;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lcom/thoughtworks/xstream/converters/extended/DurationConverter$1;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/converters/extended/DurationConverter$1;-><init>()V

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/converters/extended/DurationConverter$1;->getFactory()Ljavax/xml/datatype/DatatypeFactory;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/converters/extended/DurationConverter;-><init>(Ljavax/xml/datatype/DatatypeFactory;)V

    return-void
.end method

.method public constructor <init>(Ljavax/xml/datatype/DatatypeFactory;)V
    .locals 0

    invoke-direct {p0}, Lcom/thoughtworks/xstream/converters/basic/AbstractSingleValueConverter;-><init>()V

    iput-object p1, p0, Lcom/thoughtworks/xstream/converters/extended/DurationConverter;->factory:Ljavax/xml/datatype/DatatypeFactory;

    return-void
.end method


# virtual methods
.method public canConvert(Ljava/lang/Class;)Z
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/extended/DurationConverter;->factory:Ljavax/xml/datatype/DatatypeFactory;

    if-eqz v0, :cond_0

    const-class v0, Ljavax/xml/datatype/Duration;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public fromString(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/extended/DurationConverter;->factory:Ljavax/xml/datatype/DatatypeFactory;

    invoke-virtual {v0, p1}, Ljavax/xml/datatype/DatatypeFactory;->newDuration(Ljava/lang/String;)Ljavax/xml/datatype/Duration;

    move-result-object v0

    return-object v0
.end method
