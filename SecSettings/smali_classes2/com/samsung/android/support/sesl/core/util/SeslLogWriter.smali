.class public Lcom/samsung/android/support/sesl/core/util/SeslLogWriter;
.super Ljava/io/Writer;
.source "SeslLogWriter.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private mBuilder:Ljava/lang/StringBuilder;

.field private final mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslLogWriter;->mBuilder:Ljava/lang/StringBuilder;

    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/util/SeslLogWriter;->mTag:Ljava/lang/String;

    return-void
.end method

.method private flushBuilder()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslLogWriter;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-gtz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslLogWriter;->mTag:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/util/SeslLogWriter;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslLogWriter;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/util/SeslLogWriter;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/util/SeslLogWriter;->flushBuilder()V

    return-void
.end method

.method public flush()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/util/SeslLogWriter;->flushBuilder()V

    return-void
.end method

.method public write([CII)V
    .locals 3

    const/4 v1, 0x0

    :goto_0
    if-lt v1, p3, :cond_0

    return-void

    :cond_0
    add-int v2, p2, v1

    aget-char v0, p1, v2

    const/16 v2, 0xa

    if-eq v0, v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/util/SeslLogWriter;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/util/SeslLogWriter;->flushBuilder()V

    goto :goto_1
.end method
