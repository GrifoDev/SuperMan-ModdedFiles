.class public Lcom/samsung/android/os/SemAffinityControl;
.super Ljava/lang/Object;
.source "SemAffinityControl.java"


# static fields
.field public static final DEBUG:Z

.field private static final HMP_CORE_FRONT:I = 0x0

.field private static final HMP_CORE_REAR:I = 0x1

.field private static final HMP_PROPERTY:Ljava/lang/String; = "4:4"

.field private static final TAG:Ljava/lang/String; = "SemAffinityControl"

.field private static nBig:[I

.field private static nLittle:[I

.field private static strHmpCore:[Ljava/lang/String;


# instance fields
.field private bigIndex:I

.field private littleIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/samsung/android/os/SemAffinityControl;->DEBUG:Z

    sput-object v2, Lcom/samsung/android/os/SemAffinityControl;->strHmpCore:[Ljava/lang/String;

    sput-object v2, Lcom/samsung/android/os/SemAffinityControl;->nLittle:[I

    sput-object v2, Lcom/samsung/android/os/SemAffinityControl;->nBig:[I

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 9

    const/4 v8, 0x2

    const/4 v4, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v4, p0, Lcom/samsung/android/os/SemAffinityControl;->littleIndex:I

    iput v4, p0, Lcom/samsung/android/os/SemAffinityControl;->bigIndex:I

    const-string/jumbo v4, "SemAffinityControl"

    const-string/jumbo v5, "[Java Side], SemAffinityControl Class Initialized"

    invoke-static {v4, v5}, Lcom/samsung/android/os/SemAffinityControl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "4:4"

    if-eqz v4, :cond_3

    const-string/jumbo v4, "4:4"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    const-string/jumbo v4, "4:4"

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/samsung/android/os/SemAffinityControl;->strHmpCore:[Ljava/lang/String;

    sget-object v4, Lcom/samsung/android/os/SemAffinityControl;->strHmpCore:[Ljava/lang/String;

    array-length v4, v4

    if-le v4, v8, :cond_1

    const-string/jumbo v4, "B"

    sget-object v5, Lcom/samsung/android/os/SemAffinityControl;->strHmpCore:[Ljava/lang/String;

    aget-object v5, v5, v8

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iput v7, p0, Lcom/samsung/android/os/SemAffinityControl;->littleIndex:I

    iput v6, p0, Lcom/samsung/android/os/SemAffinityControl;->bigIndex:I

    :goto_0
    sget-object v4, Lcom/samsung/android/os/SemAffinityControl;->strHmpCore:[Ljava/lang/String;

    iget v5, p0, Lcom/samsung/android/os/SemAffinityControl;->littleIndex:I

    aget-object v4, v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    new-array v4, v4, [I

    sput-object v4, Lcom/samsung/android/os/SemAffinityControl;->nLittle:[I

    sget-object v4, Lcom/samsung/android/os/SemAffinityControl;->strHmpCore:[Ljava/lang/String;

    iget v5, p0, Lcom/samsung/android/os/SemAffinityControl;->bigIndex:I

    aget-object v4, v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    new-array v4, v4, [I

    sput-object v4, Lcom/samsung/android/os/SemAffinityControl;->nBig:[I

    const/4 v3, 0x0

    sget-object v4, Lcom/samsung/android/os/SemAffinityControl;->nLittle:[I

    array-length v2, v4

    iget v4, p0, Lcom/samsung/android/os/SemAffinityControl;->littleIndex:I

    if-ne v4, v7, :cond_0

    sget-object v4, Lcom/samsung/android/os/SemAffinityControl;->nBig:[I

    array-length v3, v4

    const/4 v2, 0x0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    sget-object v4, Lcom/samsung/android/os/SemAffinityControl;->nLittle:[I

    array-length v4, v4

    if-ge v0, v4, :cond_2

    sget-object v4, Lcom/samsung/android/os/SemAffinityControl;->nLittle:[I

    add-int v5, v0, v3

    aput v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iput v6, p0, Lcom/samsung/android/os/SemAffinityControl;->littleIndex:I

    iput v7, p0, Lcom/samsung/android/os/SemAffinityControl;->bigIndex:I

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_2
    sget-object v4, Lcom/samsung/android/os/SemAffinityControl;->nBig:[I

    array-length v4, v4

    if-ge v1, v4, :cond_3

    sget-object v4, Lcom/samsung/android/os/SemAffinityControl;->nBig:[I

    add-int v5, v1, v2

    aput v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public static logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/os/SemAffinityControl;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private native native_set_affinity(I[I)I
.end method

.method public static readSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v3, 0x0

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "UTF-16"

    invoke-direct {v4, v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "readSysfs:: path = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", result = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/samsung/android/os/SemAffinityControl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    move-object v0, v1

    :cond_1
    :goto_1
    return-object v3

    :catch_0
    move-exception v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "e = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/samsung/android/os/SemAffinityControl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v2

    :goto_2
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "e = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/samsung/android/os/SemAffinityControl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_1

    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "e = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/samsung/android/os/SemAffinityControl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v4

    :goto_3
    if-eqz v0, :cond_2

    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_2
    :goto_4
    throw v4

    :catch_3
    move-exception v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "e = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/samsung/android/os/SemAffinityControl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :catchall_1
    move-exception v4

    move-object v0, v1

    goto :goto_3

    :catch_4
    move-exception v2

    move-object v0, v1

    goto :goto_2
.end method


# virtual methods
.method public clearAffinity(I)I
    .locals 7

    const/4 v6, 0x1

    const-string/jumbo v4, "SemAffinityControl"

    const-string/jumbo v5, "/sys/devices/system/cpu/kernel_max"

    invoke-static {v4, v5}, Lcom/samsung/android/os/SemAffinityControl;->readSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v4, v2, 0x1

    new-array v1, v4, [I

    const/4 v0, 0x0

    :goto_0
    if-gt v0, v2, :cond_0

    aput v0, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/os/SemAffinityControl;->native_set_affinity(I[I)I

    move-result v4

    if-ne v4, v6, :cond_1

    const-string/jumbo v4, "SemAffinityControl"

    const-string/jumbo v5, "clear_affinity_failed"

    invoke-static {v4, v5}, Lcom/samsung/android/os/SemAffinityControl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    return v6

    :cond_1
    const-string/jumbo v4, "SemAffinityControl"

    const-string/jumbo v5, "clear_affinity_success"

    invoke-static {v4, v5}, Lcom/samsung/android/os/SemAffinityControl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    return v4

    :cond_2
    const-string/jumbo v4, "SemAffinityControl"

    const-string/jumbo v5, "clear_affinity_failed"

    invoke-static {v4, v5}, Lcom/samsung/android/os/SemAffinityControl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    return v6
.end method

.method public varargs setAffinity(I[I)I
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/os/SemAffinityControl;->native_set_affinity(I[I)I

    move-result v0

    if-ne v0, v2, :cond_0

    const-string/jumbo v0, "SemAffinityControl"

    const-string/jumbo v1, "sched_set_affinity_failed"

    invoke-static {v0, v1}, Lcom/samsung/android/os/SemAffinityControl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    const-string/jumbo v0, "SemAffinityControl"

    const-string/jumbo v1, "sched_set_affinity_success"

    invoke-static {v0, v1}, Lcom/samsung/android/os/SemAffinityControl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public setAffinityForBig(I)I
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string/jumbo v0, "4:4"

    if-eqz v0, :cond_1

    const-string/jumbo v0, "4:4"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    sget-object v0, Lcom/samsung/android/os/SemAffinityControl;->nBig:[I

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/os/SemAffinityControl;->native_set_affinity(I[I)I

    move-result v0

    if-ne v0, v2, :cond_0

    const-string/jumbo v0, "SemAffinityControl"

    const-string/jumbo v1, "sched_set_affinity_failed"

    invoke-static {v0, v1}, Lcom/samsung/android/os/SemAffinityControl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    const-string/jumbo v0, "SemAffinityControl"

    const-string/jumbo v1, "sched_set_affinity_success"

    invoke-static {v0, v1}, Lcom/samsung/android/os/SemAffinityControl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_1
    return v2
.end method

.method public setAffinityForLittle(I)I
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string/jumbo v0, "4:4"

    if-eqz v0, :cond_1

    const-string/jumbo v0, "4:4"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    sget-object v0, Lcom/samsung/android/os/SemAffinityControl;->nLittle:[I

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/os/SemAffinityControl;->native_set_affinity(I[I)I

    move-result v0

    if-ne v0, v2, :cond_0

    const-string/jumbo v0, "SemAffinityControl"

    const-string/jumbo v1, "sched_set_affinity_failed"

    invoke-static {v0, v1}, Lcom/samsung/android/os/SemAffinityControl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    const-string/jumbo v0, "SemAffinityControl"

    const-string/jumbo v1, "sched_set_affinity_success"

    invoke-static {v0, v1}, Lcom/samsung/android/os/SemAffinityControl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_1
    return v2
.end method
