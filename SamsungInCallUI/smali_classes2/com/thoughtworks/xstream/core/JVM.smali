.class public Lcom/thoughtworks/xstream/core/JVM;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/thoughtworks/xstream/core/Caching;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/thoughtworks/xstream/core/JVM$Test;
    }
.end annotation


# static fields
.field private static final DEFAULT_JAVA_VERSION:F = 1.4f

.field private static final canAllocateWithUnsafe:Z

.field private static final canCreateDerivedObjectOutputStream:Z

.field private static final canParseUTCDateFormat:Z

.field private static final canWriteWithUnsafe:Z

.field private static final isAWTAvailable:Z

.field private static final isSQLAvailable:Z

.field private static final isSwingAvailable:Z

.field private static final majorJavaVersion:F

.field private static final optimizedTreeMapPutAll:Z

.field private static final optimizedTreeSetAddAll:Z

.field private static final reflectionProviderType:Ljava/lang/Class;

.field private static final reverseFieldOrder:Z

.field private static final vendor:Ljava/lang/String;


# instance fields
.field private reflectionProvider:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v0, "java.vm.vendor"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/core/JVM;->vendor:Ljava/lang/String;

    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->getMajorJavaVersion()F

    move-result v0

    sput v0, Lcom/thoughtworks/xstream/core/JVM;->majorJavaVersion:F

    :try_start_0
    const-string v0, "sun.misc.Unsafe"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "theUnsafe"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v4, "allocateInstance"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/Class;

    aput-object v8, v5, v7

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-class v7, Lcom/thoughtworks/xstream/core/JVM$Test;

    aput-object v7, v4, v5

    invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    if-eqz v0, :cond_1

    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/thoughtworks/xstream/core/JVM;->canAllocateWithUnsafe:Z

    const-class v4, Lcom/thoughtworks/xstream/converters/reflection/PureJavaReflectionProvider;

    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->canUseSunUnsafeReflectionProvider()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "com.thoughtworks.xstream.converters.reflection.SunUnsafeReflectionProvider"

    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    if-eqz v5, :cond_6

    const/4 v0, 0x0

    :try_start_1
    invoke-static {v5, v0}, Lcom/thoughtworks/xstream/core/util/DependencyInjectionFactory;->newInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    const-class v1, Lcom/thoughtworks/xstream/core/JVM$Test;

    invoke-interface {v0, v1}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/thoughtworks/xstream/core/JVM$Test;
    :try_end_1
    .catch Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException; {:try_start_1 .. :try_end_1} :catch_4

    :try_start_2
    const-string v7, "o"

    const-string v8, "object"

    const-class v9, Lcom/thoughtworks/xstream/core/JVM$Test;

    invoke-interface {v0, v1, v7, v8, v9}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;->writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    const-string v7, "c"

    new-instance v8, Ljava/lang/Character;

    const/16 v9, 0x63

    invoke-direct {v8, v9}, Ljava/lang/Character;-><init>(C)V

    const-class v9, Lcom/thoughtworks/xstream/core/JVM$Test;

    invoke-interface {v0, v1, v7, v8, v9}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;->writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    const-string v7, "b"

    new-instance v8, Ljava/lang/Byte;

    const/4 v9, 0x1

    invoke-direct {v8, v9}, Ljava/lang/Byte;-><init>(B)V

    const-class v9, Lcom/thoughtworks/xstream/core/JVM$Test;

    invoke-interface {v0, v1, v7, v8, v9}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;->writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    const-string v7, "s"

    new-instance v8, Ljava/lang/Short;

    const/4 v9, 0x1

    invoke-direct {v8, v9}, Ljava/lang/Short;-><init>(S)V

    const-class v9, Lcom/thoughtworks/xstream/core/JVM$Test;

    invoke-interface {v0, v1, v7, v8, v9}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;->writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    const-string v7, "i"

    new-instance v8, Ljava/lang/Integer;

    const/4 v9, 0x1

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(I)V

    const-class v9, Lcom/thoughtworks/xstream/core/JVM$Test;

    invoke-interface {v0, v1, v7, v8, v9}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;->writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    const-string v7, "l"

    new-instance v8, Ljava/lang/Long;

    const-wide/16 v10, 0x1

    invoke-direct {v8, v10, v11}, Ljava/lang/Long;-><init>(J)V

    const-class v9, Lcom/thoughtworks/xstream/core/JVM$Test;

    invoke-interface {v0, v1, v7, v8, v9}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;->writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    const-string v7, "f"

    new-instance v8, Ljava/lang/Float;

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v8, v9}, Ljava/lang/Float;-><init>(F)V

    const-class v9, Lcom/thoughtworks/xstream/core/JVM$Test;

    invoke-interface {v0, v1, v7, v8, v9}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;->writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    const-string v7, "d"

    new-instance v8, Ljava/lang/Double;

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    invoke-direct {v8, v10, v11}, Ljava/lang/Double;-><init>(D)V

    const-class v9, Lcom/thoughtworks/xstream/core/JVM$Test;

    invoke-interface {v0, v1, v7, v8, v9}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;->writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    const-string v7, "bool"

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-class v9, Lcom/thoughtworks/xstream/core/JVM$Test;

    invoke-interface {v0, v1, v7, v8, v9}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;->writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V
    :try_end_2
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException; {:try_start_2 .. :try_end_2} :catch_3

    move-object v0, v5

    move v1, v2

    :goto_1
    if-nez v0, :cond_0

    :try_start_3
    const-string v0, "com.thoughtworks.xstream.converters.reflection.SunLimitedUnsafeReflectionProvider"

    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException; {:try_start_3 .. :try_end_3} :catch_a

    move-result-object v0

    :cond_0
    :goto_2
    sput-object v0, Lcom/thoughtworks/xstream/core/JVM;->reflectionProviderType:Ljava/lang/Class;

    sput-boolean v1, Lcom/thoughtworks/xstream/core/JVM;->canWriteWithUnsafe:Z

    new-instance v1, Lcom/thoughtworks/xstream/core/JVM$1;

    invoke-direct {v1}, Lcom/thoughtworks/xstream/core/JVM$1;-><init>()V

    new-instance v4, Lcom/thoughtworks/xstream/core/util/PresortedMap;

    invoke-direct {v4, v1}, Lcom/thoughtworks/xstream/core/util/PresortedMap;-><init>(Ljava/util/Comparator;)V

    const-string v0, "one"

    invoke-interface {v4, v0, v6}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "two"

    invoke-interface {v4, v0, v6}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_4
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    invoke-virtual {v0, v4}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_5

    move v0, v2

    :goto_3
    sput-boolean v0, Lcom/thoughtworks/xstream/core/JVM;->optimizedTreeMapPutAll:Z

    new-instance v0, Lcom/thoughtworks/xstream/core/util/PresortedSet;

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/core/util/PresortedSet;-><init>(Ljava/util/Comparator;)V

    invoke-interface {v4}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/SortedSet;->addAll(Ljava/util/Collection;)Z

    :try_start_5
    new-instance v4, Ljava/util/TreeSet;

    invoke-direct {v4, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    invoke-virtual {v4, v0}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_6

    move v0, v2

    :goto_4
    sput-boolean v0, Lcom/thoughtworks/xstream/core/JVM;->optimizedTreeSetAddAll:Z

    :try_start_6
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "z"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v1, "UTC"

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_6
    .catch Ljava/text/ParseException; {:try_start_6 .. :try_end_6} :catch_7

    move v0, v2

    :goto_5
    sput-boolean v0, Lcom/thoughtworks/xstream/core/JVM;->canParseUTCDateFormat:Z

    :try_start_7
    new-instance v0, Lcom/thoughtworks/xstream/core/util/CustomObjectOutputStream;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/core/util/CustomObjectOutputStream;-><init>(Lcom/thoughtworks/xstream/core/util/CustomObjectOutputStream$StreamCallback;)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_9

    if-eqz v0, :cond_2

    move v0, v2

    :goto_6
    sput-boolean v0, Lcom/thoughtworks/xstream/core/JVM;->canCreateDerivedObjectOutputStream:Z

    const-string v0, "java.awt.Color"

    invoke-static {v0, v3}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_3

    move v0, v2

    :goto_7
    sput-boolean v0, Lcom/thoughtworks/xstream/core/JVM;->isAWTAvailable:Z

    const-string v0, "javax.swing.LookAndFeel"

    invoke-static {v0, v3}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_4

    move v0, v2

    :goto_8
    sput-boolean v0, Lcom/thoughtworks/xstream/core/JVM;->isSwingAvailable:Z

    const-string v0, "java.sql.Date"

    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_5

    :goto_9
    sput-boolean v2, Lcom/thoughtworks/xstream/core/JVM;->isSQLAvailable:Z

    return-void

    :cond_1
    move v0, v3

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move v0, v3

    goto/16 :goto_0

    :catch_1
    move-exception v0

    move v0, v3

    goto/16 :goto_0

    :catch_2
    move-exception v0

    move-object v0, v6

    move v1, v3

    goto/16 :goto_1

    :catch_3
    move-exception v0

    move-object v0, v6

    move v1, v3

    goto/16 :goto_1

    :catch_4
    move-exception v0

    move v0, v3

    :goto_a
    move v1, v0

    move-object v0, v4

    goto/16 :goto_2

    :catch_5
    move-exception v0

    move v0, v3

    goto :goto_3

    :catch_6
    move-exception v0

    move v0, v3

    goto :goto_4

    :catch_7
    move-exception v0

    move v0, v3

    goto :goto_5

    :cond_2
    move v0, v3

    goto :goto_6

    :catch_8
    move-exception v0

    move v0, v3

    goto :goto_6

    :catch_9
    move-exception v0

    move v0, v3

    goto :goto_6

    :cond_3
    move v0, v3

    goto :goto_7

    :cond_4
    move v0, v3

    goto :goto_8

    :cond_5
    move v2, v3

    goto :goto_9

    :catch_a
    move-exception v0

    move v0, v1

    goto :goto_a

    :cond_6
    move-object v0, v4

    move v1, v3

    goto/16 :goto_2
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canCreateDerivedObjectOutputStream()Z
    .locals 1

    sget-boolean v0, Lcom/thoughtworks/xstream/core/JVM;->canCreateDerivedObjectOutputStream:Z

    return v0
.end method

.method public static canParseUTCDateFormat()Z
    .locals 1

    sget-boolean v0, Lcom/thoughtworks/xstream/core/JVM;->canParseUTCDateFormat:Z

    return v0
.end method

.method private static canUseSunLimitedUnsafeReflectionProvider()Z
    .locals 1

    sget-boolean v0, Lcom/thoughtworks/xstream/core/JVM;->canWriteWithUnsafe:Z

    return v0
.end method

.method private static canUseSunUnsafeReflectionProvider()Z
    .locals 1

    sget-boolean v0, Lcom/thoughtworks/xstream/core/JVM;->canAllocateWithUnsafe:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->is14()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static final getMajorJavaVersion()F
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->isAndroid()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3fc00000    # 1.5f

    :goto_0
    return v0

    :cond_0
    const-string v0, "java.specification.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    const v0, 0x3fb33333    # 1.4f

    goto :goto_0
.end method

.method public static getStaxInputFactory()Ljava/lang/Class;
    .locals 1

    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->is16()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->isIBM()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.ibm.xml.xlxp.api.stax.XMLInputFactoryImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "com.sun.xml.internal.stream.XMLInputFactoryImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getStaxOutputFactory()Ljava/lang/Class;
    .locals 1

    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->is16()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->isIBM()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.ibm.xml.xlxp.api.stax.XMLOutputFactoryImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "com.sun.xml.internal.stream.XMLOutputFactoryImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasOptimizedTreeMapPutAll()Z
    .locals 1

    sget-boolean v0, Lcom/thoughtworks/xstream/core/JVM;->optimizedTreeMapPutAll:Z

    return v0
.end method

.method public static hasOptimizedTreeSetAddAll()Z
    .locals 1

    sget-boolean v0, Lcom/thoughtworks/xstream/core/JVM;->optimizedTreeSetAddAll:Z

    return v0
.end method

.method public static is14()Z
    .locals 2

    sget v0, Lcom/thoughtworks/xstream/core/JVM;->majorJavaVersion:F

    const v1, 0x3fb33333    # 1.4f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static is15()Z
    .locals 2

    sget v0, Lcom/thoughtworks/xstream/core/JVM;->majorJavaVersion:F

    const/high16 v1, 0x3fc00000    # 1.5f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static is16()Z
    .locals 2

    sget v0, Lcom/thoughtworks/xstream/core/JVM;->majorJavaVersion:F

    const v1, 0x3fcccccd    # 1.6f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static is17()Z
    .locals 2

    sget v0, Lcom/thoughtworks/xstream/core/JVM;->majorJavaVersion:F

    const v1, 0x3fd9999a    # 1.7f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static is18()Z
    .locals 2

    sget v0, Lcom/thoughtworks/xstream/core/JVM;->majorJavaVersion:F

    const v1, 0x3fe66666    # 1.8f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAWTAvailable()Z
    .locals 1

    sget-boolean v0, Lcom/thoughtworks/xstream/core/JVM;->isAWTAvailable:Z

    return v0
.end method

.method private static isAndroid()Z
    .locals 2

    sget-object v0, Lcom/thoughtworks/xstream/core/JVM;->vendor:Ljava/lang/String;

    const-string v1, "Android"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isIBM()Z
    .locals 2

    sget-object v0, Lcom/thoughtworks/xstream/core/JVM;->vendor:Ljava/lang/String;

    const-string v1, "IBM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSQLAvailable()Z
    .locals 1

    sget-boolean v0, Lcom/thoughtworks/xstream/core/JVM;->isSQLAvailable:Z

    return v0
.end method

.method public static isSwingAvailable()Z
    .locals 1

    sget-boolean v0, Lcom/thoughtworks/xstream/core/JVM;->isSwingAvailable:Z

    return v0
.end method

.method public static loadClassForName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static loadClassForName(Ljava/lang/String;Z)Ljava/lang/Class;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-class v1, Lcom/thoughtworks/xstream/core/JVM;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {p0, p1, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 9

    const/4 v5, 0x0

    const/4 v8, 0x3

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-class v0, Ljava/text/AttributedString;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    move v0, v1

    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_6

    aget-object v4, v3, v0

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v6, "text"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-le v0, v8, :cond_0

    move v0, v2

    :goto_1
    const-class v3, Lcom/thoughtworks/xstream/core/JVM$Test;

    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    move v3, v1

    :goto_2
    array-length v6, v4

    if-ge v3, v6, :cond_5

    aget-object v6, v4, v3

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "o"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    if-le v3, v8, :cond_2

    move v3, v2

    :goto_3
    :try_start_0
    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->getStaxInputFactory()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    :goto_4
    :try_start_1
    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->getStaxOutputFactory()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v5

    :goto_5
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "XStream JVM diagnostics"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "java.specification.version: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "java.specification.version"

    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "java.specification.vendor: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "java.specification.vendor"

    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "java.specification.name: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "java.specification.name"

    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "java.vm.vendor: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/thoughtworks/xstream/core/JVM;->vendor:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "java.vendor: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "java.vendor"

    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "java.vm.name: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "java.vm.name"

    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Version: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/thoughtworks/xstream/core/JVM;->majorJavaVersion:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "XStream support for enhanced Mode: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->canUseSunUnsafeReflectionProvider()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "XStream support for reduced Mode: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->canUseSunLimitedUnsafeReflectionProvider()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Supports AWT: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->isAWTAvailable()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Supports Swing: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->isSwingAvailable()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Supports SQL: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->isSQLAvailable()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Java Beans EventHandler present: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "java.beans.EventHandler"

    invoke-static {v8}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    if-eqz v8, :cond_4

    :goto_6
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Standard StAX XMLInputFactory: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Standard StAX XMLOutputFactory: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Optimized TreeSet.addAll: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->hasOptimizedTreeSetAddAll()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Optimized TreeMap.putAll: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->hasOptimizedTreeMapPutAll()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can parse UTC date format: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->canParseUTCDateFormat()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can create derive ObjectOutputStream: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->canCreateDerivedObjectOutputStream()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reverse field order detected for JDK: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reverse field order detected (only if JVM class itself has been compiled): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    move v0, v1

    goto/16 :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_2
    move v3, v1

    goto/16 :goto_3

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_4

    :catch_1
    move-exception v4

    move-object v4, v5

    goto/16 :goto_4

    :catch_2
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_5

    :cond_4
    move v2, v1

    goto/16 :goto_6

    :catch_3
    move-exception v6

    goto/16 :goto_5

    :cond_5
    move v3, v1

    goto/16 :goto_3

    :cond_6
    move v0, v1

    goto/16 :goto_1
.end method

.method public static newReflectionProvider()Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;
    .locals 2

    sget-object v0, Lcom/thoughtworks/xstream/core/JVM;->reflectionProviderType:Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/thoughtworks/xstream/core/util/DependencyInjectionFactory;->newInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    return-object v0
.end method

.method public static newReflectionProvider(Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary;)Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;
    .locals 3

    sget-object v0, Lcom/thoughtworks/xstream/core/JVM;->reflectionProviderType:Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lcom/thoughtworks/xstream/core/util/DependencyInjectionFactory;->newInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    return-object v0
.end method

.method public static reverseFieldDefinition()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public declared-synchronized bestReflectionProvider()Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/JVM;->reflectionProvider:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->newReflectionProvider()Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/thoughtworks/xstream/core/JVM;->reflectionProvider:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    :cond_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/JVM;->reflectionProvider:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public flushCache()V
    .locals 0

    return-void
.end method

.method public loadClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public loadClass(Ljava/lang/String;Z)Ljava/lang/Class;
    .locals 1

    invoke-static {p1, p2}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public supportsAWT()Z
    .locals 1

    sget-boolean v0, Lcom/thoughtworks/xstream/core/JVM;->isAWTAvailable:Z

    return v0
.end method

.method public supportsSQL()Z
    .locals 1

    sget-boolean v0, Lcom/thoughtworks/xstream/core/JVM;->isSQLAvailable:Z

    return v0
.end method

.method public supportsSwing()Z
    .locals 1

    sget-boolean v0, Lcom/thoughtworks/xstream/core/JVM;->isSwingAvailable:Z

    return v0
.end method
