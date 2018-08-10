.class final Landroid/view/textclassifier/LangId;
.super Ljava/lang/Object;
.source "LangId.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/textclassifier/LangId$ClassificationResult;
    }
.end annotation


# instance fields
.field private final mModelPtr:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "textclassifier"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/view/textclassifier/LangId;->nativeNew(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/textclassifier/LangId;->mModelPtr:J

    return-void
.end method

.method private static native nativeClose(J)V
.end method

.method private static native nativeFindLanguages(JLjava/lang/String;)[Landroid/view/textclassifier/LangId$ClassificationResult;
.end method

.method private static native nativeNew(I)J
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-wide v0, p0, Landroid/view/textclassifier/LangId;->mModelPtr:J

    invoke-static {v0, v1}, Landroid/view/textclassifier/LangId;->nativeClose(J)V

    return-void
.end method

.method public findLanguages(Ljava/lang/String;)[Landroid/view/textclassifier/LangId$ClassificationResult;
    .locals 2

    iget-wide v0, p0, Landroid/view/textclassifier/LangId;->mModelPtr:J

    invoke-static {v0, v1, p1}, Landroid/view/textclassifier/LangId;->nativeFindLanguages(JLjava/lang/String;)[Landroid/view/textclassifier/LangId$ClassificationResult;

    move-result-object v0

    return-object v0
.end method
