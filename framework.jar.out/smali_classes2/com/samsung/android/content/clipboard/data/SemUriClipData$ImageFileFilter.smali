.class Lcom/samsung/android/content/clipboard/data/SemUriClipData$ImageFileFilter;
.super Ljava/lang/Object;
.source "SemUriClipData.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/content/clipboard/data/SemUriClipData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImageFileFilter"
.end annotation


# instance fields
.field private final extensions:[Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "jpg"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "png"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "gif"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "jpeg"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemUriClipData$ImageFileFilter;->extensions:[Ljava/lang/String;

    .line 186
    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/content/clipboard/data/SemUriClipData$ImageFileFilter;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/samsung/android/content/clipboard/data/SemUriClipData$ImageFileFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 6
    .param p1, "file"    # Ljava/io/File;

    .prologue
    const/4 v2, 0x0

    .line 195
    if-nez p1, :cond_0

    .line 196
    return v2

    .line 198
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/content/clipboard/data/SemUriClipData$ImageFileFilter;->extensions:[Ljava/lang/String;

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_2

    aget-object v0, v3, v1

    .line 199
    .local v0, "extension":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 200
    const/4 v1, 0x1

    return v1

    .line 198
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 203
    .end local v0    # "extension":Ljava/lang/String;
    :cond_2
    return v2
.end method
