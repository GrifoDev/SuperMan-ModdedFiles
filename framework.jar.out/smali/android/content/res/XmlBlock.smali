.class final Landroid/content/res/XmlBlock;
.super Ljava/lang/Object;
.source "XmlBlock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/XmlBlock$Parser;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final mAssets:Landroid/content/res/AssetManager;

.field private final mNative:J

.field private mOpen:Z

.field private mOpenCount:I

.field final mStrings:Landroid/content/res/StringBlock;


# direct methods
.method static synthetic -get0(Landroid/content/res/XmlBlock;)I
    .locals 1

    iget v0, p0, Landroid/content/res/XmlBlock;->mOpenCount:I

    return v0
.end method

.method static synthetic -set0(Landroid/content/res/XmlBlock;I)I
    .locals 0

    iput p1, p0, Landroid/content/res/XmlBlock;->mOpenCount:I

    return p1
.end method

.method static synthetic -wrap0(J)I
    .locals 2

    invoke-static {p0, p1}, Landroid/content/res/XmlBlock;->nativeGetAttributeCount(J)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(JI)I
    .locals 2

    invoke-static {p0, p1, p2}, Landroid/content/res/XmlBlock;->nativeGetAttributeDataType(JI)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(J)I
    .locals 2

    invoke-static {p0, p1}, Landroid/content/res/XmlBlock;->nativeGetLineNumber(J)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap11(J)I
    .locals 2

    invoke-static {p0, p1}, Landroid/content/res/XmlBlock;->nativeGetNamespace(J)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap12(J)I
    .locals 2

    invoke-static {p0, p1}, Landroid/content/res/XmlBlock;->nativeGetStyleAttribute(J)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap13(J)I
    .locals 2

    invoke-static {p0, p1}, Landroid/content/res/XmlBlock;->nativeGetText(J)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap14(Landroid/content/res/XmlBlock;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/res/XmlBlock;->decOpenCountLocked()V

    return-void
.end method

.method static synthetic -wrap15(J)V
    .locals 0

    invoke-static {p0, p1}, Landroid/content/res/XmlBlock;->nativeDestroyParseState(J)V

    return-void
.end method

.method static synthetic -wrap2(JI)I
    .locals 2

    invoke-static {p0, p1, p2}, Landroid/content/res/XmlBlock;->nativeGetAttributeData(JI)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(JLjava/lang/String;Ljava/lang/String;)I
    .locals 2

    invoke-static {p0, p1, p2, p3}, Landroid/content/res/XmlBlock;->nativeGetAttributeIndex(JLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(JI)I
    .locals 2

    invoke-static {p0, p1, p2}, Landroid/content/res/XmlBlock;->nativeGetAttributeName(JI)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(JI)I
    .locals 2

    invoke-static {p0, p1, p2}, Landroid/content/res/XmlBlock;->nativeGetAttributeNamespace(JI)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap6(JI)I
    .locals 2

    invoke-static {p0, p1, p2}, Landroid/content/res/XmlBlock;->nativeGetAttributeResource(JI)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap7(JI)I
    .locals 2

    invoke-static {p0, p1, p2}, Landroid/content/res/XmlBlock;->nativeGetAttributeStringValue(JI)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap8(J)I
    .locals 2

    invoke-static {p0, p1}, Landroid/content/res/XmlBlock;->nativeGetClassAttribute(J)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap9(J)I
    .locals 2

    invoke-static {p0, p1}, Landroid/content/res/XmlBlock;->nativeGetIdAttribute(J)I

    move-result v0

    return v0
.end method

.method constructor <init>(Landroid/content/res/AssetManager;J)V
    .locals 4

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Landroid/content/res/XmlBlock;->mOpen:Z

    iput v0, p0, Landroid/content/res/XmlBlock;->mOpenCount:I

    iput-object p1, p0, Landroid/content/res/XmlBlock;->mAssets:Landroid/content/res/AssetManager;

    iput-wide p2, p0, Landroid/content/res/XmlBlock;->mNative:J

    new-instance v0, Landroid/content/res/StringBlock;

    invoke-static {p2, p3}, Landroid/content/res/XmlBlock;->nativeGetStringBlock(J)J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Landroid/content/res/StringBlock;-><init>(JZ)V

    iput-object v0, p0, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 5

    const/4 v0, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Landroid/content/res/XmlBlock;->mOpen:Z

    iput v0, p0, Landroid/content/res/XmlBlock;->mOpenCount:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/XmlBlock;->mAssets:Landroid/content/res/AssetManager;

    array-length v0, p1

    invoke-static {p1, v4, v0}, Landroid/content/res/XmlBlock;->nativeCreate([BII)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/res/XmlBlock;->mNative:J

    new-instance v0, Landroid/content/res/StringBlock;

    iget-wide v2, p0, Landroid/content/res/XmlBlock;->mNative:J

    invoke-static {v2, v3}, Landroid/content/res/XmlBlock;->nativeGetStringBlock(J)J

    move-result-wide v2

    invoke-direct {v0, v2, v3, v4}, Landroid/content/res/StringBlock;-><init>(JZ)V

    iput-object v0, p0, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 4

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Landroid/content/res/XmlBlock;->mOpen:Z

    iput v0, p0, Landroid/content/res/XmlBlock;->mOpenCount:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/XmlBlock;->mAssets:Landroid/content/res/AssetManager;

    invoke-static {p1, p2, p3}, Landroid/content/res/XmlBlock;->nativeCreate([BII)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/res/XmlBlock;->mNative:J

    new-instance v0, Landroid/content/res/StringBlock;

    iget-wide v2, p0, Landroid/content/res/XmlBlock;->mNative:J

    invoke-static {v2, v3}, Landroid/content/res/XmlBlock;->nativeGetStringBlock(J)J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Landroid/content/res/StringBlock;-><init>(JZ)V

    iput-object v0, p0, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    return-void
.end method

.method private decOpenCountLocked()V
    .locals 2

    iget v0, p0, Landroid/content/res/XmlBlock;->mOpenCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/content/res/XmlBlock;->mOpenCount:I

    iget v0, p0, Landroid/content/res/XmlBlock;->mOpenCount:I

    if-nez v0, :cond_0

    iget-wide v0, p0, Landroid/content/res/XmlBlock;->mNative:J

    invoke-static {v0, v1}, Landroid/content/res/XmlBlock;->nativeDestroy(J)V

    iget-object v0, p0, Landroid/content/res/XmlBlock;->mAssets:Landroid/content/res/AssetManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/res/XmlBlock;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {p0}, Landroid/content/res/XmlBlock;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->xmlBlockGone(I)V

    :cond_0
    return-void
.end method

.method private static final native nativeCreate([BII)J
.end method

.method private static final native nativeCreateParseState(J)J
.end method

.method private static final native nativeDestroy(J)V
.end method

.method private static final native nativeDestroyParseState(J)V
.end method

.method private static final native nativeGetAttributeCount(J)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static final native nativeGetAttributeData(JI)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static final native nativeGetAttributeDataType(JI)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static final native nativeGetAttributeIndex(JLjava/lang/String;Ljava/lang/String;)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static final native nativeGetAttributeName(JI)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static final native nativeGetAttributeNamespace(JI)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static final native nativeGetAttributeResource(JI)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static final native nativeGetAttributeStringValue(JI)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static final native nativeGetClassAttribute(J)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static final native nativeGetIdAttribute(J)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static final native nativeGetLineNumber(J)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method static final native nativeGetName(J)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static final native nativeGetNamespace(J)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static final native nativeGetStringBlock(J)J
.end method

.method private static final native nativeGetStyleAttribute(J)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static final native nativeGetText(J)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method static final native nativeNext(J)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method


# virtual methods
.method public close()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/content/res/XmlBlock;->mOpen:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/res/XmlBlock;->mOpen:Z

    invoke-direct {p0}, Landroid/content/res/XmlBlock;->decOpenCountLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/res/XmlBlock;->close()V

    return-void
.end method

.method public newParser()Landroid/content/res/XmlResourceParser;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Landroid/content/res/XmlBlock;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/res/XmlBlock$Parser;

    iget-wide v2, p0, Landroid/content/res/XmlBlock;->mNative:J

    invoke-static {v2, v3}, Landroid/content/res/XmlBlock;->nativeCreateParseState(J)J

    move-result-wide v2

    invoke-direct {v0, p0, v2, v3, p0}, Landroid/content/res/XmlBlock$Parser;-><init>(Landroid/content/res/XmlBlock;JLandroid/content/res/XmlBlock;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
