.class public Lcom/thoughtworks/xstream/converters/extended/StackTraceElementConverter;
.super Lcom/thoughtworks/xstream/converters/basic/AbstractSingleValueConverter;
.source "StackTraceElementConverter.java"


# static fields
.field private static final FACTORY:Lcom/thoughtworks/xstream/converters/extended/StackTraceElementFactory;

.field private static final PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 35
    const-string v4, "^(.+)\\.([^\\(]+)\\(([^:]*)(:(\\d+))?\\)$"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    sput-object v4, Lcom/thoughtworks/xstream/converters/extended/StackTraceElementConverter;->PATTERN:Ljava/util/regex/Pattern;

    .line 38
    const/4 v2, 0x0

    .line 39
    .local v2, "factory":Lcom/thoughtworks/xstream/converters/extended/StackTraceElementFactory;
    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->is15()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 40
    const-string v4, "com.thoughtworks.xstream.converters.extended.StackTraceElementFactory15"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object v3

    .line 44
    .local v3, "factoryType":Ljava/lang/Class;
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/thoughtworks/xstream/converters/extended/StackTraceElementFactory;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_2

    .line 51
    .end local v3    # "factoryType":Ljava/lang/Class;
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    .line 52
    new-instance v2, Lcom/thoughtworks/xstream/converters/extended/StackTraceElementFactory;

    .end local v2    # "factory":Lcom/thoughtworks/xstream/converters/extended/StackTraceElementFactory;
    invoke-direct {v2}, Lcom/thoughtworks/xstream/converters/extended/StackTraceElementFactory;-><init>()V

    .line 55
    .restart local v2    # "factory":Lcom/thoughtworks/xstream/converters/extended/StackTraceElementFactory;
    :cond_1
    :try_start_1
    const-string v4, "a"

    const-string v5, "b"

    invoke-virtual {v2, v4, v5}, Lcom/thoughtworks/xstream/converters/extended/StackTraceElementFactory;->unknownSourceElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StackTraceElement;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_1

    .line 61
    :goto_1
    sput-object v2, Lcom/thoughtworks/xstream/converters/extended/StackTraceElementConverter;->FACTORY:Lcom/thoughtworks/xstream/converters/extended/StackTraceElementFactory;

    .line 62
    return-void

    .line 56
    :catch_0
    move-exception v1

    .line 57
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 60
    goto :goto_1

    .line 58
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 59
    .local v1, "e":Ljava/lang/NoClassDefFoundError;
    const/4 v2, 0x0

    goto :goto_1

    .line 47
    .end local v1    # "e":Ljava/lang/NoClassDefFoundError;
    .restart local v3    # "factoryType":Ljava/lang/Class;
    :catch_2
    move-exception v4

    goto :goto_0

    .line 45
    :catch_3
    move-exception v4

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/thoughtworks/xstream/converters/basic/AbstractSingleValueConverter;-><init>()V

    return-void
.end method


# virtual methods
.method public canConvert(Ljava/lang/Class;)Z
    .locals 1
    .param p1, "type"    # Ljava/lang/Class;

    .prologue
    .line 65
    const-class v0, Ljava/lang/StackTraceElement;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/thoughtworks/xstream/converters/extended/StackTraceElementConverter;->FACTORY:Lcom/thoughtworks/xstream/converters/extended/StackTraceElementFactory;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public fromString(Ljava/lang/String;)Ljava/lang/Object;
    .locals 8
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 75
    sget-object v5, Lcom/thoughtworks/xstream/converters/extended/StackTraceElementConverter;->PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v5, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 76
    .local v3, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 77
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "declaringClass":Ljava/lang/String;
    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 79
    .local v4, "methodName":Ljava/lang/String;
    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, "fileName":Ljava/lang/String;
    const-string v5, "Unknown Source"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 81
    sget-object v5, Lcom/thoughtworks/xstream/converters/extended/StackTraceElementConverter;->FACTORY:Lcom/thoughtworks/xstream/converters/extended/StackTraceElementFactory;

    invoke-virtual {v5, v0, v4}, Lcom/thoughtworks/xstream/converters/extended/StackTraceElementFactory;->unknownSourceElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StackTraceElement;

    move-result-object v5

    .line 89
    :goto_0
    return-object v5

    .line 82
    :cond_0
    const-string v5, "Native Method"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 83
    sget-object v5, Lcom/thoughtworks/xstream/converters/extended/StackTraceElementConverter;->FACTORY:Lcom/thoughtworks/xstream/converters/extended/StackTraceElementFactory;

    invoke-virtual {v5, v0, v4}, Lcom/thoughtworks/xstream/converters/extended/StackTraceElementFactory;->nativeMethodElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StackTraceElement;

    move-result-object v5

    goto :goto_0

    .line 85
    :cond_1
    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 86
    const/4 v5, 0x5

    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 87
    .local v2, "lineNumber":I
    sget-object v5, Lcom/thoughtworks/xstream/converters/extended/StackTraceElementConverter;->FACTORY:Lcom/thoughtworks/xstream/converters/extended/StackTraceElementFactory;

    invoke-virtual {v5, v0, v4, v1, v2}, Lcom/thoughtworks/xstream/converters/extended/StackTraceElementFactory;->element(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/StackTraceElement;

    move-result-object v5

    goto :goto_0

    .line 89
    .end local v2    # "lineNumber":I
    :cond_2
    sget-object v5, Lcom/thoughtworks/xstream/converters/extended/StackTraceElementConverter;->FACTORY:Lcom/thoughtworks/xstream/converters/extended/StackTraceElementFactory;

    invoke-virtual {v5, v0, v4, v1}, Lcom/thoughtworks/xstream/converters/extended/StackTraceElementFactory;->element(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StackTraceElement;

    move-result-object v5

    goto :goto_0

    .line 93
    .end local v0    # "declaringClass":Ljava/lang/String;
    .end local v1    # "fileName":Ljava/lang/String;
    .end local v4    # "methodName":Ljava/lang/String;
    :cond_3
    new-instance v5, Lcom/thoughtworks/xstream/converters/ConversionException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not parse StackTraceElement : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/thoughtworks/xstream/converters/basic/AbstractSingleValueConverter;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "s":Ljava/lang/String;
    const-string v1, ":\\?\\?\\?"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
