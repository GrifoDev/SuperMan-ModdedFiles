.class public final Ljava/util/regex/Matcher;
.super Ljava/lang/Object;
.source "Matcher.java"

# interfaces
.implements Ljava/util/regex/MatchResult;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/regex/Matcher$OffsetBasedMatchResult;
    }
.end annotation


# static fields
.field private static final registry:Llibcore/util/NativeAllocationRegistry;


# instance fields
.field private address:J

.field private anchoringBounds:Z

.field private appendPos:I

.field private input:Ljava/lang/String;

.field private matchFound:Z

.field private matchOffsets:[I

.field private nativeFinalizer:Ljava/lang/Runnable;

.field private pattern:Ljava/util/regex/Pattern;

.field private regionEnd:I

.field private regionStart:I

.field private transparentBounds:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Llibcore/util/NativeAllocationRegistry;

    const-class v1, Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {}, Ljava/util/regex/Matcher;->getNativeFinalizer()J

    move-result-wide v2

    invoke-static {}, Ljava/util/regex/Matcher;->nativeSize()I

    move-result v4

    int-to-long v4, v4

    invoke-direct/range {v0 .. v5}, Llibcore/util/NativeAllocationRegistry;-><init>(Ljava/lang/ClassLoader;JJ)V

    sput-object v0, Ljava/util/regex/Matcher;->registry:Llibcore/util/NativeAllocationRegistry;

    return-void
.end method

.method constructor <init>(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/regex/Matcher;->anchoringBounds:Z

    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    invoke-virtual {p0, p2}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    return-void
.end method

.method private appendEvaluated(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_5

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x5c

    if-ne v0, v4, :cond_0

    if-eqz v2, :cond_2

    :cond_0
    const/16 v4, 0x24

    if-ne v0, v4, :cond_1

    if-eqz v2, :cond_3

    :cond_1
    const/16 v4, 0x30

    if-lt v0, v4, :cond_4

    const/16 v4, 0x39

    if-gt v0, v4, :cond_4

    if-eqz v1, :cond_4

    add-int/lit8 v4, v0, -0x30

    invoke-virtual {p0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    goto :goto_1

    :cond_5
    if-eqz v2, :cond_6

    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v4

    :cond_6
    return-void
.end method

.method private ensureMatch()V
    .locals 2

    iget-boolean v0, p0, Ljava/util/regex/Matcher;->matchFound:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "No successful match so far"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private static native findImpl(JLjava/lang/String;I[I)Z
.end method

.method private static native findNextImpl(JLjava/lang/String;[I)Z
.end method

.method private static native getNativeFinalizer()J
.end method

.method private static native groupCountImpl(J)I
.end method

.method private static native hitEndImpl(J)Z
.end method

.method private static native lookingAtImpl(JLjava/lang/String;[I)Z
.end method

.method private static native matchesImpl(JLjava/lang/String;[I)Z
.end method

.method private static native nativeSize()I
.end method

.method private static native openImpl(J)J
.end method

.method public static quoteReplacement(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/16 v6, 0x24

    const/4 v5, -0x1

    const/16 v4, 0x5c

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ne v3, v5, :cond_0

    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ne v3, v5, :cond_0

    return-object p0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v4, :cond_1

    if-ne v0, v6, :cond_2

    :cond_1
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static native requireEndImpl(J)Z
.end method

.method private reset(Ljava/lang/CharSequence;II)Ljava/util/regex/Matcher;
    .locals 2

    const/4 v1, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "input == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-ltz p2, :cond_1

    if-gez p3, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gt p2, v0, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gt p3, v0, :cond_1

    if-gt p2, p3, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/util/regex/Matcher;->input:Ljava/lang/String;

    iput p2, p0, Ljava/util/regex/Matcher;->regionStart:I

    iput p3, p0, Ljava/util/regex/Matcher;->regionEnd:I

    invoke-direct {p0}, Ljava/util/regex/Matcher;->resetForInput()V

    iput-boolean v1, p0, Ljava/util/regex/Matcher;->matchFound:Z

    iput v1, p0, Ljava/util/regex/Matcher;->appendPos:I

    return-object p0
.end method

.method private resetForInput()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Ljava/util/regex/Matcher;->address:J

    iget-object v2, p0, Ljava/util/regex/Matcher;->input:Ljava/lang/String;

    iget v3, p0, Ljava/util/regex/Matcher;->regionStart:I

    iget v4, p0, Ljava/util/regex/Matcher;->regionEnd:I

    invoke-static {v0, v1, v2, v3, v4}, Ljava/util/regex/Matcher;->setInputImpl(JLjava/lang/String;II)V

    iget-wide v0, p0, Ljava/util/regex/Matcher;->address:J

    iget-boolean v2, p0, Ljava/util/regex/Matcher;->anchoringBounds:Z

    invoke-static {v0, v1, v2}, Ljava/util/regex/Matcher;->useAnchoringBoundsImpl(JZ)V

    iget-wide v0, p0, Ljava/util/regex/Matcher;->address:J

    iget-boolean v2, p0, Ljava/util/regex/Matcher;->transparentBounds:Z

    invoke-static {v0, v1, v2}, Ljava/util/regex/Matcher;->useTransparentBoundsImpl(JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static native setInputImpl(JLjava/lang/String;II)V
.end method

.method private static native useAnchoringBoundsImpl(JZ)V
.end method

.method private static native useTransparentBoundsImpl(JZ)V
.end method


# virtual methods
.method public appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;
    .locals 3

    iget-object v0, p0, Ljava/util/regex/Matcher;->input:Ljava/lang/String;

    iget v1, p0, Ljava/util/regex/Matcher;->appendPos:I

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0, p1, p2}, Ljava/util/regex/Matcher;->appendEvaluated(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    iput v0, p0, Ljava/util/regex/Matcher;->appendPos:I

    return-object p0
.end method

.method public appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 3

    iget v0, p0, Ljava/util/regex/Matcher;->appendPos:I

    iget v1, p0, Ljava/util/regex/Matcher;->regionEnd:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Ljava/util/regex/Matcher;->input:Ljava/lang/String;

    iget v1, p0, Ljava/util/regex/Matcher;->appendPos:I

    iget v2, p0, Ljava/util/regex/Matcher;->regionEnd:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    return-object p1
.end method

.method public end()I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->end(I)I

    move-result v0

    return v0
.end method

.method public end(I)I
    .locals 2

    invoke-direct {p0}, Ljava/util/regex/Matcher;->ensureMatch()V

    iget-object v0, p0, Ljava/util/regex/Matcher;->matchOffsets:[I

    mul-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public find()Z
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Ljava/util/regex/Matcher;->address:J

    iget-object v2, p0, Ljava/util/regex/Matcher;->input:Ljava/lang/String;

    iget-object v3, p0, Ljava/util/regex/Matcher;->matchOffsets:[I

    invoke-static {v0, v1, v2, v3}, Ljava/util/regex/Matcher;->findNextImpl(JLjava/lang/String;[I)Z

    move-result v0

    iput-boolean v0, p0, Ljava/util/regex/Matcher;->matchFound:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    iget-boolean v0, p0, Ljava/util/regex/Matcher;->matchFound:Z

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public find(I)Z
    .locals 4

    if-ltz p1, :cond_0

    iget-object v0, p0, Ljava/util/regex/Matcher;->input:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/util/regex/Matcher;->input:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Ljava/util/regex/Matcher;->address:J

    iget-object v2, p0, Ljava/util/regex/Matcher;->input:Ljava/lang/String;

    iget-object v3, p0, Ljava/util/regex/Matcher;->matchOffsets:[I

    invoke-static {v0, v1, v2, p1, v3}, Ljava/util/regex/Matcher;->findImpl(JLjava/lang/String;I[I)Z

    move-result v0

    iput-boolean v0, p0, Ljava/util/regex/Matcher;->matchFound:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    iget-boolean v0, p0, Ljava/util/regex/Matcher;->matchFound:Z

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public group()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public group(I)Ljava/lang/String;
    .locals 5

    const/4 v4, -0x1

    invoke-direct {p0}, Ljava/util/regex/Matcher;->ensureMatch()V

    iget-object v2, p0, Ljava/util/regex/Matcher;->matchOffsets:[I

    mul-int/lit8 v3, p1, 0x2

    aget v0, v2, v3

    iget-object v2, p0, Ljava/util/regex/Matcher;->matchOffsets:[I

    mul-int/lit8 v3, p1, 0x2

    add-int/lit8 v3, v3, 0x1

    aget v1, v2, v3

    if-eq v0, v4, :cond_0

    if-ne v1, v4, :cond_1

    :cond_0
    const/4 v2, 0x0

    return-object v2

    :cond_1
    iget-object v2, p0, Ljava/util/regex/Matcher;->input:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public group(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public groupCount()I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Ljava/util/regex/Matcher;->address:J

    invoke-static {v0, v1}, Ljava/util/regex/Matcher;->groupCountImpl(J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hasAnchoringBounds()Z
    .locals 1

    iget-boolean v0, p0, Ljava/util/regex/Matcher;->anchoringBounds:Z

    return v0
.end method

.method public hasTransparentBounds()Z
    .locals 1

    iget-boolean v0, p0, Ljava/util/regex/Matcher;->transparentBounds:Z

    return v0
.end method

.method public hitEnd()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Ljava/util/regex/Matcher;->address:J

    invoke-static {v0, v1}, Ljava/util/regex/Matcher;->hitEndImpl(J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public lookingAt()Z
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Ljava/util/regex/Matcher;->address:J

    iget-object v2, p0, Ljava/util/regex/Matcher;->input:Ljava/lang/String;

    iget-object v3, p0, Ljava/util/regex/Matcher;->matchOffsets:[I

    invoke-static {v0, v1, v2, v3}, Ljava/util/regex/Matcher;->lookingAtImpl(JLjava/lang/String;[I)Z

    move-result v0

    iput-boolean v0, p0, Ljava/util/regex/Matcher;->matchFound:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    iget-boolean v0, p0, Ljava/util/regex/Matcher;->matchFound:Z

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public matches()Z
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Ljava/util/regex/Matcher;->address:J

    iget-object v2, p0, Ljava/util/regex/Matcher;->input:Ljava/lang/String;

    iget-object v3, p0, Ljava/util/regex/Matcher;->matchOffsets:[I

    invoke-static {v0, v1, v2, v3}, Ljava/util/regex/Matcher;->matchesImpl(JLjava/lang/String;[I)Z

    move-result v0

    iput-boolean v0, p0, Ljava/util/regex/Matcher;->matchFound:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    iget-boolean v0, p0, Ljava/util/regex/Matcher;->matchFound:Z

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public pattern()Ljava/util/regex/Pattern;
    .locals 1

    iget-object v0, p0, Ljava/util/regex/Matcher;->pattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method public region(II)Ljava/util/regex/Matcher;
    .locals 1

    iget-object v0, p0, Ljava/util/regex/Matcher;->input:Ljava/lang/String;

    invoke-direct {p0, v0, p1, p2}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;II)Ljava/util/regex/Matcher;

    move-result-object v0

    return-object v0
.end method

.method public regionEnd()I
    .locals 1

    iget v0, p0, Ljava/util/regex/Matcher;->regionEnd:I

    return v0
.end method

.method public regionStart()I
    .locals 1

    iget v0, p0, Ljava/util/regex/Matcher;->regionStart:I

    return v0
.end method

.method public replaceAll(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->reset()Ljava/util/regex/Matcher;

    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v1, p0, Ljava/util/regex/Matcher;->input:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    :goto_0
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0, p1}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public replaceFirst(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->reset()Ljava/util/regex/Matcher;

    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v1, p0, Ljava/util/regex/Matcher;->input:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0, p1}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    :cond_0
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public requireEnd()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Ljava/util/regex/Matcher;->address:J

    invoke-static {v0, v1}, Ljava/util/regex/Matcher;->requireEndImpl(J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public reset()Ljava/util/regex/Matcher;
    .locals 3

    iget-object v0, p0, Ljava/util/regex/Matcher;->input:Ljava/lang/String;

    iget-object v1, p0, Ljava/util/regex/Matcher;->input:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;II)Ljava/util/regex/Matcher;

    move-result-object v0

    return-object v0
.end method

.method public reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
    .locals 2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;II)Ljava/util/regex/Matcher;

    move-result-object v0

    return-object v0
.end method

.method public start()I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->start(I)I

    move-result v0

    return v0
.end method

.method public start(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/regex/Matcher;->ensureMatch()V

    iget-object v0, p0, Ljava/util/regex/Matcher;->matchOffsets:[I

    mul-int/lit8 v1, p1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public toMatchResult()Ljava/util/regex/MatchResult;
    .locals 3

    invoke-direct {p0}, Ljava/util/regex/Matcher;->ensureMatch()V

    new-instance v0, Ljava/util/regex/Matcher$OffsetBasedMatchResult;

    iget-object v1, p0, Ljava/util/regex/Matcher;->input:Ljava/lang/String;

    iget-object v2, p0, Ljava/util/regex/Matcher;->matchOffsets:[I

    invoke-direct {v0, v1, v2}, Ljava/util/regex/Matcher$OffsetBasedMatchResult;-><init>(Ljava/lang/String;[I)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "java.util.regex.Matcher"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[pattern="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->pattern()Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " region="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->regionStart()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->regionEnd()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " lastmatch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Ljava/util/regex/Matcher;->matchFound:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public useAnchoringBounds(Z)Ljava/util/regex/Matcher;
    .locals 2

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Ljava/util/regex/Matcher;->anchoringBounds:Z

    iget-wide v0, p0, Ljava/util/regex/Matcher;->address:J

    invoke-static {v0, v1, p1}, Ljava/util/regex/Matcher;->useAnchoringBoundsImpl(JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;
    .locals 4

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "newPattern == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Ljava/util/regex/Matcher;->pattern:Ljava/util/regex/Pattern;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljava/util/regex/Matcher;->nativeFinalizer:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljava/util/regex/Matcher;->nativeFinalizer:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava/util/regex/Matcher;->address:J

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/regex/Matcher;->nativeFinalizer:Ljava/lang/Runnable;

    :cond_1
    iget-object v0, p0, Ljava/util/regex/Matcher;->pattern:Ljava/util/regex/Pattern;

    iget-wide v0, v0, Ljava/util/regex/Pattern;->address:J

    invoke-static {v0, v1}, Ljava/util/regex/Matcher;->openImpl(J)J

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/regex/Matcher;->address:J

    sget-object v0, Ljava/util/regex/Matcher;->registry:Llibcore/util/NativeAllocationRegistry;

    iget-wide v2, p0, Ljava/util/regex/Matcher;->address:J

    invoke-virtual {v0, p0, v2, v3}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Ljava/util/regex/Matcher;->nativeFinalizer:Ljava/lang/Runnable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    iget-object v0, p0, Ljava/util/regex/Matcher;->input:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Ljava/util/regex/Matcher;->resetForInput()V

    :cond_2
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Ljava/util/regex/Matcher;->matchOffsets:[I

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/regex/Matcher;->matchFound:Z

    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public useTransparentBounds(Z)Ljava/util/regex/Matcher;
    .locals 2

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Ljava/util/regex/Matcher;->transparentBounds:Z

    iget-wide v0, p0, Ljava/util/regex/Matcher;->address:J

    invoke-static {v0, v1, p1}, Ljava/util/regex/Matcher;->useTransparentBoundsImpl(JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
