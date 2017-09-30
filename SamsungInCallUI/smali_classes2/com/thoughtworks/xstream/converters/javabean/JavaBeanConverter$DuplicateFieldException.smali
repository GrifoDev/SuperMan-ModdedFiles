.class public Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter$DuplicateFieldException;
.super Lcom/thoughtworks/xstream/converters/ConversionException;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DuplicateFieldException"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;)V

    return-void
.end method
