.class public final Ljava/util/regex/Pattern;
.super Ljava/lang/Object;
.source "Pattern.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/regex/Pattern$-java_util_function_Predicate_asPredicate__LambdaImpl0;
    }
.end annotation


# static fields
.field public static final CANON_EQ:I = 0x80

.field public static final CASE_INSENSITIVE:I = 0x2

.field public static final COMMENTS:I = 0x4

.field public static final DOTALL:I = 0x20

.field private static final FASTSPLIT_METACHARACTERS:Ljava/lang/String; = "\\?*+[](){}^$.|"

.field public static final LITERAL:I = 0x10

.field public static final MULTILINE:I = 0x8

.field public static final UNICODE_CASE:I = 0x40

.field public static final UNICODE_CHARACTER_CLASS:I = 0x100

.field public static final UNIX_LINES:I = 0x1

.field private static final registry:Llibcore/util/NativeAllocationRegistry;

.field private static final serialVersionUID:J = 0x4667d56b6e49020dL


# instance fields
.field transient address:J

.field private final flags:I

.field private final pattern:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 932
    new-instance v0, Llibcore/util/NativeAllocationRegistry;

    .line 933
    const-class v1, Ljava/util/regex/Pattern;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {}, Ljava/util/regex/Pattern;->getNativeFinalizer()J

    move-result-wide v2

    invoke-static {}, Ljava/util/regex/Pattern;->nativeSize()I

    move-result v4

    int-to-long v4, v4

    .line 932
    invoke-direct/range {v0 .. v5}, Llibcore/util/NativeAllocationRegistry;-><init>(Ljava/lang/ClassLoader;JJ)V

    sput-object v0, Ljava/util/regex/Pattern;->registry:Llibcore/util/NativeAllocationRegistry;

    .line 766
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 4
    .param p1, "p"    # Ljava/lang/String;
    .param p2, "f"    # I

    .prologue
    .line 1314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1315
    and-int/lit16 v1, p2, 0x80

    if-eqz v1, :cond_0

    .line 1316
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v2, "CANON_EQ flag not supported"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1318
    :cond_0
    const/16 v0, 0x7f

    .line 1319
    .local v0, "supportedFlags":I
    not-int v1, v0

    and-int/2addr v1, p2

    if-eqz v1, :cond_1

    .line 1320
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unsupported flags: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    not-int v3, v0

    and-int/2addr v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1322
    :cond_1
    iput-object p1, p0, Ljava/util/regex/Pattern;->pattern:Ljava/lang/String;

    .line 1323
    iput p2, p0, Ljava/util/regex/Pattern;->flags:I

    .line 1324
    invoke-direct {p0}, Ljava/util/regex/Pattern;->compile()V

    .line 1314
    return-void
.end method

.method public static compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
    .locals 2
    .param p0, "regex"    # Ljava/lang/String;

    .prologue
    .line 946
    new-instance v0, Ljava/util/regex/Pattern;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/regex/Pattern;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;
    .locals 1
    .param p0, "regex"    # Ljava/lang/String;
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/regex/PatternSyntaxException;
        }
    .end annotation

    .prologue
    .line 971
    new-instance v0, Ljava/util/regex/Pattern;

    invoke-direct {v0, p0, p1}, Ljava/util/regex/Pattern;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method private compile()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/regex/PatternSyntaxException;
        }
    .end annotation

    .prologue
    .line 1328
    iget-object v2, p0, Ljava/util/regex/Pattern;->pattern:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1329
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "pattern == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1332
    :cond_0
    iget-object v1, p0, Ljava/util/regex/Pattern;->pattern:Ljava/lang/String;

    .line 1333
    .local v1, "icuPattern":Ljava/lang/String;
    iget v2, p0, Ljava/util/regex/Pattern;->flags:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_1

    .line 1334
    iget-object v2, p0, Ljava/util/regex/Pattern;->pattern:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1339
    :cond_1
    iget v2, p0, Ljava/util/regex/Pattern;->flags:I

    and-int/lit8 v0, v2, 0x2f

    .line 1340
    .local v0, "icuFlags":I
    invoke-static {v1, v0}, Ljava/util/regex/Pattern;->compileImpl(Ljava/lang/String;I)J

    move-result-wide v2

    iput-wide v2, p0, Ljava/util/regex/Pattern;->address:J

    .line 1341
    sget-object v2, Ljava/util/regex/Pattern;->registry:Llibcore/util/NativeAllocationRegistry;

    iget-wide v4, p0, Ljava/util/regex/Pattern;->address:J

    invoke-virtual {v2, p0, v4, v5}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 1327
    return-void
.end method

.method private static native compileImpl(Ljava/lang/String;I)J
.end method

.method public static fastSplit(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;
    .locals 13
    .param p0, "re"    # Ljava/lang/String;
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "limit"    # I

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v9, -0x1

    const/4 v10, 0x0

    .line 1169
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 1170
    .local v5, "len":I
    if-nez v5, :cond_0

    .line 1171
    return-object v12

    .line 1173
    :cond_0
    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1174
    .local v1, "ch":C
    if-ne v5, v11, :cond_2

    const-string/jumbo v8, "\\?*+[](){}^$.|"

    invoke-virtual {v8, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-ne v8, v9, :cond_2

    .line 1191
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1192
    new-array v8, v11, [Ljava/lang/String;

    const-string/jumbo v9, ""

    aput-object v9, v8, v10

    return-object v8

    .line 1176
    :cond_2
    const/4 v8, 0x2

    if-ne v5, v8, :cond_3

    const/16 v8, 0x5c

    if-ne v1, v8, :cond_3

    .line 1179
    invoke-virtual {p0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1180
    const-string/jumbo v8, "\\?*+[](){}^$.|"

    invoke-virtual {v8, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-ne v8, v9, :cond_1

    .line 1181
    return-object v12

    .line 1184
    :cond_3
    return-object v12

    .line 1196
    :cond_4
    const/4 v7, 0x0

    .line 1197
    .local v7, "separatorCount":I
    const/4 v0, 0x0

    .line 1199
    .local v0, "begin":I
    :goto_0
    add-int/lit8 v8, v7, 0x1

    if-eq v8, p2, :cond_5

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .local v2, "end":I
    if-eq v2, v9, :cond_5

    .line 1200
    add-int/lit8 v7, v7, 0x1

    .line 1201
    add-int/lit8 v0, v2, 0x1

    goto :goto_0

    .line 1203
    .end local v2    # "end":I
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 1204
    .local v4, "lastPartEnd":I
    if-nez p2, :cond_7

    if-ne v0, v4, :cond_7

    .line 1206
    if-ne v7, v4, :cond_6

    .line 1208
    sget-object v8, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    return-object v8

    .line 1212
    :cond_6
    add-int/lit8 v0, v0, -0x1

    .line 1213
    add-int/lit8 v8, v0, -0x1

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v8, v1, :cond_6

    .line 1215
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v0

    sub-int/2addr v7, v8

    .line 1216
    move v4, v0

    .line 1220
    :cond_7
    add-int/lit8 v8, v7, 0x1

    new-array v6, v8, [Ljava/lang/String;

    .line 1221
    .local v6, "result":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 1222
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-eq v3, v7, :cond_8

    .line 1223
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 1224
    .restart local v2    # "end":I
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v3

    .line 1225
    add-int/lit8 v0, v2, 0x1

    .line 1222
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1228
    .end local v2    # "end":I
    :cond_8
    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 1229
    return-object v6
.end method

.method private static native getNativeFinalizer()J
.end method

.method public static matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z
    .locals 3
    .param p0, "regex"    # Ljava/lang/String;
    .param p1, "input"    # Ljava/lang/CharSequence;

    .prologue
    .line 1046
    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 1047
    .local v1, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1048
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    return v2
.end method

.method private static native nativeSize()I
.end method

.method public static quote(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/4 v4, -0x1

    .line 1279
    const-string/jumbo v3, "\\E"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 1280
    .local v2, "slashEIndex":I
    if-ne v2, v4, :cond_0

    .line 1281
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\\Q"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\\E"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1283
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1284
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "\\Q"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1285
    const/4 v2, 0x0

    .line 1286
    const/4 v0, 0x0

    .line 1287
    .local v0, "current":I
    :goto_0
    const-string/jumbo v3, "\\E"

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v4, :cond_1

    .line 1288
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1289
    add-int/lit8 v0, v2, 0x2

    .line 1290
    const-string/jumbo v3, "\\E\\\\E\\Q"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1292
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1293
    const-string/jumbo v3, "\\E"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1294
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1305
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1306
    invoke-direct {p0}, Ljava/util/regex/Pattern;->compile()V

    .line 1302
    return-void
.end method


# virtual methods
.method synthetic -java_util_regex_Pattern_lambda$1(Ljava/lang/String;)Z
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1355
    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    return v0
.end method

.method public asPredicate()Ljava/util/function/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Predicate",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1355
    new-instance v0, Ljava/util/regex/Pattern$-java_util_function_Predicate_asPredicate__LambdaImpl0;

    invoke-direct {v0, p0}, Ljava/util/regex/Pattern$-java_util_function_Predicate_asPredicate__LambdaImpl0;-><init>(Ljava/util/regex/Pattern;)V

    return-object v0
.end method

.method public flags()I
    .locals 1

    .prologue
    .line 1016
    iget v0, p0, Ljava/util/regex/Pattern;->flags:I

    return v0
.end method

.method public matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
    .locals 1
    .param p1, "input"    # Ljava/lang/CharSequence;

    .prologue
    .line 1006
    new-instance v0, Ljava/util/regex/Matcher;

    invoke-direct {v0, p0, p1}, Ljava/util/regex/Matcher;-><init>(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)V

    .line 1007
    .local v0, "m":Ljava/util/regex/Matcher;
    return-object v0
.end method

.method public pattern()Ljava/lang/String;
    .locals 1

    .prologue
    .line 981
    iget-object v0, p0, Ljava/util/regex/Pattern;->pattern:Ljava/lang/String;

    return-object v0
.end method

.method public split(Ljava/lang/CharSequence;)[Ljava/lang/String;
    .locals 1
    .param p1, "input"    # Ljava/lang/CharSequence;

    .prologue
    .line 1261
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public split(Ljava/lang/CharSequence;I)[Ljava/lang/String;
    .locals 11
    .param p1, "input"    # Ljava/lang/CharSequence;
    .param p2, "limit"    # I

    .prologue
    const/4 v10, 0x0

    .line 1112
    iget-object v8, p0, Ljava/util/regex/Pattern;->pattern:Ljava/lang/String;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, p2}, Ljava/util/regex/Pattern;->fastSplit(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 1113
    .local v0, "fast":[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1114
    return-object v0

    .line 1117
    :cond_0
    const/4 v1, 0x0

    .line 1118
    .local v1, "index":I
    if-lez p2, :cond_3

    const/4 v4, 0x1

    .line 1119
    .local v4, "matchLimited":Z
    :goto_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1120
    .local v5, "matchList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 1123
    .local v2, "m":Ljava/util/regex/Matcher;
    :cond_1
    :goto_1
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1124
    if-eqz v4, :cond_2

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v9, p2, -0x1

    if-ge v8, v9, :cond_4

    .line 1125
    :cond_2
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v8

    invoke-interface {p1, v1, v8}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1126
    .local v3, "match":Ljava/lang/String;
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1127
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    goto :goto_1

    .line 1118
    .end local v2    # "m":Ljava/util/regex/Matcher;
    .end local v3    # "match":Ljava/lang/String;
    .end local v4    # "matchLimited":Z
    .end local v5    # "matchList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    const/4 v4, 0x0

    .restart local v4    # "matchLimited":Z
    goto :goto_0

    .line 1128
    .restart local v2    # "m":Ljava/util/regex/Matcher;
    .restart local v5    # "matchList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v9, p2, -0x1

    if-ne v8, v9, :cond_1

    .line 1130
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    .line 1129
    invoke-interface {p1, v1, v8}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1131
    .restart local v3    # "match":Ljava/lang/String;
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1132
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    goto :goto_1

    .line 1137
    .end local v3    # "match":Ljava/lang/String;
    :cond_5
    if-nez v1, :cond_6

    .line 1138
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    return-object v8

    .line 1141
    :cond_6
    if-eqz v4, :cond_7

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v8, p2, :cond_8

    .line 1142
    :cond_7
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    invoke-interface {p1, v1, v8}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1145
    :cond_8
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 1146
    .local v7, "resultSize":I
    if-nez p2, :cond_9

    .line 1147
    :goto_2
    if-lez v7, :cond_9

    add-int/lit8 v8, v7, -0x1

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string/jumbo v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 1148
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 1149
    :cond_9
    new-array v6, v7, [Ljava/lang/String;

    .line 1150
    .local v6, "result":[Ljava/lang/String;
    invoke-virtual {v5, v10, v7}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    return-object v8
.end method

.method public splitAsStream(Ljava/lang/CharSequence;)Ljava/util/stream/Stream;
    .locals 2
    .param p1, "input"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/stream/Stream",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1453
    new-instance v0, Ljava/util/regex/Pattern$1MatcherIterator;

    invoke-direct {v0, p0, p1}, Ljava/util/regex/Pattern$1MatcherIterator;-><init>(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)V

    const/16 v1, 0x110

    .line 1452
    invoke-static {v0, v1}, Ljava/util/Spliterators;->spliteratorUnknownSize(Ljava/util/Iterator;I)Ljava/util/Spliterator;

    move-result-object v0

    .line 1453
    const/4 v1, 0x0

    .line 1452
    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 993
    iget-object v0, p0, Ljava/util/regex/Pattern;->pattern:Ljava/lang/String;

    return-object v0
.end method
