.class public abstract Landroid/sec/clipboard/data/ClipboardData;
.super Ljava/lang/Object;
.source "ClipboardData.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected final LOG_LEN:I

.field protected mCallerUid:J

.field protected mClipdata:Landroid/content/ClipData;

.field protected mFormatID:I

.field protected mIsProtected:Z

.field private mTimestamp:J


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/16 v0, 0x14

    iput v0, p0, Landroid/sec/clipboard/data/ClipboardData;->LOG_LEN:I

    .line 48
    return-void
.end method


# virtual methods
.method public restoreBaseData(Lcom/samsung/android/content/clipboard/data/SemClipData;)V
    .locals 2
    .param p1, "data"    # Lcom/samsung/android/content/clipboard/data/SemClipData;

    .prologue
    .line 51
    iget-wide v0, p0, Landroid/sec/clipboard/data/ClipboardData;->mCallerUid:J

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->setCallerUid(J)V

    .line 52
    iget-boolean v0, p0, Landroid/sec/clipboard/data/ClipboardData;->mIsProtected:Z

    invoke-virtual {p1, v0}, Lcom/samsung/android/content/clipboard/data/SemClipData;->setProtected(Z)V

    .line 53
    iget-wide v0, p0, Landroid/sec/clipboard/data/ClipboardData;->mTimestamp:J

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->setTimestamp(J)V

    .line 50
    return-void
.end method

.method public abstract restoreToSemClipData()Lcom/samsung/android/content/clipboard/data/SemClipData;
.end method
