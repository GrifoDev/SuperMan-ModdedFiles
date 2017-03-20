.class public Lcom/thoughtworks/xstream/converters/reflection/Sun14ReflectionProvider;
.super Lcom/thoughtworks/xstream/converters/reflection/SunUnsafeReflectionProvider;
.source "Sun14ReflectionProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/thoughtworks/xstream/converters/reflection/SunUnsafeReflectionProvider;-><init>()V

    .line 29
    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary;)V
    .locals 0
    .param p1, "dic"    # Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/converters/reflection/SunUnsafeReflectionProvider;-><init>(Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary;)V

    .line 36
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 0

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/converters/reflection/Sun14ReflectionProvider;->init()V

    .line 40
    return-object p0
.end method
