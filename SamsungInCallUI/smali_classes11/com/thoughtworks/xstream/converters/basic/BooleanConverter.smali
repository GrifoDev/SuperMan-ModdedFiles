.class public Lcom/thoughtworks/xstream/converters/basic/BooleanConverter;
.super Lcom/thoughtworks/xstream/converters/basic/AbstractSingleValueConverter;
.source "BooleanConverter.java"


# static fields
.field public static final BINARY:Lcom/thoughtworks/xstream/converters/basic/BooleanConverter;

.field public static final TRUE_FALSE:Lcom/thoughtworks/xstream/converters/basic/BooleanConverter;

.field public static final YES_NO:Lcom/thoughtworks/xstream/converters/basic/BooleanConverter;


# instance fields
.field private final caseSensitive:Z

.field private final negative:Ljava/lang/String;

.field private final positive:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 24
    new-instance v0, Lcom/thoughtworks/xstream/converters/basic/BooleanConverter;

    const-string v1, "true"

    const-string v2, "false"

    invoke-direct {v0, v1, v2, v3}, Lcom/thoughtworks/xstream/converters/basic/BooleanConverter;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/thoughtworks/xstream/converters/basic/BooleanConverter;->TRUE_FALSE:Lcom/thoughtworks/xstream/converters/basic/BooleanConverter;

    .line 26
    new-instance v0, Lcom/thoughtworks/xstream/converters/basic/BooleanConverter;

    const-string v1, "yes"

    const-string v2, "no"

    invoke-direct {v0, v1, v2, v3}, Lcom/thoughtworks/xstream/converters/basic/BooleanConverter;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/thoughtworks/xstream/converters/basic/BooleanConverter;->YES_NO:Lcom/thoughtworks/xstream/converters/basic/BooleanConverter;

    .line 28
    new-instance v0, Lcom/thoughtworks/xstream/converters/basic/BooleanConverter;

    const-string v1, "1"

    const-string v2, "0"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/thoughtworks/xstream/converters/basic/BooleanConverter;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/thoughtworks/xstream/converters/basic/BooleanConverter;->BINARY:Lcom/thoughtworks/xstream/converters/basic/BooleanConverter;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 41
    const-string v0, "true"

    const-string v1, "false"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/thoughtworks/xstream/converters/basic/BooleanConverter;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "positive"    # Ljava/lang/String;
    .param p2, "negative"    # Ljava/lang/String;
    .param p3, "caseSensitive"    # Z

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/thoughtworks/xstream/converters/basic/AbstractSingleValueConverter;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/thoughtworks/xstream/converters/basic/BooleanConverter;->positive:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/thoughtworks/xstream/converters/basic/BooleanConverter;->negative:Ljava/lang/String;

    .line 37
    iput-boolean p3, p0, Lcom/thoughtworks/xstream/converters/basic/BooleanConverter;->caseSensitive:Z

    .line 38
    return-void
.end method


# virtual methods
.method public canConvert(Ljava/lang/Class;)Z
    .locals 1
    .param p1, "type"    # Ljava/lang/Class;

    .prologue
    .line 49
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public fromString(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/thoughtworks/xstream/converters/basic/BooleanConverter;->caseSensitive:Z

    if-eqz v0, :cond_1

    .line 54
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/basic/BooleanConverter;->positive:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 56
    :goto_0
    return-object v0

    .line 54
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 56
    :cond_1
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/basic/BooleanConverter;->positive:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public shouldConvert(Ljava/lang/Class;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 45
    const/4 v0, 0x1

    return v0
.end method

.method public toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 61
    move-object v0, p1

    check-cast v0, Ljava/lang/Boolean;

    .line 62
    .local v0, "value":Ljava/lang/Boolean;
    if-nez p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/basic/BooleanConverter;->positive:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/basic/BooleanConverter;->negative:Ljava/lang/String;

    goto :goto_0
.end method
