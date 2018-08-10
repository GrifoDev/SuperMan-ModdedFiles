.class public final Landroid/view/textclassifier/TextClassificationManager;
.super Ljava/lang/Object;
.source "TextClassificationManager.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TextClassificationManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mLangId:Landroid/view/textclassifier/LangId;

.field private mLangIdFd:Landroid/os/ParcelFileDescriptor;

.field private final mLangIdLock:Ljava/lang/Object;

.field private mTextClassifier:Landroid/view/textclassifier/TextClassifier;

.field private final mTextClassifierLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/textclassifier/TextClassificationManager;->mTextClassifierLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/textclassifier/TextClassificationManager;->mLangIdLock:Ljava/lang/Object;

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Landroid/view/textclassifier/TextClassificationManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getLanguageDetector()Landroid/view/textclassifier/LangId;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    iget-object v1, p0, Landroid/view/textclassifier/TextClassificationManager;->mLangIdLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationManager;->mLangId:Landroid/view/textclassifier/LangId;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    const-string/jumbo v2, "/etc/textclassifier/textclassifier.langid.model"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000000

    invoke-static {v0, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textclassifier/TextClassificationManager;->mLangIdFd:Landroid/os/ParcelFileDescriptor;

    new-instance v0, Landroid/view/textclassifier/LangId;

    iget-object v2, p0, Landroid/view/textclassifier/TextClassificationManager;->mLangIdFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v2

    invoke-direct {v0, v2}, Landroid/view/textclassifier/LangId;-><init>(I)V

    iput-object v0, p0, Landroid/view/textclassifier/TextClassificationManager;->mLangId:Landroid/view/textclassifier/LangId;

    :cond_0
    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationManager;->mLangId:Landroid/view/textclassifier/LangId;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public detectLanguages(Ljava/lang/CharSequence;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/view/textclassifier/TextLanguage;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz p1, :cond_0

    :goto_0
    invoke-static {v5}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    :try_start_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_2

    invoke-direct {p0}, Landroid/view/textclassifier/TextClassificationManager;->getLanguageDetector()Landroid/view/textclassifier/LangId;

    move-result-object v5

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/textclassifier/LangId;->findLanguages(Ljava/lang/String;)[Landroid/view/textclassifier/LangId$ClassificationResult;

    move-result-object v1

    new-instance v4, Landroid/view/textclassifier/TextLanguage$Builder;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {v4, v6, v5}, Landroid/view/textclassifier/TextLanguage$Builder;-><init>(II)V

    array-length v2, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_1

    new-instance v5, Ljava/util/Locale$Builder;

    invoke-direct {v5}, Ljava/util/Locale$Builder;-><init>()V

    aget-object v6, v1, v0

    iget-object v6, v6, Landroid/view/textclassifier/LangId$ClassificationResult;->mLanguage:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/Locale$Builder;->setLanguageTag(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale$Builder;->build()Ljava/util/Locale;

    move-result-object v5

    aget-object v6, v1, v0

    iget v6, v6, Landroid/view/textclassifier/LangId$ClassificationResult;->mScore:F

    invoke-virtual {v4, v5, v6}, Landroid/view/textclassifier/TextLanguage$Builder;->setLanguage(Ljava/util/Locale;F)Landroid/view/textclassifier/TextLanguage$Builder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    move v5, v6

    goto :goto_0

    :cond_1
    const/4 v5, 0x1

    new-array v5, v5, [Landroid/view/textclassifier/TextLanguage;

    invoke-virtual {v4}, Landroid/view/textclassifier/TextLanguage$Builder;->build()Landroid/view/textclassifier/TextLanguage;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    return-object v5

    :catch_0
    move-exception v3

    const-string/jumbo v5, "TextClassificationManager"

    const-string/jumbo v6, "Error detecting languages for text. Returning empty result."

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    return-object v5
.end method

.method public getTextClassifier()Landroid/view/textclassifier/TextClassifier;
    .locals 3

    iget-object v1, p0, Landroid/view/textclassifier/TextClassificationManager;->mTextClassifierLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationManager;->mTextClassifier:Landroid/view/textclassifier/TextClassifier;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/textclassifier/TextClassifierImpl;

    iget-object v2, p0, Landroid/view/textclassifier/TextClassificationManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/view/textclassifier/TextClassifierImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/view/textclassifier/TextClassificationManager;->mTextClassifier:Landroid/view/textclassifier/TextClassifier;

    :cond_0
    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationManager;->mTextClassifier:Landroid/view/textclassifier/TextClassifier;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setTextClassifier(Landroid/view/textclassifier/TextClassifier;)V
    .locals 2

    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationManager;->mTextClassifierLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Landroid/view/textclassifier/TextClassificationManager;->mTextClassifier:Landroid/view/textclassifier/TextClassifier;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
