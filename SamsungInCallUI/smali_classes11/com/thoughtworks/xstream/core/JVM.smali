.class public Lcom/thoughtworks/xstream/core/JVM;
.super Ljava/lang/Object;
.source "JVM.java"

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
    .locals 22

    const-string v17, "java.vm.vendor"

    invoke-static/range {v17 .. v17}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    sput-object v17, Lcom/thoughtworks/xstream/core/JVM;->vendor:Ljava/lang/String;

    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->getMajorJavaVersion()F

    move-result v17

    sput v17, Lcom/thoughtworks/xstream/core/JVM;->majorJavaVersion:F

    const/4 v12, 0x1

    const/4 v14, 0x0

    :try_start_0
    const-string v17, "sun.misc.Unsafe"

    invoke-static/range {v17 .. v17}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v15

    const-string v17, "theUnsafe"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v16

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    const-string v17, "allocateInstance"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-class v20, Ljava/lang/Class;

    aput-object v20, v18, v19

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-class v19, Lcom/thoughtworks/xstream/core/JVM$Test;

    aput-object v19, v17, v18

    move-object/from16 v0, v17

    invoke-virtual {v4, v14, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v17

    if-eqz v17, :cond_2

    const/4 v12, 0x1

    :goto_0
    sput-boolean v12, Lcom/thoughtworks/xstream/core/JVM;->canAllocateWithUnsafe:Z

    const/4 v12, 0x0

    const-class v13, Lcom/thoughtworks/xstream/converters/reflection/PureJavaReflectionProvider;

    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->canUseSunUnsafeReflectionProvider()Z

    move-result v17

    if-eqz v17, :cond_1

    const-string v17, "com.thoughtworks.xstream.converters.reflection.SunUnsafeReflectionProvider"

    invoke-static/range {v17 .. v17}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    if-eqz v5, :cond_1

    const/16 v17, 0x0

    :try_start_1
    move-object/from16 v0, v17

    invoke-static {v5, v0}, Lcom/thoughtworks/xstream/core/util/DependencyInjectionFactory;->newInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    const-class v17, Lcom/thoughtworks/xstream/core/JVM$Test;

    move-object/from16 v0, v17

    invoke-interface {v9, v0}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/thoughtworks/xstream/core/JVM$Test;
    :try_end_1
    .catch Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException; {:try_start_1 .. :try_end_1} :catch_9

    :try_start_2
    const-string v17, "o"

    const-string v18, "object"

    const-class v19, Lcom/thoughtworks/xstream/core/JVM$Test;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v9, v11, v0, v1, v2}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;->writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    const-string v17, "c"

    new-instance v18, Ljava/lang/Character;

    const/16 v19, 0x63

    invoke-direct/range {v18 .. v19}, Ljava/lang/Character;-><init>(C)V

    const-class v19, Lcom/thoughtworks/xstream/core/JVM$Test;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v9, v11, v0, v1, v2}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;->writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    const-string v17, "b"

    new-instance v18, Ljava/lang/Byte;

    const/16 v19, 0x1

    invoke-direct/range {v18 .. v19}, Ljava/lang/Byte;-><init>(B)V

    const-class v19, Lcom/thoughtworks/xstream/core/JVM$Test;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v9, v11, v0, v1, v2}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;->writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    const-string v17, "s"

    new-instance v18, Ljava/lang/Short;

    const/16 v19, 0x1

    invoke-direct/range {v18 .. v19}, Ljava/lang/Short;-><init>(S)V

    const-class v19, Lcom/thoughtworks/xstream/core/JVM$Test;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v9, v11, v0, v1, v2}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;->writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    const-string v17, "i"

    new-instance v18, Ljava/lang/Integer;

    const/16 v19, 0x1

    invoke-direct/range {v18 .. v19}, Ljava/lang/Integer;-><init>(I)V

    const-class v19, Lcom/thoughtworks/xstream/core/JVM$Test;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v9, v11, v0, v1, v2}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;->writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    const-string v17, "l"

    new-instance v18, Ljava/lang/Long;

    const-wide/16 v20, 0x1

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    const-class v19, Lcom/thoughtworks/xstream/core/JVM$Test;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v9, v11, v0, v1, v2}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;->writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    const-string v17, "f"

    new-instance v18, Ljava/lang/Float;

    const/high16 v19, 0x3f800000    # 1.0f

    invoke-direct/range {v18 .. v19}, Ljava/lang/Float;-><init>(F)V

    const-class v19, Lcom/thoughtworks/xstream/core/JVM$Test;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v9, v11, v0, v1, v2}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;->writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    const-string v17, "d"

    new-instance v18, Ljava/lang/Double;

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    const-class v19, Lcom/thoughtworks/xstream/core/JVM$Test;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v9, v11, v0, v1, v2}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;->writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    const-string v17, "bool"

    sget-object v18, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-class v19, Lcom/thoughtworks/xstream/core/JVM$Test;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v9, v11, v0, v1, v2}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;->writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V
    :try_end_2
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException; {:try_start_2 .. :try_end_2} :catch_3

    const/4 v12, 0x1

    :goto_1
    if-nez v5, :cond_0

    :try_start_3
    const-string v17, "com.thoughtworks.xstream.converters.reflection.SunLimitedUnsafeReflectionProvider"

    invoke-static/range {v17 .. v17}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException; {:try_start_3 .. :try_end_3} :catch_9

    move-result-object v5

    :cond_0
    move-object v13, v5

    :cond_1
    :goto_2
    sput-object v13, Lcom/thoughtworks/xstream/core/JVM;->reflectionProviderType:Ljava/lang/Class;

    sput-boolean v12, Lcom/thoughtworks/xstream/core/JVM;->canWriteWithUnsafe:Z

    new-instance v6, Lcom/thoughtworks/xstream/core/JVM$1;

    invoke-direct {v6}, Lcom/thoughtworks/xstream/core/JVM$1;-><init>()V

    new-instance v8, Lcom/thoughtworks/xstream/core/util/PresortedMap;

    invoke-direct {v8, v6}, Lcom/thoughtworks/xstream/core/util/PresortedMap;-><init>(Ljava/util/Comparator;)V

    const-string v17, "one"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v8, v0, v1}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v17, "two"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v8, v0, v1}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_4
    new-instance v17, Ljava/util/TreeMap;

    move-object/from16 v0, v17

    invoke-direct {v0, v6}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_4

    const/4 v12, 0x1

    :goto_3
    sput-boolean v12, Lcom/thoughtworks/xstream/core/JVM;->optimizedTreeMapPutAll:Z

    new-instance v10, Lcom/thoughtworks/xstream/core/util/PresortedSet;

    invoke-direct {v10, v6}, Lcom/thoughtworks/xstream/core/util/PresortedSet;-><init>(Ljava/util/Comparator;)V

    invoke-interface {v8}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v10, v0}, Ljava/util/SortedSet;->addAll(Ljava/util/Collection;)Z

    :try_start_5
    new-instance v17, Ljava/util/TreeSet;

    move-object/from16 v0, v17

    invoke-direct {v0, v6}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_5

    const/4 v12, 0x1

    :goto_4
    sput-boolean v12, Lcom/thoughtworks/xstream/core/JVM;->optimizedTreeSetAddAll:Z

    :try_start_6
    new-instance v17, Ljava/text/SimpleDateFormat;

    const-string v18, "z"

    invoke-direct/range {v17 .. v18}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v18, "UTC"

    invoke-virtual/range {v17 .. v18}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_6
    .catch Ljava/text/ParseException; {:try_start_6 .. :try_end_6} :catch_6

    const/4 v12, 0x1

    :goto_5
    sput-boolean v12, Lcom/thoughtworks/xstream/core/JVM;->canParseUTCDateFormat:Z

    :try_start_7
    new-instance v17, Lcom/thoughtworks/xstream/core/util/CustomObjectOutputStream;

    const/16 v18, 0x0

    invoke-direct/range {v17 .. v18}, Lcom/thoughtworks/xstream/core/util/CustomObjectOutputStream;-><init>(Lcom/thoughtworks/xstream/core/util/CustomObjectOutputStream$StreamCallback;)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8

    if-eqz v17, :cond_3

    const/4 v12, 0x1

    :goto_6
    sput-boolean v12, Lcom/thoughtworks/xstream/core/JVM;->canCreateDerivedObjectOutputStream:Z

    const-string v17, "java.awt.Color"

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object v17

    if-eqz v17, :cond_4

    const/16 v17, 0x1

    :goto_7
    sput-boolean v17, Lcom/thoughtworks/xstream/core/JVM;->isAWTAvailable:Z

    const-string v17, "javax.swing.LookAndFeel"

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object v17

    if-eqz v17, :cond_5

    const/16 v17, 0x1

    :goto_8
    sput-boolean v17, Lcom/thoughtworks/xstream/core/JVM;->isSwingAvailable:Z

    const-string v17, "java.sql.Date"

    invoke-static/range {v17 .. v17}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v17

    if-eqz v17, :cond_6

    const/16 v17, 0x1

    :goto_9
    sput-boolean v17, Lcom/thoughtworks/xstream/core/JVM;->isSQLAvailable:Z

    return-void

    :cond_2
    const/4 v12, 0x0

    goto/16 :goto_0

    :catch_0
    move-exception v7

    const/4 v12, 0x0

    goto/16 :goto_0

    :catch_1
    move-exception v7

    const/4 v12, 0x0

    goto/16 :goto_0

    :catch_2
    move-exception v7

    const/4 v5, 0x0

    goto/16 :goto_1

    :catch_3
    move-exception v7

    const/4 v5, 0x0

    goto/16 :goto_1

    :catch_4
    move-exception v7

    const/4 v12, 0x0

    goto :goto_3

    :catch_5
    move-exception v7

    const/4 v12, 0x0

    goto :goto_4

    :catch_6
    move-exception v7

    const/4 v12, 0x0

    goto :goto_5

    :cond_3
    const/4 v12, 0x0

    goto :goto_6

    :catch_7
    move-exception v7

    const/4 v12, 0x0

    goto :goto_6

    :catch_8
    move-exception v7

    const/4 v12, 0x0

    goto :goto_6

    :cond_4
    const/16 v17, 0x0

    goto :goto_7

    :cond_5
    const/16 v17, 0x0

    goto :goto_8

    :cond_6
    const/16 v17, 0x0

    goto :goto_9

    :catch_9
    move-exception v17

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
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->isAndroid()Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x3fc00000    # 1.5f

    :goto_0
    return v1

    :cond_0
    const-string v1, "java.specification.version"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    const v1, 0x3fb33333    # 1.4f

    goto :goto_0
.end method

.method public static getStaxInputFactory()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

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
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-class v2, Lcom/thoughtworks/xstream/core/JVM;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {p0, p1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

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
    .locals 12

    const/4 v11, 0x3

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v3, 0x0

    const-class v9, Ljava/text/AttributedString;

    invoke-virtual {v9}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    array-length v9, v1

    if-ge v2, v9, :cond_0

    aget-object v9, v1, v2

    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "text"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    if-le v2, v11, :cond_2

    move v3, v7

    :cond_0
    :goto_1
    const/4 v4, 0x0

    const-class v9, Lcom/thoughtworks/xstream/core/JVM$Test;

    invoke-virtual {v9}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    :goto_2
    array-length v9, v1

    if-ge v2, v9, :cond_1

    aget-object v9, v1, v2

    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "o"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    if-le v2, v11, :cond_4

    move v4, v7

    :cond_1
    :goto_3
    const/4 v5, 0x0

    :try_start_0
    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->getStaxInputFactory()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v5

    :goto_4
    const/4 v6, 0x0

    :try_start_1
    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->getStaxOutputFactory()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v6

    :goto_5
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v10, "XStream JVM diagnostics"

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "java.specification.version: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "java.specification.version"

    invoke-static {v11}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "java.specification.vendor: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "java.specification.vendor"

    invoke-static {v11}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "java.specification.name: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "java.specification.name"

    invoke-static {v11}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "java.vm.vendor: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/thoughtworks/xstream/core/JVM;->vendor:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "java.vendor: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "java.vendor"

    invoke-static {v11}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "java.vm.name: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "java.vm.name"

    invoke-static {v11}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Version: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget v11, Lcom/thoughtworks/xstream/core/JVM;->majorJavaVersion:F

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "XStream support for enhanced Mode: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->canUseSunUnsafeReflectionProvider()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "XStream support for reduced Mode: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->canUseSunLimitedUnsafeReflectionProvider()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Supports AWT: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->isAWTAvailable()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Supports Swing: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->isSwingAvailable()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Supports SQL: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->isSQLAvailable()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Java Beans EventHandler present: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "java.beans.EventHandler"

    invoke-static {v11}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    if-eqz v11, :cond_6

    :goto_6
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Standard StAX XMLInputFactory: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Standard StAX XMLOutputFactory: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Optimized TreeSet.addAll: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->hasOptimizedTreeSetAddAll()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Optimized TreeMap.putAll: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->hasOptimizedTreeMapPutAll()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can parse UTC date format: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->canParseUTCDateFormat()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can create derive ObjectOutputStream: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->canCreateDerivedObjectOutputStream()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Reverse field order detected for JDK: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Reverse field order detected (only if JVM class itself has been compiled): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    :cond_2
    move v3, v8

    goto/16 :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_4
    move v4, v8

    goto/16 :goto_3

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_4

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_5

    :cond_6
    move v7, v8

    goto/16 :goto_6

    :catch_2
    move-exception v9

    goto/16 :goto_5

    :catch_3
    move-exception v9

    goto/16 :goto_4
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
