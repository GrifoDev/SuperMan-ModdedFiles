.class final Landroid/view/textclassifier/SmartSelection;
.super Ljava/lang/Object;
.source "SmartSelection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/textclassifier/SmartSelection$ClassificationResult;
    }
.end annotation


# static fields
.field static final HINT_FLAG_EMAIL:I = 0x2

.field static final HINT_FLAG_URL:I = 0x1


# instance fields
.field private final mCtx:J


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

    invoke-static {p1}, Landroid/view/textclassifier/SmartSelection;->nativeNew(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/textclassifier/SmartSelection;->mCtx:J

    return-void
.end method

.method public static getLanguage(I)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Landroid/view/textclassifier/SmartSelection;->nativeGetLanguage(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVersion(I)I
    .locals 1

    invoke-static {p0}, Landroid/view/textclassifier/SmartSelection;->nativeGetVersion(I)I

    move-result v0

    return v0
.end method

.method private static native nativeClassifyText(JLjava/lang/String;III)[Landroid/view/textclassifier/SmartSelection$ClassificationResult;
.end method

.method private static native nativeClose(J)V
.end method

.method private static native nativeGetLanguage(I)Ljava/lang/String;
.end method

.method private static native nativeGetVersion(I)I
.end method

.method private static native nativeNew(I)J
.end method

.method private static native nativeSuggest(JLjava/lang/String;II)[I
.end method


# virtual methods
.method public classifyText(Ljava/lang/String;III)[Landroid/view/textclassifier/SmartSelection$ClassificationResult;
    .locals 6

    iget-wide v0, p0, Landroid/view/textclassifier/SmartSelection;->mCtx:J

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/view/textclassifier/SmartSelection;->nativeClassifyText(JLjava/lang/String;III)[Landroid/view/textclassifier/SmartSelection$ClassificationResult;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 2

    iget-wide v0, p0, Landroid/view/textclassifier/SmartSelection;->mCtx:J

    invoke-static {v0, v1}, Landroid/view/textclassifier/SmartSelection;->nativeClose(J)V

    return-void
.end method

.method public suggest(Ljava/lang/String;II)[I
    .locals 2

    iget-wide v0, p0, Landroid/view/textclassifier/SmartSelection;->mCtx:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/view/textclassifier/SmartSelection;->nativeSuggest(JLjava/lang/String;II)[I

    move-result-object v0

    return-object v0
.end method
